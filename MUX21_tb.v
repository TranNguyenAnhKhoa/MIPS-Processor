`timescale 1ns/100ps
module MUX21_tb();

	reg [31:0] a = 32'd234453, b = 32'd324621;
	reg sel = 0;
	wire [31:0] out;
	
	MUX2to1 mux(a, b, out, sel);
	initial begin
		#20 a = $random;
		#20 b = $random;
		#20 a = $random;
		#20 b = $random;
		#20 $finish;
	end
	always #23 sel = ~sel;

endmodule
