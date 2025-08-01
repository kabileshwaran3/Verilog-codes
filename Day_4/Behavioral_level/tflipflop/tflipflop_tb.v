`timescale 1ns / 1ps

module tflipflop_tb;
    reg t,clk,rst;
    wire q;

 tflipflop uut(.t(t),.clk(clk),.rst(rst),.q(q));
 initial begin clk=0;
 forever #5 clk=~clk; end

initial begin
    rst=1;t=0;  #1;
    rst=0;
    @(posedge clk)
    t=1;  #10;
    t=0;  #10;
    t=0;  #10;
    t=1;  #10;
    $finish;
    end
endmodule
