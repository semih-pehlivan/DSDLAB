module Selection(Opr1,Opr2,Select,FOut);
input Opr1,Opr2,Select;
output FOut;

assign FOut=(Select) ? (Opr1 ^ Opr2) : (Opr1 & Opr2);

endmodule

