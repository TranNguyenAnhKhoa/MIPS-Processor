`timescale 1ns/100ps
module MIPSdatapath_testbench();
	reg[31:0] WD = 32'b0;
	reg[4:0] rs = 5'd0, rt = 5'd0, rd = 5'd0;
	reg[15:0] imm = 16'd0;
	reg [2:0] ALUcontrol = 3'b0;
	reg RegWrite=1, 
		RegDst=1, 
		MemRead=0, 
		MemWrite=0, 
		MemToReg=0, 
		ALUSrc=0, 
		clk=0;
	
	wire [31:0] result, RD1, RD2;
	wire isZero;
	
	MIPS_datapath datapath(	.WD(WD),
									.rs(rs), 
									.rt(rt),
									.rd(rd),
									.imm(imm),
									.RegWrite(RegWrite), 
									.RegDst(RegDst), 
									.MemRead(MemRead), 
									.MemWrite(MemWrite), 
									.MemToReg(MemToReg),
									.ALUSrc(ALUSrc), 
									.clk(clk),
									.ALUcontrol(ALUcontrol),
									.out(result),
									.isZero(isZero),
									.RD1(RD1), 
									.RD2(RD2)
								);
	
	initial begin
	// add $1, $2, $3
		// assign $2 = 23;
		#20 rd = 5'd2;
		WD = 32'd23;
		// assign S3 = 36
		#20 rd = 5'd3;
		WD = 32'd36;
		

		#20 rs = 5'd2; rt = 5'd3;
		rd = 5'd1;
		WD = 32'd59;
		
		RegWrite=1;
		MemRead=0; 
		MemWrite=0; 
		MemToReg=0; 
		ALUSrc=0;
		ALUcontrol=3'b010;
		
//	// lw $1, 0($2)
//		#20 imm = 16'd0;
//		RegWrite=1;
//		RegDst=0;
//		MemRead=1;
//		MemWrite=0; 
//		MemToReg=1; 
//		ALUSrc=1;
//		ALUcontrol=3'b010;
//	// sw $1, 0($2)
//		#20 imm = 16'd0;
//		RegWrite=0;
//		RegDst=1'bx;
//		MemRead=0; 
//		MemWrite=1; 
//		MemToReg=1'bx; 
//		ALUSrc=1;
//		ALUcontrol=3'b010;
		
		#100 $finish;
	end
	always #9 clk=~clk;
	
endmodule
