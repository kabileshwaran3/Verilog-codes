`timescale 1ns / 1ps

module mux_2x1_tb;
 reg a,b,s0;
 wire y;
 //instantiate
 mux_2x1_gate_level uut(.y(y),.a(a),.b(b),.s0(s0));
 initial begin
 //possibilities
 a=0; b=0; s0=0;#20;
 a=0; b=1; s0=0;#20;
 a=1; b=0; s0=0;#20;
 a=1; b=1; s0=0;#20;
 
 a=0; b=0; s0=1; #20;
 a=0; b=1; s0=1; #20;
 a=1; b=0; s0=1; #20;
 a=1; b=1; s0=1; #20;
 $finish;
 end
endmodule
