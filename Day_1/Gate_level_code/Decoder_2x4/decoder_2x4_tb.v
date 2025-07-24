`timescale 1ns / 1ps

module decoder_2x4_tb;
    reg d1,d0;
    wire y3,y2,y1,y0;
    
decoder_2x4 uut(.d1(d1),.d0(d0),.y3(y3),.y2(y2),.y1(y1),.y0(y0));

initial begin
//test case
    d1 = 0; d0 = 0; #20;
    d1 = 0; d0 = 1; #20;
    d1 = 1; d0 = 0; #20;
    d1 = 1; d0 = 1; #20;
     $finish;
  end
 endmodule
