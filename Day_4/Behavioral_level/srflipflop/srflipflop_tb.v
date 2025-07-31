`timescale 1ns / 1ps
module srflipflop_tb;
    reg s,r;
    reg clk;
    wire q;
    
sr_flip_flop uut(.s(s),.r(r),.clk(clk),.q(q));

always #3 clk=~clk;

initial begin
clk=0; s=0; r=0;  #2
clk=1; s=0; r=0; #2;
clk=1; s=1; r=0; #3;
clk=1; s=0; r=1; #4;
clk=1; s=1; r=1; #6;
$finish;
end    

    
endmodule
