//Write a Verilog module using a continuous assignment to implement out = a & b.
`timescale 1ns / 1ps

module continous_and(input a,input b,   
                     output out);

    assign out=a&b;
endmodule
