module Counting(Clk,nAReset,CountOut);
input Clk,nAReset;
output reg [2:0] CountOut;
always@(posedge Clk or negedge nAReset)
	if (nAReset == 1'b0)
	   CountOut[2:0]<=1'b0;
	else
	   CountOut[2:0]<=CountOut[2:0]+1'b1;
endmodule 
		