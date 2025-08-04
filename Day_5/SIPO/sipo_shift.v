`timescale 1ns / 1ps

module sipo_shift(input clk,
                  input rst,
                  input sin,
                  output reg [3:0]sout);

                  
                  
   always @(posedge clk or posedge rst)begin
        if(rst)begin
        sout<=4'b0000;
        end
        else begin

        sout[3]<=sin;
        sout[2]<=sout[3];
        sout[1]<=sout[2];
        sout[0]<=sout[1];
        end
     end
                     
endmodule


