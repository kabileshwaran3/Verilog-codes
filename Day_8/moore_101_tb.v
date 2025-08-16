`timescale 1ns / 1ps

module moore_101_tb;
    reg clk;
    reg din;
    reg rst;
    wire y;

  moore_101 uut(.clk(clk),.din(din),.rst(rst),.y(y));
  
  initial begin clk=0;#2
  forever #5 clk=~clk;
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
        din = 0; #10; 
        $finish;
        end

endmodule
