`timescale 1ns / 1ps

module cmos_nand_tb;
    reg a,b;
    wire y;
   
   cmos_nand uut(.a(a),.b(b),.y(y));
   
   initial begin
   //test case
   a=0; b=0; #20;
   a=0; b=1; #20;
   a=1; b=0; #20;
   a=1; b=1; #20;
   $finish;
   end
   
endmodule
