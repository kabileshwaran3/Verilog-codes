`timescale 1ns / 1ps
module priority_tb;
    reg [3:0]i;
    reg en;
    wire [1:0]y;

    priority_encoder uut(.i(i),.en(en),.y(y));
    initial begin
    en=0; #1;
        en = 1;
        i = 4'b0001; #10; 
        i = 4'b0010; #10;         
        i = 4'b0100; #10;         
        i = 4'b1000; #10;
        $finish;   
    end
    
endmodule
