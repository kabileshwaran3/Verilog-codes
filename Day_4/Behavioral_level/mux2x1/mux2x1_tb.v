`timescale 1ns / 1ps

module mux2x1_tb;
    reg[1:0]i;
    reg s;
    wire y;
    
mux2x1 uut(.i(i),.s(s),.y(y));

initial begin
    i=2'b01;
    s=1'b0;  #20;
    s=1'b1;  #20; 
    $finish;
    end   
endmodule
