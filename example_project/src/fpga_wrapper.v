`default_nettype none

/*
 * Wrapper to let you try things on an FPGA - not part of the chip flow
 */

module fpga_wrapper(
	input clk_i,
	input rst_n,
	inout [35:0] gpio
);

wire [35:0] io_out;
wire [35:0] io_in = gpio;
wire [35:0] io_oeb;

assign gpio[0] = io_oeb[0] ? 1'bz : io_out[0];
assign gpio[1] = io_oeb[1] ? 1'bz : io_out[1];
assign gpio[2] = io_oeb[2] ? 1'bz : io_out[2];
assign gpio[3] = io_oeb[3] ? 1'bz : io_out[3];
assign gpio[4] = io_oeb[4] ? 1'bz : io_out[4];
assign gpio[5] = io_oeb[5] ? 1'bz : io_out[5];
assign gpio[6] = io_oeb[6] ? 1'bz : io_out[6];
assign gpio[7] = io_oeb[7] ? 1'bz : io_out[7];
assign gpio[8] = io_oeb[8] ? 1'bz : io_out[8];
assign gpio[9] = io_oeb[9] ? 1'bz : io_out[9];
assign gpio[10] = io_oeb[10] ? 1'bz : io_out[10];
assign gpio[11] = io_oeb[11] ? 1'bz : io_out[11];
assign gpio[12] = io_oeb[12] ? 1'bz : io_out[12];
assign gpio[13] = io_oeb[13] ? 1'bz : io_out[13];
assign gpio[14] = io_oeb[14] ? 1'bz : io_out[14];
assign gpio[15] = io_oeb[15] ? 1'bz : io_out[15];
assign gpio[16] = io_oeb[16] ? 1'bz : io_out[16];
assign gpio[17] = io_oeb[17] ? 1'bz : io_out[17];
assign gpio[18] = io_oeb[18] ? 1'bz : io_out[18];
assign gpio[19] = io_oeb[19] ? 1'bz : io_out[19];
assign gpio[20] = io_oeb[20] ? 1'bz : io_out[20];
assign gpio[21] = io_oeb[21] ? 1'bz : io_out[21];
assign gpio[22] = io_oeb[22] ? 1'bz : io_out[22];
assign gpio[23] = io_oeb[23] ? 1'bz : io_out[23];
assign gpio[24] = io_oeb[24] ? 1'bz : io_out[24];
assign gpio[25] = io_oeb[25] ? 1'bz : io_out[25];
assign gpio[26] = io_oeb[26] ? 1'bz : io_out[26];
assign gpio[27] = io_oeb[27] ? 1'bz : io_out[27];
assign gpio[28] = io_oeb[28] ? 1'bz : io_out[28];
assign gpio[29] = io_oeb[29] ? 1'bz : io_out[29];
assign gpio[30] = io_oeb[30] ? 1'bz : io_out[30];
assign gpio[31] = io_oeb[31] ? 1'bz : io_out[31];
assign gpio[32] = io_oeb[32] ? 1'bz : io_out[32];
assign gpio[33] = io_oeb[33] ? 1'bz : io_out[33];
assign gpio[34] = io_oeb[34] ? 1'bz : io_out[34];
assign gpio[35] = io_oeb[35] ? 1'bz : io_out[35];

user_project_example mprj(
	.clk_i(clk_i),
	.rst_n(rst_n),
	.io_out(io_out),
	.io_in(io_in),
	.io_oeb(io_oeb)
);

endmodule
