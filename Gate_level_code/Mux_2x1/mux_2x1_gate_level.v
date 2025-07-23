`timescale 1ns / 1ps

module mux_2x1_gate_level(a,b,s0,y);
 input a,b,s0;
 output y;
 wire w1,w2,w3;
 not x1 (w1,s0);
 and x2(w2,w1,a);
 and x3(w3,s0,b);
 or x4(y,w2,w3);
 endmodule
