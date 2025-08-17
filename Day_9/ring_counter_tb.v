`timescale 1ns/1ps
module ring_counter_tb;
    reg clk, rst;
    wire [3:0] q;

    ring_counter uut (.clk(clk),.rst(rst),.q(q));

 initial begin clk=0; #2
 forever  #5 clk =~clk;
 end

    initial begin
        clk = 0;
        rst = 1;
        #2;
        rst = 0;
        #80;
      $finish;
    end

endmodule
