`timescale 1ns/100ps
module ALU_testbench();
	reg[31:0] a=32'd34532, b=32'd324548;
	reg [2:0] sel = 3'b000;
	
	wire [31:0] result;
	wire ov;
	ALU au(a, b, sel, result, ov);
	
	initial begin
		#20 b= $random;
		#20 b= $random;
		#20 b= $random;
		#20 b= $random;
		#20 a= $random;
		#20 a= $random;
		#20 b= $random;
		#20 a= $random;
		#20 a= $random;
		#20 $finish;
	end
	always #23 sel=sel+1;
	
endmodule
