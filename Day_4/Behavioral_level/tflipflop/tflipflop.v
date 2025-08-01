`timescale 1ns / 1ps

module tflipflop(input t,clk,rst,
                 output reg q);
                 
always @(posedge clk or posedge rst)
    if(rst==1)begin q<=1; end
    else if(t==0)begin
    q<=q; end
    else begin
    q<=~q;
    end
endmodule
