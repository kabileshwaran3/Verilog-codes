`timescale 1ns / 1ps

module full_sub_tb;
    reg a,b,bin;
    wire d,bor;
    
full_subractor uut(.a(a),.b(b),.bin(bin),.d(d),.bor(bor));
//test case
initial begin
    a=0; b=0; bin=0; #20;
    a=0; b=0; bin=1; #20;  
    a=0; b=1; bin=0; #20;
    a=0; b=1; bin=1; #20;
    a=1; b=0; bin=0; #20;
    a=1; b=0; bin=1; #20;
    a=1; b=1; bin=0; #20;
    a=1; b=1; bin=1; #20; 
    $finish;
    end      
endmodule
