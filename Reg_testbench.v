`timescale 1ns/100ps

module Reg_testbench;
	reg [4:0] RR1=4'b0, RR2=4'b0, WR=4'b0;
	reg RegWrite=1, clk=0;
	reg [31:0] WD=32'b0;
	wire [31:0] RD1, RD2;
	
	Register Reg(	.RR1(RR1),
						.RR2(RR2),
						.WR(WR),
						.RegWrite(RegWrite),
						.clk(clk),
						.WD(WD),
						.RD1(RD1),
						.RD2(RD2)
					);
	initial begin
		#20 RR1 = 5'd0;
		RR2 = 5'd0;
		WR = 5'd2;
		WD = 32'd23;
		
		#20 RR1 = 5'd0;
		RR2 = 5'd0;
		WR = 5'd3;
		WD = 32'd28;
		
		#20 RR1 = 5'd2;
		RR2 = 5'd3;
		WR = 5'd1;
		WD = 32'd55;
		
		#20 $finish;
	end
	always #9 clk=~clk;
endmodule
