`default_nettype none

`timescale 1ns/1ps

module tb(
	input clk_i,
	input rst_n,
	input oeb,
	input web,
	input [33:0] count_set,
	output [33:0] count
);

initial begin
	$dumpfile ("tb.vcd");
	$dumpvars (0, tb);
	#1;
end

wire [35:0] gpio;
assign gpio[35] = web;
assign gpio[34] = oeb;
assign gpio[33:0] = web ? 34'hzzzzzzzzz : count_set;
assign count = gpio[33:0];

fpga_wrapper dut(
	.clk_i(clk_i),
	.rst_n(rst_n),
	.gpio(gpio)
);

endmodule
