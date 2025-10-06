`default_nettype none

module user_project_example(
`ifdef USE_POWER_PINS
	inout wire VSS,
	inout wire VDD,
`endif
	input clk_i,
	input rst_n, //Active low
	
	//These all map to the 36 user-assignable IO pads
	output [35:0] io_out,
	output [35:0] io_oeb, //Active-low output enable (0 = output, 1 = input). These must ALL be assigned a value, even for pins that are fixed inputs/outputs
	input [35:0] io_in
);

wire OE  = !io_in[34];
wire WEb = io_in[35];

assign io_oeb = {2'b11, {34{!OE}}};

reg [33:0] count;
assign io_out = {2'b00, count};

always @(posedge clk_i) begin
	if(!rst_n) begin
		count <= 0;
	end else begin
		count <= count + 1;
		if(!WEb) count <= io_in[33:0];
	end
end

endmodule
