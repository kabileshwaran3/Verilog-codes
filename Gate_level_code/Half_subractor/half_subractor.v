`timescale 1ns / 1ps

module half_subractor(a,b,d,bo);
    input a,b;
    output d,bo;
    wire w1;
 xor x1(d,a,b);
 not x2(w1,b);
 and x3(bo,w1,b);
endmodule
