`timescale 1ns / 1ps

module piso_shift(input clk,
                  input rst,
                  input [3:0]pi,
                  output reg sout);
          reg [2:0]s;
                  
 always @(posedge clk or posedge rst)begin
 if (rst)begin
    s<=3'b000;
    sout<=0;
    end
    else begin
    s[2]<=pi[3];
    s[1]<=pi[2] | s[2];
    s[0]<=pi[1] | s[1];
    sout<=pi[0] | s[0];
    end
    end
    
endmodule

module piso_shift(input [3:0]pi,
                  input clk,load,
                  output reg sout);
         reg [3:0] temp;
         
         always @(posedge clk)begin
         if(load!=1)begin
         temp<=pi;
         end
         else begin
         sout<=temp[0];
         temp=temp>>1;
         end
         end
     endmodule    


