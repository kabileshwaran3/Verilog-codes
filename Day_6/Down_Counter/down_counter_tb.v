`timescale 1ns / 1ps

 module down_counter_tb;
    reg clk;
    reg rst;
    wire [3:0]c_out;

  down_counter uut(.clk(clk),.rst(rst),.c_out(c_out));
   initial begin clk=0;
   forever #5 clk=~clk;
   end
   
   initial begin rst=1; #4 rst=0;
   #200
    
   $finish;
   end

endmodule
