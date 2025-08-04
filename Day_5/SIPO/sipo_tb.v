`timescale 1ns / 1ps

module sipo_tb;
    reg sin;
    reg clk;
    reg rst;
    wire [3:0]sout;

   sipo_shift uut(.sin(sin),.clk(clk),.rst(rst),.sout(sout));
   
   initial begin clk=0;
    forever #5 clk=~clk;
   end
   initial begin rst=1; sin=0; #3 rst=0;
   @(posedge clk)
          sin=0; #10;
          sin=1; #10;
          sin=1; #10;
          sin=1; #10;
          #100; 
         $finish;
          end
  
   
endmodule
