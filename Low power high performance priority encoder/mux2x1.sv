module mux2x1(a0,a1,s,y);
input logic a0,a1,s;
output logic y;
assign y = (~s & a0) | (s & a1);
endmodule
