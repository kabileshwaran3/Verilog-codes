`timescale 1ns / 1ps

module d_flipflop_tb;
    reg d,clk,rst;
    wire q,qb;
    
d_flipflop uut(.d(d),.clk(clk),.rst(rst),.q(q),.qb(qb));

initial  begin clk=0; forever #10 clk=~clk; end


initial begin
    rst=1;d=0; #8;
    rst=0;
    d=1; #50;
    d=0; #20;
    d=1; #20;
    d=0; #35;
    $finish;
    end
endmodule




