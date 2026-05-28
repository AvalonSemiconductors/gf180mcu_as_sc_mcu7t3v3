`default_nettype none

`timescale 1ns/1ps

module tb(
	input clk_i,
	input rst_n,
	output reg halted = 0
);

wire [35:0] dut_in;
wire [35:0] dut_out_r;
wire [35:0] dut_oe;
wire [35:0] dut_out = dut_out_r & dut_oe;

wire le_lo = dut_out[16];
wire le_hi = dut_out[17];
wire bus_dir = dut_out[18];
wire OEb = dut_out[19];
wire WEb_lo = dut_out[20];
wire WEb_hi = dut_out[21];

wire SCLK = dut_out[22];
wire SDI = 1'b0;
assign dut_in[23] = SDI;
wire SDO = dut_out[24];
wire TXD = dut_out[25];
wire RXD = 1'b1;
assign dut_in[26] = RXD;
wire [5:0] PORT_out = dut_out[32:27];
wire [5:0] PORT_in = 6'h05;
assign dut_in[32:27] = PORT_in;

assign dut_in[35:34] = 2'b01; //custom_settings

//unused
assign dut_in[33] = 0;
assign dut_in[22:16] = 0;
assign dut_in[25:24] = 0;

tri0 [15:0] bus_out = dut_out[15:0];

//TRANSPARENT address latch
reg [31:0] addr_latch;
wire [31:0] full_addr = {le_hi ? bus_out : addr_latch[31:16], le_lo ? bus_out : addr_latch[15:0]};

always @(negedge le_lo) addr_latch[15:0] <= bus_out;
always @(negedge le_hi) addr_latch[31:16] <= bus_out;

reg [7:0] memory [32767:0];

wire [15:0] mem_out = {memory[(full_addr[14:0] << 1) | 1], memory[(full_addr[14:0] << 1)]};

assign dut_in[15:0] = bus_dir && !OEb ? mem_out : 16'hzzzz; //bus_in

always @(posedge WEb_lo) begin
	memory[full_addr[14:0] << 1] <= bus_out[7:0];
	if(full_addr == 'h00200006) begin
		$write("%c", bus_out[7:0]);
		$fflush();
	end
	if(full_addr == 'h0020000C) begin
		halted <= 1'b1;
	end
end

always @(posedge WEb_hi) begin
	memory[(full_addr[14:0] << 1) | 1] <= bus_out[15:8];
end

initial begin
	addr_latch = 0;
	for(integer i = 0; i < 32768; i = i + 1) begin
		memory[i] = (i % 4) == 0 ? 8'h13 : 8'h00;
	end
	$readmemh("pgm.txt", memory, 0, 32767);
end

tri1 VDD;
tri0 VSS;

user_project_example dut(
`ifdef USE_POWER_PINS
	.VSS(VSS),
	.VDD(VDD),
`endif
	.clk_i(clk_i),
	.rst_n(rst_n & !halted),
	.io_out(dut_out_r),
	.io_in(dut_in & (~dut_oe)),
	.io_oe(dut_oe)
);

endmodule

`default_nettype wire
