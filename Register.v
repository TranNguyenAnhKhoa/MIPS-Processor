module Register(
// port declac
	input [4:0] RR1, RR2, WR,
	input RegWrite, clk,
	input [31:0] WD,
	output reg [31:0] RD1, RD2
);
	reg [31:0] RegMem[0:31];
// logical
	always @(posedge clk)
	begin
		if (RegWrite)
			begin
				RegMem[WR] <= WD;
			end
	end
	always @(*)
	begin
		RD1 <= RegMem[RR1];
		RD2 <= RegMem[RR2];
	end
endmodule
