`timescale 1ns / 1ps

    module d_flipflop(input d,clk,rst,
                  output reg q,qb);
                  
    always @(posedge clk or posedge rst)
    if (rst) begin q<=0;qb<=1; end
    else  begin
        q<=d;
        qb<=~d;
        end
                  
endmodule