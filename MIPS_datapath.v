module MIPS_datapath(
//PORT
	input [31:0] WD,
	input [4:0] rs, rt, rd,
	input [15:0] imm,
	input RegWrite, RegDst, MemRead, MemWrite, MemToReg, ALUSrc, clk,
	input [2:0] ALUcontrol,
	output [31:0] out,
	output isZero,
	output [31:0] RD1, RD2
);
// WIRE
	wire [4:0]WR;
	wire [31:0] signEx, ALU_result, ALU_b, readdata; 
//LOGIC
	assign WR = RegDst ? rd : rt;
	Register Regs(	.RR1(rs[4:0]),
						.RR2(rt[4:0]),
						.WR(WR[4:0]),
						.WD(WD),
						.RD1(RD1[31:0]),
						.RD2(RD2[31:0]),
						.RegWrite(RegWrite),
						.clk(clk)
					);
	Sign_extend SignExtend( .i(imm[15:0]),
									.o(signEx[31:0])
								);

	assign ALU_b = ALUSrc ? signEx : RD2;
	ALU alu(	.a(RD1[31:0]), 
				.b(ALU_b[31:0]), 
				.sel(ALUcontrol[2:0]), 
				.ALU_result(ALU_result[31:0]), 
				.z_flags(isZero)
			);
	
	DataMemory DM(	.Address(ALU_result[31:0]),
						.WriteData(RD2[31:0]),
						.MemRead(MemRead),
						.MemWrite(MemWrite),
						.ReadData(readdata[31:0]),
						.clk(clk)
					);
	assign out = MemToReg ? readdata : ALU_result;
	
endmodule
