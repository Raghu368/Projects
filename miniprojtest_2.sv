module miniprojtest_2(input logic h0,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13,h14,h15,h16,h17,h18,h19,h20,h21,h22,
h23,h24,h25,h26,h27,h28,h29,h30,h31,h32,h33,h34,h35,h36,h37,h38,h39,h40,h41,h42,h43,h44,h45,h46,h47,h48,h49,
h50,h51,h52,h53,h54,h55,h56,h57,h58,h59,h60,h61,h62,h63,output logic q0,q1,q2,q3,q4,q5);

logic r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;

OR_FOUR OR0 (h0,h1,h2,h3,r0);
OR_FOUR OR1 (h4,h5,h6,h7,r1);
OR_FOUR OR2 (h8,h9,h10,h11,r2);
OR_FOUR OR3 (h12,h13,h14,h15,r3);
OR_FOUR OR4 (h16,h17,h18,h19,r4);
OR_FOUR OR5 (h20,h21,h22,h23,r5);
OR_FOUR OR6 (h24,h25,h26,h27,r6);
OR_FOUR OR7 (h28,h29,h30,h31,r7);
OR_FOUR OR8 (h32,h33,h34,h35,r8);
OR_FOUR OR9 (h36,h37,h38,h39,r9);
OR_FOUR OR10 (h40,h41,h42,h43,r10);
OR_FOUR OR11 (h44,h45,h46,h47,r11);
OR_FOUR OR12 (h48,h49,h50,h51,r12);
OR_FOUR OR13 (h52,h53,h54,h55,r13);
OR_FOUR OR14 (h56,h57,h58,h59,r14);
OR_FOUR OR15 (h60,h61,h62,h63,r15);

logic IA1,IA2,IB1,IB2,IC1,IC2,ID1,ID2,IE1,IE2,IF1,IF2,IG1,IG2,IH1,IH2,II1,II2,IJ1,IJ2,IK1,IK2,IL1,IL2,IM1,IM2,IN1,IN2,IO1,IO2,IP1,IP2;

priorityencoder_42 PE0 (h0,h1,h2,h3,IA1,IA2);
priorityencoder_42 PE1 (h4,h5,h6,h7,IB1,IB2);
priorityencoder_42 PE2 (h8,h9,h10,h11,IC1,IC2);
priorityencoder_42 PE3 (h12,h13,h14,h15,ID1,ID2);
priorityencoder_42 PE4 (h16,h17,h18,h19,IE1,IE2);
priorityencoder_42 PE5 (h20,h21,h22,h23,IF1,IF2);
priorityencoder_42 PE6 (h24,h25,h26,h27,IG1,IG2);
priorityencoder_42 PE7 (h28,h29,h30,h31,IH1,IH2);
priorityencoder_42 PE8 (h32,h33,h34,h35,II1,II2);
priorityencoder_42 PE9 (h36,h37,h38,h39,IJ1,IJ2);
priorityencoder_42 PE10 (h40,h41,h42,h43,IK1,IK2);
priorityencoder_42 PE11 (h44,h45,h46,h47,IL1,IL2);
priorityencoder_42 PE12 (h48,h49,h50,h51,IM1,IM2);
priorityencoder_42 PE13 (h52,h53,h54,h55,IN1,IN2);
priorityencoder_42 PE14 (h56,h57,h58,h59,IO1,IO2);
priorityencoder_42 PE15 (h60,h61,h62,h63,IP1,IP2);

logic u0,u1,u2,u3;

OR_FOUR ORA (r0,r1,r2,r3,u0);
OR_FOUR ORB (r4,r5,r6,r7,u1);
OR_FOUR ORC (r8,r9,r10,r11,u2);
OR_FOUR ORD (r12,r13,r14,r15,u3);

priorityencoder_42 PE42 (u0,u1,u2,u3,q4,q5);

logic PA1,PA2,PB1,PB2,PC1,PC2,PD1,PD2;

priorityencoder_42 PEE0 (r0,r1,r2,r3,PA1,PA2);
priorityencoder_42 PEE1 (r4,r5,r6,r7,PB1,PB2);
priorityencoder_42 PEE2 (r8,r9,r10,r11,PC1,PC2);
priorityencoder_42 PEE3 (r12,r13,r14,r15,PD1,PD2);

logic n0,n1,n2,n3;

mux2x1 M0 (PA1,PB1,q4,n0);
mux2x1 M1 (PC1,PD1,q4,n1);
mux2x1 M2 (PA2,PB2,q4,n2);
mux2x1 M3 (PC2,PD2,q4,n3);
mux2x1 M4 (n0,n1,q5,q2);
mux2x1 M5 (n2,n3,q5,q3);

logic m0,m1,m2,m3;

mux8x1 W0 (IA1,IB1,IC1,ID1,IE1,IF1,IG1,IH1,q2,q3,q4,m0);
mux8x1 W1 (II1,IJ1,IK1,IL1,IM1,IN1,IO1,IP1,q2,q3,q4,m1);
mux8x1 W2 (IA2,IB2,IC2,ID2,IE2,IF2,IG2,IH2,q2,q3,q4,m2);
mux8x1 W3 (II2,IJ2,IK2,IL2,IM2,IN2,IO2,IP2,q2,q3,q4,m3);
mux2x1 W4 (m0,m1,q5,q0);
mux2x1 W5 (m2,m3,q5,q1);

endmodule