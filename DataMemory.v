module DataMemory(clk, Address, WriteData, MemWrite, ReadData, MemRead);
	input [31:0] Address;
	input [31:0] WriteData;
	input MemWrite, MemRead, clk;
	output reg [31:0] ReadData;
	reg [31:0] sram [0:31];
	
	always @(posedge clk)
		if(MemWrite==1 && MemRead==0) begin
			sram[Address] <= WriteData;
			end
		else if(MemRead==1 && MemWrite==0) begin
			ReadData <= sram[Address];
			end
		else begin
			ReadData <= 32'b0;
			end

endmodule 

