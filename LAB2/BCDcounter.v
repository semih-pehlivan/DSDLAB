module BCDcounter(nRst,Clk,CntEn,NextEn,Cout);
input nRst,Clk,CntEn;
output NextEn;
output reg [3:0] Cout;

always @(posedge Clk or negedge nRst)
begin
		if(nRst==1'b0)
			
			Cout [3:0]<=4'b0;
			
			else
			
			if(CntEn==1'd1)
			
				if(Cout==4'd9)
			
					Cout [3:0]<=4'b0;
			
				else
			
					Cout [3:0]<=Cout [3:0]+ 4'b1;
end

assign NextEn=(Cout[3:0]==4'd9) ? 1'b1 : 1'b0;

endmodule
