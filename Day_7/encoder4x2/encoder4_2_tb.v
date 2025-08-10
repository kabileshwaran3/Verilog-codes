`timescale 1ns / 1ps
module encoder4_2_tb;
    reg [3:0]i;
    reg en;
    wire [1:0]y;
    
   encoder4_2 uut(.i(i),.en(en),.y(y));
   
   initial begin
   en=0; #2;
   en=1;
       i=4'b0010; #20;
       i=4'b0001; #20;
       i=4'b0101; #20; //invalid condition
       i=4'b0100; #20;
       i=4'b1000; 
   #30
   $finish;
   end 
endmodule
