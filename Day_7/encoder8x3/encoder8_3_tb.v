`timescale 1ns / 1ps
module encoder8_3_tb;
    reg [7:0]i;
    reg en;
    wire [2:0]y;
        
  encoder8_3 uut(.i(i),.en(en),.y(y));
  initial begin
  en=0; #1;
  en=1;         
        i = 8'b00000100; #10;       
        i = 8'b00001000; #10;         
        i = 8'b00010000; #10;        
        i = 8'b00100000; #10;        
        i = 8'b01000000; #10;       
        i = 8'b10000000; #20;
        i = 8'b00000001; #20
        $finish;
        end
endmodule
