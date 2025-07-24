`timescale 1ns / 1ps

module demux_1x4_tb;
    reg x,s0,s1;
    wire y0,y1,y2,y3;
demux_1x4 uut(.x(x),.s0(s0),.s1(s1),.y0(y0),.y1(y1),.y2(y2),.y3(y3));

//test case
initial begin
    x = 0; s1 = 0; s0 = 0; #10;
    x = 0; s1 = 0; s0 = 1; #10;
    x = 0; s1 = 1; s0 = 0; #10;
    x = 0; s1 = 1; s0 = 1; #10;
    
    x = 1; s1 = 0; s0 = 0; #10;
    x = 1; s1 = 0; s0 = 1; #10;
    x = 1; s1 = 1; s0 = 0; #10;
    x = 1; s1 = 1; s0 = 1; #10; 
    $finish;
    end   
    
endmodule
