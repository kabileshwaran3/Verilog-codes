`timescale 1ns / 1ps

module up_down_count_tb;
    reg clk;
    reg rst;
    reg mode;
    wire [3:0]count;

  up_down_counter uut(.clk(clk),.rst(rst),.mode(mode),.count(count));
  
    initial begin clk=0;
    forever #10 clk=~clk;
    end
    
    initial begin 
    rst=1;mode=0; #3
    rst=0;
    
    //down counter takes place
    mode=1; #150
    
    //up counter takes place
     rst=1;mode=0; #5
     rst=0; 
    
     
     #300
     $finish;
     end
     
    
endmodule
