`timescale 1ns / 1ps

module mux_4x1_tb;
    reg i0,i1,i2,i3;
    reg s0,s1;
    wire y;
    
mux_4x1 uut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.y(y));

initial begin
    i0=1;i1=0;i2=0;i3=1;
    //test case
    
    s0=0; s1=0; #20;
    s0=0; s1=1; #20;
    s0=1; s1=0; #20;
    s0=1; s1=1; #20;
    $finish;
    end
    
endmodule
