`timescale 1ns / 1ps

module half_adder_tb;
    reg a,b;
    wire sum,carry;
    
half_adder uut(.a(a),.b(b),.sum(sum),.carry(carry));

//test case
initial begin
    a=0; b=0; #20;
    a=0; b=1; #20;
    a=1; b=0; #20;
    a=1; b=1; #20;
    $finish;
    end
    
endmodule
