//Design a 2-to-4 decoder using dataflow modeling (active-low output).
`timescale 1ns / 1ps

module ques_17(input a,input b,output [3:0] y);

    assign y[0]=~a & ~b;
    assign y[1]=~a &  b;
    assign y[2]= a & ~b;
    assign y[3]= a &  b;
endmodule
