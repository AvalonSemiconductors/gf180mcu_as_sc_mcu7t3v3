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

module gf180mcu_as_sc_mcu7t3v3__inv_4(
	input VPW,
	input VNW,
	input VDD,
	input VSS,
	
	input A,
	output Y
);

assign Y = !A;

endmodule

module gf180mcu_as_sc_mcu7t3v3__inv_6(
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

module gf180mcu_as_sc_mcu7t3v3__nand2_4(
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

module gf180mcu_as_sc_mcu7t3v3__nand2b_2(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	output Y
);

assign Y = A | (!B);

endmodule

module gf180mcu_as_sc_mcu7t3v3__nand2b_4(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	output Y
);

assign Y = A | (!B);

endmodule

module gf180mcu_as_sc_mcu7t3v3__nand3_2(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	output Y
);

assign Y = !(A & B & C);

endmodule

module gf180mcu_as_sc_mcu7t3v3__nand4_2(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	input D,
	output Y
);

assign Y = !(A & B & C & D);

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

module gf180mcu_as_sc_mcu7t3v3__nor2_4(
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

module gf180mcu_as_sc_mcu7t3v3__nor2b_2(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	output Y
);

assign Y = A & (!B);

endmodule

module gf180mcu_as_sc_mcu7t3v3__nor2b_4(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	output Y
);

assign Y = A & (!B);

endmodule

module gf180mcu_as_sc_mcu7t3v3__nor3_2(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	output Y
);

assign Y = !(A | B | C);

endmodule

module gf180mcu_as_sc_mcu7t3v3__and2_2(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	output Y
);

assign Y = A & B;

endmodule

module gf180mcu_as_sc_mcu7t3v3__and2_4(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	output Y
);

assign Y = A & B;

endmodule

module gf180mcu_as_sc_mcu7t3v3__or2_2(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	output Y
);

assign Y = A | B;

endmodule

module gf180mcu_as_sc_mcu7t3v3__or2_4(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	output Y
);

assign Y = A | B;

endmodule

module gf180mcu_as_sc_mcu7t3v3__xnor2_2(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	output Y
);

assign Y = A == B;

endmodule

module gf180mcu_as_sc_mcu7t3v3__xnor2_4(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	output Y
);

assign Y = A == B;

endmodule

module gf180mcu_as_sc_mcu7t3v3__maj3_2(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	output Y
);

assign Y = (A & B) | (A & C) | (B & C);

endmodule

module gf180mcu_as_sc_mcu7t3v3__maj3_4(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	output Y
);

assign Y = (A & B) | (A & C) | (B & C);

endmodule

module gf180mcu_as_sc_mcu7t3v3__aoi21_2 (
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	output Y
);

assign Y = ~((A & B) | C);

endmodule

module gf180mcu_as_sc_mcu7t3v3__aoi21_4 (
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	output Y
);

assign Y = ~((A & B) | C);

endmodule

module gf180mcu_as_sc_mcu7t3v3__ao21_2 (
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	output Y
);

assign Y = (A & B) | C;

endmodule

module gf180mcu_as_sc_mcu7t3v3__ao21_4 (
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	output Y
);

assign Y = (A & B) | C;

endmodule

module gf180mcu_as_sc_mcu7t3v3__aoi22_2 (
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	input D,
	output Y
);

assign Y = ~((A & B) | (C & D));

endmodule

module gf180mcu_as_sc_mcu7t3v3__aoi22_4 (
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	input D,
	output Y
);

assign Y = ~((A & B) | (C & D));

endmodule

module gf180mcu_as_sc_mcu7t3v3__ao22_2 (
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	input D,
	output Y
);

assign Y = (A & B) | (C & D);

endmodule

module gf180mcu_as_sc_mcu7t3v3__ao22_4 (
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	input D,
	output Y
);

assign Y = (A & B) | (C & D);

endmodule

module gf180mcu_as_sc_mcu7t3v3__aoi31_2 (
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	input D,
	output Y
);

assign Y = ~((A & B & C) | D);

endmodule

module gf180mcu_as_sc_mcu7t3v3__aoi31_4 (
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	input D,
	output Y
);

assign Y = ~((A & B & C) | D);

endmodule

module gf180mcu_as_sc_mcu7t3v3__ao31_2 (
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	input D,
	output Y
);

assign Y = (A & B & C) | D;

endmodule

module gf180mcu_as_sc_mcu7t3v3__ao31_4 (
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	input D,
	output Y
);

assign Y = (A & B & C) | D;

endmodule

module gf180mcu_as_sc_mcu7t3v3__mux2_2(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input S,
	output Y
);

assign Y = (S&B) | ((!S)&A);

endmodule

module gf180mcu_as_sc_mcu7t3v3__mux2_4(
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input S,
	output Y
);

assign Y = (S&B) | ((!S)&A);

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
