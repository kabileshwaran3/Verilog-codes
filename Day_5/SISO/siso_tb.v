`timescale 1ns / 1ps

module siso_tb;
               reg clk;
               reg rst;
               reg sin;
               wire sout;
   siso_shift uut(.clk(clk),.rst(rst),.sin(sin),.sout(sout));
   
   initial begin
   clk=0;
   forever #5 clk=~clk;
   end
   initial begin
   rst=1; sin=0; #3 rst=0;
   @(posedge clk)
          sin=1; #10;
          sin=0; #10;
          sin=1; #10;
          sin=1; #10;
          #100$finish;
          
          end
 
 endmodule

