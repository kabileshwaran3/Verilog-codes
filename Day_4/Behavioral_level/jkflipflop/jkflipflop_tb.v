`timescale 1ns / 1ps

module jkflipflop_tb;
    reg j,k,clk;
    wire q;
    
jk_flipflop uut(.j(j),.k(k),.clk(clk),.q(q));

initial clk=0;
always  #3 clk=~clk;


initial begin 
   j=0; k=0; clk=0; #1;
   
   j=0; k=0; #6;
   j=0; k=1; #6;
   j=1; k=0; #3;
   j=1; k=1; #4;
   $finish;
   end
   
endmodule
