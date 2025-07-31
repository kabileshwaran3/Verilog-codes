`timescale 1ns / 1ps

module d_flipflop_tb;
    reg d,clk,rst;
    wire q,qb;
    
d_flipflop uut(.d(d),.clk(clk),.rst(rst),.q(q),.qb(qb));

always #100 clk=~clk;

initial begin
    clk=0;rst=0;d=0; #10;
    clk=1;d=1; #20;
    clk=1;d=0; #20;
    end
endmodule




