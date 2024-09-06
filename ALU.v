module ALU(a, b, sel, ALU_result, z_flags);
//PARAMETER
	parameter WIDTH=32;
//PORT
	input [WIDTH-1:0] a, b;
	input [2:0] sel;
	output [WIDTH-1:0] ALU_result;
	output z_flags;
//VARIABLE
	reg [31:0] z;
	reg flags_overflow;

//LOGIC
	always @(*) begin
		flags_overflow=0;
		////
		case(sel)
		// Complement A
			3'b000: begin
				z = ~a;
			end
		// AND
			3'b001: begin
				z <= a&b;
			end
		// EX-OR
			3'b010: begin
				z <= a^b;
			end
		// OR
			3'b011: begin
				z <= a|b;
			end
		// Decrement A
			3'b100: begin
				z <= a-1'b1;
			end

		// Add
			3'b101: begin
				z <= a+b;
				flags_overflow = (a[31] && b[31] && ~z[31]) || (~a[31] && ~b[31] && z[31]);
			end
		// Subtract
			3'b110: begin
				z <= a-b;
				flags_overflow = (a[31] && ~b[31] && ~z[31]) || (~a[31] && b[31] && z[31]);
			end
		// Increment A
			3'b111: begin
				z <= a+1'b1;
			end
		endcase
	end
	assign ALU_result = z;
	assign z_flags = flags_overflow;
endmodule

