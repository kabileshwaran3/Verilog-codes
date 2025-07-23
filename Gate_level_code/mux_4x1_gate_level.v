`timescale 1ns / 1ps

 module mux_4x1_gate_level(out,i0,i1,i2,i3,s0,s1);
  input i0,i1,i2,i3,s0,s1;
  output out;
  wire y0,y1,y2,y3,x1,x2;
  not n1(x1,s1);
  not n2(x2,s0);
  and a1(y0,i0,x1,x2);
  and a2(y1,i1,x1,s0);
  and a3(y2,i2,s1,x2);
  and a4(y3,i3,s0,s1);
  or  a5(out,y0,y1,y2,y3);
  
endmodule
