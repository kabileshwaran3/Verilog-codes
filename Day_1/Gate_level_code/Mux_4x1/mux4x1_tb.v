`timescale 1ns / 1ps

module mux4x1_tb();
  reg i0,i1,i2,i3;
  reg s0,s1;
  wire out;
mux_4x1_gate_level uut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.out(out));
initial begin
  $dumpfile("mux_4x1_gate_level.vcd");
  i0=1;i1=0;i2=1;i3=0;
  s0=0; s1=0; #80;
  s0=1; s1=0; #80
  s0=0; s1=1; #80;
  s0=1; s1=1; #80;
  $finish;
  end
endmodule
