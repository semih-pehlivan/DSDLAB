module TopModule(Clk,In,Out1,Out2);
	input Clk, In;
	output Out1, Out2;

	debouncer1 d1(Clk,In,Out1); 
	debouncer2 d2(Clk,In,Out2); 
	
endmodule
