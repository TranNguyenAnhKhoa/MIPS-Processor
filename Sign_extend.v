module Sign_extend(i, o);
//PORT
	input [15:0] i;
	output [31:0] o;
	reg [31:0] o;
	wire [15:0] i;

//LOGIC
	always @(*) begin
		o[31:16] = {16{i[15]}};
		o[15:0] = i[15:0];
	end

endmodule
