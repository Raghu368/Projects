module mux8x1(a0,a1,a2,a3,a4,a5,a6,a7,s0,s1,s2,y);
input logic a0,a1,a2,a3,a4,a5,a6,a7,s0,s1,s2;
output logic y;

assign y = (a0 & ~s2 & ~s1 & ~s0) | (a1 & ~s2 & ~s1 & s0) | (a2 & ~s2 & s1 & ~s0) | (a3 & ~s2 & s1 & s0) | (a4 & s2 & ~s1 & ~s0) | (a5 & s2 & ~s1 & s0) | (a6 & s2 & s1 & ~s0) | (a7 & s2 & s1 & s0);
endmodule
