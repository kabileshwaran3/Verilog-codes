`timescale 1ns / 1ps

module half_subrac_tb;
    reg a,b;
    wire d,bo;
 half_subractor uut(.a(a),.b(b),.d(d),.b0(b0));
 initial begin 
    a=0; b=0; #20;
    a=0; b=1; #20;
    a=1; b=0; #20;
    a=1; b=1; #20;
    $finish;
    end
endmodule
