`timescale 1ns / 1ps

module half_subractor_tb;
    reg a,b;
    wire diff,borr;
half_subractor uut(.a(a),.b(b),.diff(diff),.borr(borr));

//test case 
initial begin
    a=0; b=0; #20;
    a=0; b=1; #20;
    a=1; b=0; #20;
    a=1; b=1; #20; 
    $finish;
    end
endmodule
