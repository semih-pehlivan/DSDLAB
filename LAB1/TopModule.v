module TopModule(Clk,nAReset,Select,FOut);
input Clk,nAReset,Select;
output FOut;

wire [2:0]bits;

Counting C1(Clk,nAReset,bits);
Selection S1(bits[0],bits[2],Select,FOut);

endmodule
