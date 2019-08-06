module debouncer1(Clk,In,Out);
	input In, Clk;
	output reg Out;
	reg [3:0] Temp;
	
	always @(posedge Clk)
	begin
	Temp[3:1] <= Temp[2:0];
	Temp[0] <= In;
	
	if((Temp[0] == Temp[1]) && (Temp[0] == Temp[2]) && (Temp[0] == Temp[3]))
		Out <= Temp[0];
	else
		Out <= Out;
	end
	
endmodule
