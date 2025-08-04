`timescale 1ns / 1ps

module pipo_tb;
    reg [3:0] pi;
    reg clk;
    reg rst;
    wire [3:0]po;

    pipo_shift uut(.pi(pi),.clk(clk),.rst(rst),.po(po));
    initial begin clk=0;
    forever #5 clk=~clk;
    end
    
    initial begin rst=1; pi=4'b0000;#5 rst=0; 
   begin
    pi=4'b1010;#20;
     #100 $finish;
    end
  end
    
endmodule
