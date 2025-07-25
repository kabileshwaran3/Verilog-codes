`timescale 1ns / 1ps

module ripple_carry_tb;
    reg [3:0]a,b;
    wire[3:0]s;
    wire cout;
    

   ripple_carry_adder uut(.a(a),.b(b),.s(s),.cout(cout));
   initial begin 
   //test case
    a=4'b1101;  b=4'b1010; #20;
    a=4'b0011;  b=4'b1101; #20;
    a=4'b0001;  b=4'b0101; #20;
    a=4'b1111;  b=4'b0011; #20;
    $finish;
    end
endmodule
