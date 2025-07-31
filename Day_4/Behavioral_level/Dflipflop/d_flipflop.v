`timescale 1ns / 1ps

module d_flipflop(input d,clk,rst,
                  output reg q,qb);
                  
    always @(posedge clk)
    begin
        q=d;
        qb=~d;
        end
                  
endmodule