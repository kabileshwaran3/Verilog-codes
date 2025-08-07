/*Demonstrate implicit net declaration by creating a module where undeclared out is
assigned using assign out = a | b;*/
`timescale 1ns / 1ps

module implicit_or(input a,input b,   
                     output out);

    assign out=a|b;
endmodule
