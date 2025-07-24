`timescale 1ns / 1ps

module half_adder_tb;
    reg a,b;
    wire sum,carry;
//Inatantiatate of design code
half_adder uut(.a(a),.b(b),.sum(sum),.carry(carry));
initial begin
//$display("time\t \a b | s c");
//Test case
    a=0; b=0; #30;
    a=0; b=1; #30;
    a=1; b=0; #30;
    a=1; b=1; #30;
    $finish;
    end
endmodule
