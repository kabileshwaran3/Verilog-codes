`timescale 1ns / 1ps

module mux_2x1_tb;
 reg a,b,s;
 wire y;
 //instantiate
 mux_2x1 uut(.y(y),.a(a),.b(b),.s(s));
 initial begin
 //possibilities
 a=0; b=0; s=0;#20;
 a=0; b=1; s=0;#20;
 a=1; b=0; s=0;#20;
 a=1; b=1; s=0;#20;
 
 a=0; b=0; s=1; #20;
 a=0; b=1; s=1; #20;
 a=1; b=0; s=1; #20;
 a=1; b=1; s=1; #20;
 $finish;
 end
endmodule
