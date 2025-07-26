`timescale 1ns / 1ps

module half_adder_tb;
    reg a,b;
    wire sum;
    wire carry;

 half_adder uut(.a(a),.b(b),.sum(sum),.carry(carry));
 initial begin
    //Test case
    a=0; b=0; #20;
    a=0; b=1; #20;
    a=1; b=0; #20;
    a=1; b=1; #20;
    $finish;
    end
endmodule
