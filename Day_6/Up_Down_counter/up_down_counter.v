`timescale 1ns / 1ps

module up_down_counter(input clk,
                       input rst,
                       input mode,
                       output reg[3:0]count);
                       
     always@(posedge clk or posedge rst)
     begin
     if(rst)begin
     count<=0;end
     else if(mode)
     count<=count-1;
     else
     count<=count+1;
     end
                       

    
endmodule
