module qcpu_uart(
    input [15:0] divisor,
    input [7:0] din,

    output reg [7:0] dout,

    output reg TX,
    input RX,

    input start,
    output reg busy,
    output reg has_byte,
    input clr_hb,

    input clk,
    input rst
);

reg [9:0] data_buff;
reg [15:0] div_counter;
reg [3:0] counter;

reg receiving;
reg [7:0] receive_buff;
reg [3:0] receive_counter;
reg [15:0] receive_div_counter;

`ifdef SIM
wire txclk = div_counter == divisor;
wire rxclk = receive_div_counter == divisor;
`endif

always @(posedge clk) begin
    if(rst) begin
        TX <= 1;
        busy <= 0;
        counter <= 0;
        div_counter <= 0;
        receive_div_counter <= 0;
        receiving <= 0;
        dout <= 0;
        has_byte <= 0;
        receive_buff <= 0;
        receive_counter <= 0;
        receive_div_counter <= 0;
        data_buff <= 0;
    end else begin
        if(clr_hb) begin
            has_byte <= 0;
        end
        if(start) begin
            counter <= 4'b1010;
            div_counter <= 0;
            data_buff <= {1'b1, din, 1'b0};
        end
        if(counter != 0) begin
            busy <= 1;
            div_counter <= div_counter + 1;
            if(div_counter == divisor) begin
                div_counter <= 0;
                counter <= counter - 1;
                TX <= data_buff[0];
                data_buff <= {1'b0, data_buff[9:1]};
            end
        end else begin
            TX <= 1;
            busy <= 0;
        end

        if(!receiving && !RX) begin
            receiving <= 1;
            receive_counter <= 4'b1000;
            receive_buff <= 0;
            receive_div_counter <= 0;
        end
        if(receiving) begin
            receive_div_counter <= receive_div_counter + 1;
            if(receive_div_counter == divisor) begin
                receive_div_counter <= 0;
                receive_counter <= receive_counter - 1;
                if(receive_counter == 0) begin
                    receiving <= 0;
                    dout <= receive_buff;
                    has_byte <= 1;
                end else begin
                    receive_buff <= {RX, receive_buff[7:1]};
                end
            end
        end
    end
end

endmodule
