`default_nettype none

module gf180mcu_as_sc_mcu7t3v3__dfxtp_2(
	input VPW,
	input VNW,
	input VDD,
	input VSS,
	
	input CLK,
	input D,
	output Q
);

reg state;
always @(posedge CLK) state <= D;
assign Q = state;

endmodule

module gf180mcu_as_sc_mcu7t3v3__buff_2(
	input VPW,
	input VNW,
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = A;

endmodule

module gf180mcu_as_sc_mcu7t3v3__buff_4(
	input VPW,
	input VNW,
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = A;

endmodule

module gf180mcu_as_sc_mcu7t3v3__buff_8(
	input VPW,
	input VNW,
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = A;

endmodule

module gf180mcu_as_sc_mcu7t3v3__buff_12(
	input VPW,
	input VNW,
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = A;

endmodule

module gf180mcu_as_sc_mcu7t3v3__clkbuff_4(
	input VPW,
	input VNW,
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = A;

endmodule

module gf180mcu_as_sc_mcu7t3v3__clkbuff_8(
	input VPW,
	input VNW,
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = A;

endmodule

module gf180mcu_as_sc_mcu7t3v3__clkbuff_12(
	input VPW,
	input VNW,
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = A;

endmodule

module gf180mcu_as_sc_mcu7t3v3__inv_2(
	input VPW,
	input VNW,
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = !A;

endmodule

module gf180mcu_as_sc_mcu7t3v3__nand2_2(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	output Y
);

assign Y = !(A & B);

endmodule

module gf180mcu_as_sc_mcu7t3v3__nor2_2(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	output Y
);

assign Y = !(A | B);

endmodule

module gf180mcu_as_sc_mcu7t3v3__tap_2(
	input VPW,
	input VNW,
	input VDD,
	input VSS
);

endmodule

module gf180mcu_as_sc_mcu7t3v3__fill_1(
	input VPW,
	input VNW,
	input VDD,
	input VSS
);

endmodule

module gf180mcu_as_sc_mcu7t3v3__fill_2(
	input VPW,
	input VNW,
	input VDD,
	input VSS
);

endmodule

module gf180mcu_as_sc_mcu7t3v3__fill_4(
	input VPW,
	input VNW,
	input VDD,
	input VSS
);

endmodule

module gf180mcu_as_sc_mcu7t3v3__fill_8(
	input VPW,
	input VNW,
	input VDD,
	input VSS
);

endmodule

module gf180mcu_as_sc_mcu7t3v3__decap_4(
	input VPW,
	input VNW,
	input VDD,
	input VSS
);

endmodule

module gf180mcu_as_sc_mcu7t3v3__decap_8(
	input VPW,
	input VNW,
	input VDD,
	input VSS
);

endmodule

module gf180mcu_as_sc_mcu7t3v3__decap_16(
	input VPW,
	input VNW,
	input VDD,
	input VSS
);

endmodule

module gf180mcu_as_sc_mcu7t3v3__tieh_4(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	output ONE
);

assign ONE = 1'b1;

endmodule

module gf180mcu_as_sc_mcu7t3v3__tiel_4(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	output ZERO
);

assign ZERO = 1'b0;

endmodule

module gf180mcu_as_sc_mcu7t3v3__diode_2(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input DIODE
);

endmodule
