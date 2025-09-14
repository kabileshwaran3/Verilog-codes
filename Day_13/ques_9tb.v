`timescale 1ns / 1ps

module moore_tb;
    reg clk;
    reg rst;
    reg din;
    wire y;
   moore uut(.clk(clk),.rst(rst),.din(din),.y(y));
   
   initial begin clk=0; #2;
   forever  #5 clk =~clk;
   end
   initial begin
  rst=1;
  din=0; #2
  rst=0;
    din = 1; #10;
    din = 0; #10;
    din = 1; #10;
    din = 1; #10;
    din = 0; #10;  
    din = 1; #10;
    din = 0; #10;
    din = 1; #10;
    din = 1; #10;
    din = 0; #10;
    #100
    $finish;
    end
endmodule
