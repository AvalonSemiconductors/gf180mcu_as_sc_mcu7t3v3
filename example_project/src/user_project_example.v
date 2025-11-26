`default_nettype none

module user_project_example(
`ifdef USE_POWER_PINS
	inout wire VSS,
	inout wire VDD,
`endif
	input clk_i,
	input rst_n,
	
	output [35:0] io_out,
	output [35:0] io_oe,
	input [35:0] io_in
);

wire [1:0] custom_settings = io_in[35:34];
assign io_out[35:33] = 0;
assign io_oe[35:33] = 0;

wire bus_dir;
assign io_oe[15:0] = {16{!bus_dir}};
assign io_oe[16] = 1'b1;
assign io_oe[17] = 1'b1;
assign io_oe[18] = 1'b1;
assign io_out[18] = bus_dir;
assign io_oe[19] = 1'b1;
assign io_oe[20] = 1'b1;
assign io_oe[21] = 1'b1;
wire WEb_lo;
wire WEb_hi;
assign io_out[20] = custom_settings[1:0] == 2'b01 ? (WEb_lo | clk_i) : (custom_settings[1:0] == 2'b10 ? (WEb_lo | (~clk_i)) : WEb_lo);
assign io_out[21] = custom_settings[1:0] == 2'b01 ? (WEb_hi | clk_i) : (custom_settings[1:0] == 2'b10 ? (WEb_hi | (~clk_i)) : WEb_hi);
assign io_oe[22] = 1'b1;
assign io_oe[23] = 1'b0;
assign io_oe[24] = 1'b1;
assign io_oe[25] = 1'b1;
assign io_oe[26] = 1'b0;
wire [5:0] PORT_dir;
assign io_oe[32:27] = PORT_dir;
assign io_out[26] = 1'b0;
assign io_out[23] = 1'b0;
tholin_riscv tholin_riscv(
    .clk(clk_i),
    .rst_n(rst_n),
    .bus_out(io_out[15:0]),
    .bus_in(io_in[15:0]),
    .le_lo(io_out[16]),
    .le_hi(io_out[17]),
    .bus_dir(bus_dir),
    .OEb(io_out[19]),
    .WEb_lo(WEb_lo),
    .WEb_hi(WEb_hi),

    .SCLK(io_out[22]),
    .SDI(io_in[23]),
    .SDO(io_out[24]),
    .TXD(io_out[25]),
    .RXD(io_in[26]),
    .PORT_dir(PORT_dir),
    .PORT_out(io_out[32:27]),
    .PORT_in(io_in[32:27])
);

endmodule
