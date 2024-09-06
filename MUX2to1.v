module MUX2to1(
	input [31:0] A1, B0,
	output [31:0] Out,
	input sel
);
	
	assign Out = sel ? A1 : B0;
endmodule
