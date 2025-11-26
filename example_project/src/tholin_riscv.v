`default_nettype none

module tholin_riscv(
    //RAM
    output [15:0] bus_out,
    input [15:0] bus_in,
    output le_lo,
    output le_hi,
    output OEb,
    output WEb_lo,
    output WEb_hi,
    output bus_dir,

    output SCLK,
    output SDO,
    input SDI,
    output TXD,
    input RXD,

    output reg [5:0] PORT_dir,
    output reg [5:0] PORT_out,
    input [5:0] PORT_in,

    input clk,
    input rst_n
);

reg [2:0] irqs;
reg io_int_enable;
reg uart_int_enable;
reg timer_int_enable;
reg last_io_state;
wire [1:0] highest_irq = irqs[2] ? 3 : (irqs[1] ? 2 : (irqs[0] ? 1 : 0));
reg [1:0] current_irq;
reg [31:0] PC;
reg [31:0] PCE;

//TIMERS
reg [31:0] tmr0;
reg [31:0] tmr1;
reg [31:0] tmr0_pre;
reg [31:0] tmr1_pre;
reg [31:0] tmr0_top;
reg [31:0] tmr1_top;
reg [31:0] tmr0_pre_ctr;
reg [31:0] tmr1_pre_ctr;

reg [31:0] regs [31:0];
reg [29:0] intr_vec;
reg [31:0] requested_addr;
reg is_write;
reg [31:0] mem_io;
reg [1:0] io_size;
reg [2:0] ret_cycle;
reg int_enabled;

reg [3:0] cycle;
localparam FETCH = 0;
localparam MEM1 = 1;
localparam MEM2 = 2;
localparam MEM3 = 3;
localparam MEM4 = 4;
localparam MEM5 = 5;
localparam EXEC1 = 6;
localparam LOAD = 7;
localparam MUL = 8;
localparam DIV1 = 9;
localparam DIV2 = 10;

wire le_lo_pre = cycle == MEM1 || cycle == MEM4;
assign le_lo = le_lo_pre && clk;
wire le_hi_pre = cycle == MEM2;
assign le_hi = le_hi_pre && clk;
assign bus_dir = !(le_lo_pre || le_hi_pre || (!WEb));
assign OEb = !((cycle == MEM3 || cycle == MEM5) && !is_write);
wire WEb = !((cycle == MEM3 || cycle == MEM5) && is_write);
assign WEb_lo = !(io_size != 0 || requested_addr[0] == 0) || WEb;
assign WEb_hi = !(io_size != 0 || requested_addr[0] == 1) || WEb;

reg [15:0] bus_out_c;
always @(*) begin
    case(cycle)
        default: bus_out_c = 0;
        MEM1: bus_out_c = requested_addr[16:1];
        MEM2: bus_out_c = {1'b0, requested_addr[31:17]};
        MEM3: begin
            if(io_size == 0) begin
                if(requested_addr[0]) bus_out_c = {mem_io[7:0], 8'h00};
                else bus_out_c = {8'h00, mem_io[7:0]};
            end else begin
                bus_out_c = mem_io[15:0];
            end
        end
        MEM4: bus_out_c = requested_addr[16:1] | 1;
        MEM5: bus_out_c = mem_io[31:16];
    endcase
end
assign bus_out = bus_out_c;

wire [31:0] instr = mem_io;
wire isALUreg = instr[6:0] == 7'b0110011;
wire isALUimm = instr[6:0] == 7'b0010011;
wire isBranch = instr[6:0] == 7'b1100011;
wire isJALR   = instr[6:0] == 7'b1100111;
wire isJAL    = instr[6:0] == 7'b1101111;
wire isAUIPC  = instr[6:0] == 7'b0010111;
wire isLUI    = instr[6:0] == 7'b0110111;
wire isLoad   = instr[6:0] == 7'b0000011;
wire isStore  = instr[6:0] == 7'b0100011;
wire isSYSTEM = instr[6:0] == 7'b1110011;

wire [4:0] rs1Id  = instr[19:15];
wire [4:0] rs2Id  = instr[24:20];
wire [4:0] rdId   = instr[11:7];
wire [2:0] funct3 = instr[14:12];
wire [6:0] funct7 = instr[31:25];
wire [11:0] func12 = instr[31:20];
wire [31:0] Uimm = {instr[31], instr[30:12], 12'h000};
wire [31:0] Iimm = {{21{instr[31]}}, instr[30:20]};
wire [31:0] Simm = {{21{instr[31]}}, instr[30:25], instr[11:7]};
wire [31:0] Bimm = {{20{instr[31]}}, instr[7], instr[30:25], instr[11:8], 1'b0};
wire [31:0] Jimm = {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0};
reg load_funct;
reg [4:0] load_dest;
wire LOAD_sign = load_funct & (io_size == 0 ? mem_io[7] : mem_io[15]);

wire [31:0] rs1 = regs[rs1Id];
wire [31:0] rs2 = regs[rs2Id];
reg should_branch;
always @(*) begin
    case(funct3)
        0: should_branch = EQ;
        1: should_branch = !EQ;
        4: should_branch = LTS;
        5: should_branch = !LTS;
        6: should_branch = LT;
        7: should_branch = !LT;
        default: should_branch = 1'b0;
    endcase
end

wire [31:0] plus = aluIn2 + aluIn1;
wire [31:0] aluIn1 = isJAL ? PC : rs1;
wire [31:0] aluIn2 = isStore ? Simm : (isALUreg || isBranch ? rs2 : Iimm);
wire [31:0] XOR = aluIn1 ^ aluIn2;
wire EQ = XOR == 0;
wire [32:0] minus = {1'b1, ~aluIn2} + {1'b0, aluIn1} + 33'b1;
wire LT = minus[32];
wire LTS = (aluIn1[31] ^ aluIn2[31]) ? aluIn1[31] : minus[32];
wire [4:0] shift_amount = isALUreg ? rs2[4:0] : instr[24:20];
wire m1s = (funct3 == 3'b000 || funct3 == 3'b001 || funct3 == 3'b010) && rs1[31];
wire m2s = (funct3 == 3'b000 || funct3 == 3'b001) && rs2[31];
wire [31:0] rs1_inv = (~rs1) + 1;
wire [31:0] rs2_inv = (~rs2) + 1;
wire [31:0] muli1 = m1s ? rs1_inv : rs1;
wire [31:0] muli2 = m2s ? rs2_inv : rs2;
wire [63:0] mul = muli1 * muli2;
reg [63:0] div_shifter;
reg [31:0] div_res;
reg [4:0] div_counter;

wire [63:0] mul_res = m1s ^ m2s ? ((~mul) + 1) : mul;
wire signed_div = funct3 == 3'b100 || funct3 == 3'b110;
wire res_sign = signed_div & (rs1[31] ^ rs2[31]);
wire [31:0] divi1 = signed_div && rs1[31] ? rs1_inv : rs1;
wire [31:0] divi2 = signed_div && rs2[31] ? rs2_inv : rs2;
//wire [31:0] div_res = divi1 / divi2;
//wire [31:0] mod_res = divi1 % divi2;
wire [31:0] mod_res = div_shifter[63:32];
wire is_muldiv = funct7 == 1 && isALUreg;
wire is_mul = funct3 < 4;
wire is_div = !is_mul;

wire [31:0] shifter_in = (funct3 == 3'b001) ? 
{aluIn1[0], aluIn1[1], aluIn1[2], aluIn1[3], aluIn1[4], aluIn1[5],
aluIn1[6], aluIn1[7], aluIn1[8], aluIn1[9], aluIn1[10], aluIn1[11], aluIn1[12],
aluIn1[13], aluIn1[14], aluIn1[15], aluIn1[16], aluIn1[17], aluIn1[18], aluIn1[19],
aluIn1[20], aluIn1[21], aluIn1[22], aluIn1[23], aluIn1[24], aluIn1[25],
aluIn1[26], aluIn1[27], aluIn1[28], aluIn1[29], aluIn1[30], aluIn1[31]}
 : aluIn1;
wire [31:0] shifter = $signed({funct7[5] & aluIn1[31], shifter_in}) >>> shift_amount;
reg [31:0] ALUout;
always @(*) begin
    case({is_muldiv, funct3})
        0: ALUout = (funct7[5] && instr[5]) ? minus : plus;
        1: ALUout = {shifter[0], shifter[1], shifter[2], shifter[3], shifter[4], shifter[5], shifter[6],
        shifter[7], shifter[8], shifter[9], shifter[10], shifter[11], shifter[12], shifter[13], shifter[14], shifter[15],
        shifter[16], shifter[17], shifter[18], shifter[19], shifter[20], shifter[21], shifter[22],
        shifter[23], shifter[24], shifter[25], shifter[26], shifter[27], shifter[28], shifter[29],
        shifter[30], shifter[31]};
        2: ALUout = {31'h0, LTS};
        3: ALUout = {31'h0, LT};
        4: ALUout = XOR;
        5: ALUout = shifter;
        6: ALUout = aluIn1 | aluIn2;
        7: ALUout = aluIn1 & aluIn2;
        8: ALUout = mul_res[31:0];
        9: ALUout = mul_res[63:32];
        10: ALUout = mul_res[63:32];
        11: ALUout = mul_res[63:32];
        12: ALUout = res_sign ? (~div_res) + 1 : div_res;
        13: ALUout = div_res;
        14: ALUout = rs1[31] ? (~mod_res) + 1 : mod_res;
        15: ALUout = mod_res;
    endcase
end

`ifdef SIM
reg [31:0] instr_l;
`endif

`ifdef SIM
wire [31:0] ra = regs[1];
wire [31:0] sp = regs[2];
wire [31:0] gp = regs[3];
wire [31:0] tp = regs[4];
wire [31:0] t0 = regs[5];
wire [31:0] t1 = regs[6];
wire [31:0] t2 = regs[7];
wire [31:0] s0 = regs[8];
wire [31:0] s1 = regs[9];
wire [31:0] a0 = regs[10];
wire [31:0] a1 = regs[11];
`endif

reg mul_delay;
wire [31:0] PC_next = PC + 4;
wire [31:0] PC_jmp = PC + (isJAL ? Jimm : Bimm);
always @(posedge clk) begin
    regs[0] <= 0;
    if(!rst_n) begin
        PC <= 0;
        cycle <= FETCH;
        PORT_dir <= 0;
        PORT_out <= 0;
        spi_div <= 8'h80;
        uart_div <= 16'h0101;
        int_enabled <= 0;
        irqs <= 0;
        io_int_enable <= 0;
        last_io_state <= 0;
        current_irq <= 0;
        uart_int_enable <= 0;
        timer_int_enable <= 0;
        tmr0 <= 0;
        tmr1 <= 0;
        tmr0_pre <= 32'h00008000;
        tmr1_pre <= 32'h00001000;
        tmr0_top <= 32'hFFFFFFFF;
        tmr1_top <= 32'hFFFFFFFF;
        tmr0_pre_ctr <= 0;
        tmr1_pre_ctr <= 0;
        regs[1] <= 0;
        div_shifter <= 0;
        div_res <= 0;
        div_counter <= 0;
        intr_vec <= 0;
        requested_addr <= 0;
        is_write <= 0;
        mem_io <= 0;
        io_size <= 0;
        ret_cycle <= 0;
    end else begin
        last_io_state <= PORT_in[5];
        if(!last_io_state && PORT_in[5] && io_int_enable) irqs[0] <= 1;
        else irqs[0] <= irqs[0] & io_int_enable;
        irqs[2] <= uart_hb & uart_int_enable;
        
        tmr0_pre_ctr <= tmr0_pre_ctr + 1;
        tmr1_pre_ctr <= tmr1_pre_ctr + 1;
        if((tmr0_pre_ctr+1) >= tmr0_pre) begin
            tmr0_pre_ctr <= 0;
            tmr0 <= tmr0 + 1;
            if(tmr0 >= tmr0_top) begin
                tmr0 <= 0;
            end
        end
        irqs[1] <= (irqs[1] || tmr1 >= tmr1_top) && timer_int_enable;
        if((tmr1_pre_ctr+1) >= tmr1_pre) begin
            tmr1_pre_ctr <= 0;
            tmr1 <= tmr1 + 1;
            if(tmr1 >= tmr1_top) begin
                tmr1 <= 0;
            end
        end
        
        if(cycle == MEM1) begin
            if(requested_addr >= 32'hFFFFFF00) begin
                case(requested_addr[7:2])
                    0: begin
                        if(is_write) spi_div <= mem_io[7:0];
                        else mem_io <= {24'h0, spi_div};
                    end
                    1: begin
                        if(!is_write) mem_io <= {24'h0, spi_dout};
                    end
                    2: begin
                        if(is_write) uart_div <= mem_io[15:0];
                        else mem_io <= {16'h0, uart_div};
                    end
                    3: begin
                        if(!is_write) mem_io <= {24'h0, uart_dout};
                    end
                    4: begin
                        if(!is_write) mem_io <= {29'h0, uart_hb, uart_busy, spi_busy};
                    end
                    5: begin
                        if(is_write) PORT_dir <= mem_io[5:0];
                        else mem_io <= {26'h0, PORT_dir};
                    end
                    6: begin
                        if(is_write) PORT_out <= mem_io[5:0];
                        else mem_io <= {26'h0, PORT_out};
                    end
                    7: begin
                        if(is_write) irqs[0] <= 0;
                        else mem_io <= {26'h0, PORT_in};
                    end
                    8: begin
                        if(is_write) intr_vec <= mem_io[31:2];
                        else mem_io <= {intr_vec, 2'b00};
                    end
                    9: begin
                        if(!is_write) mem_io <= {30'h0, current_irq};
                    end
                    10: begin
                        if(is_write) begin
                            io_int_enable <= mem_io[0];
                            timer_int_enable <= mem_io[1];
                            uart_int_enable <= mem_io[2];
                        end else mem_io <= {29'h0, uart_int_enable, timer_int_enable, io_int_enable};
                    end
                    11: begin
                        if(is_write) tmr0_pre <= mem_io;
                        else mem_io <= tmr0_pre;
                    end
                    12: begin
                        if(is_write) tmr1_pre <= mem_io;
                        else mem_io <= tmr1_pre;
                    end
                    13: begin
                        if(is_write) tmr0_top <= mem_io;
                        else mem_io <= tmr0_top;
                    end
                    14: begin
                        if(is_write) tmr1_top <= mem_io;
                        else mem_io <= tmr1_top;
                    end
                    15: begin
                        if(is_write) tmr0 <= mem_io;
                        else mem_io <= tmr0;
                    end
                    16: begin
                        if(is_write) tmr1 <= mem_io;
                        else mem_io <= tmr1;
                    end
                    17: begin
                        if(is_write) irqs[1] <= 0;
                    end
                    18: begin
                        if(is_write) PCE <= mem_io;
                        else mem_io <= PCE;
                    end
                    19: begin
                        if(!is_write) mem_io <= {8'h52, 8'h49, 8'h48, 8'h43};
                    end
                    20: begin
                        if(!is_write) mem_io <= {8'h00, 8'h00, 8'h21, 8'h50};
                    end
                endcase
                cycle <= {1'b0, ret_cycle};
            end else cycle <= MEM2;
        end else if(cycle == MEM2) begin
            cycle <= MEM3;
        end else if(cycle == MEM3) begin
            if(io_size == 0) begin
                mem_io[7:0] <= requested_addr[0] ? bus_in[15:8] : bus_in[7:0];
                cycle <= {1'b0, ret_cycle};
            end else begin
                mem_io[15:0] <= bus_in;
                cycle <= io_size == 1 ? {1'b0, ret_cycle} : MEM4;
            end
        end else if(cycle == MEM4) begin
            cycle <= MEM5;
        end else if(cycle == MEM5) begin
            mem_io[31:16] <= bus_in;
            cycle <= {1'b0, ret_cycle};
        end
        else if(cycle == FETCH && irqs != 0 && int_enabled) begin
            PCE <= PC;
            PC <= intr_vec;
            int_enabled <= 0;
            current_irq <= highest_irq;
        end else if(cycle == FETCH) begin
            requested_addr <= PC;
            ret_cycle <= EXEC1;
            cycle <= MEM1;
            is_write <= 0;
            io_size <= 2;
        end else if(cycle == EXEC1) begin
            `ifdef SIM
            instr_l <= mem_io;
            `endif
            PC <= PC_next;
            if(isSYSTEM) begin
                if(func12 == 12'h26D) begin
                    int_enabled <= !int_enabled;
                    PC <= PCE;
                end else if(func12 == 12'h007) begin
                    int_enabled <= 1;
                end else if(func12 == 12'h008) begin
                    int_enabled <= 0;
                end
                cycle <= FETCH;
            end else if(is_muldiv) begin
                mul_delay <= 1'b0;
                cycle <= is_mul ? MUL : DIV1;
                if(is_div) begin
                    div_counter <= 0;
                    div_shifter <= {32'h0, divi1};
                    div_res <= 0;
                end
            end else if(isJAL || isJALR) begin
                regs[rdId] <= PC_next;
                PC <= isJALR ? plus : PC_jmp;
                cycle <= FETCH;
            end else if(isBranch) begin
                if(should_branch) PC <= PC_jmp;
                cycle <= FETCH;
            end else if(isLoad) begin
                load_funct <= !funct3[2];
                load_dest <= rdId;
                io_size <= funct3[1:0];
                requested_addr <= plus;
                is_write <= 0;
                ret_cycle <= LOAD;
                cycle <= MEM1;
            end else if(isStore) begin
                io_size <= funct3[1:0];
                requested_addr <= plus;
                mem_io <= rs2;
                is_write <= 1;
                ret_cycle <= FETCH;
                cycle <= MEM1;
            end else if(isLUI) begin
                regs[rdId] <= Uimm;
                cycle <= FETCH;
            end else if(isAUIPC) begin
                regs[rdId] <= PC + Uimm;
                cycle <= FETCH;
            end else if(isALUreg || isALUimm) begin
                regs[rdId] <= ALUout;
                cycle <= FETCH;
            end
        end else if(cycle == LOAD) begin
            if(io_size == 0) begin
                regs[load_dest] <= {{24{LOAD_sign}}, mem_io[7:0]};
            end else if(io_size == 1) begin
                regs[load_dest] <= {{16{LOAD_sign}}, mem_io[15:0]};
            end else begin
                regs[load_dest] <= mem_io;
            end
            cycle <= FETCH;
        end else if(cycle == MUL) begin
            mul_delay <= !mul_delay;
            if(mul_delay) begin
                regs[rdId] <= ALUout;
                cycle <= FETCH;
            end
        end else if(cycle == DIV1) begin
            div_res <= {div_res[30:0], div_shifter[62:31] >= divi2};
            if(div_shifter[62:31] >= divi2) begin
                div_shifter <= {div_shifter[62:31] - divi2, div_shifter[30:0], 1'b0};
            end else div_shifter <= {div_shifter[62:0], 1'b0};
            div_counter <= div_counter + 1;
            if(div_counter == 31) begin
                cycle <= DIV2;
            end
        end else if(cycle == DIV2) begin
            regs[rdId] <= ALUout;
            cycle <= FETCH;
        end
    end
end

reg [7:0] spi_div;
wire [7:0] spi_dout;
wire spi_busy;
qcpu_spi spi(
    .divisor(spi_div),
    .din(mem_io[7:0]),
    .dout(spi_dout),
    .SCLK(SCLK),
    .DO(SDO),
    .DI(SDI),
    .start(cycle == MEM1 && requested_addr == 32'hFFFFFF04 && is_write),
    .busy(spi_busy),
    .clk(clk),
    .rst(!rst_n)
);

reg [15:0] uart_div;
wire [7:0] uart_dout;
wire uart_busy;
wire uart_hb;
qcpu_uart uart(
    .divisor(uart_div),
    .din(mem_io[7:0]),
    .dout(uart_dout),
    .TX(TXD),
    .RX(RXD),
    .start(cycle == MEM1 && requested_addr == 32'hFFFFFF0C && is_write),
    .busy(uart_busy),
    .has_byte(uart_hb),
    .clr_hb(cycle == MEM1 && requested_addr == 32'hFFFFFF10 && is_write),
    .clk(clk),
    .rst(!rst_n)
);

endmodule
