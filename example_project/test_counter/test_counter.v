module test_counter(
`ifdef USE_POWER_PINS
	inout wire VSS,
	inout wire VDD,
`endif
	input clk_i,
	input rst_n,
	output reg [31:0] io_out
);

always @(posedge clk_i) io_out <= rst_n ? io_out - 1 : 0;

endmodule
