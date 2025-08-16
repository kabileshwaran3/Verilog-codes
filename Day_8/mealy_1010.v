`timescale 1ns / 1ps
module mealy_1010(input clk,
                  input rst,
                  input din,
                  output reg y);
                  
 parameter s0=2'b00,
           s1=2'b01,
           s2=2'b10,
           s3=2'b11;
           
     reg [1:0]state,next_state;
     
 always @(*)begin
       next_state = state; 
        y = 0;  
     if(state==s0)begin
     if (din==1)
     next_state=s1;
     else 
     next_state=s0;
   end
   
     else if(state==s1)begin
     if (din==0)
     next_state=s2;
     else 
     next_state=s1;
   end
   
      else if(state==s2)begin
     if (din==1)
      next_state=s3;
     else 
     next_state=s0;
   end
   
     else if(state==s3)begin
     if (din==0)begin
     y=1;
     next_state=s0;
     end
     else 
     next_state=s1;
   end 
 end  
 always @(posedge clk or posedge rst)begin
     if(rst)begin
     state<=s0;
     end
     else begin
     state<=next_state;
     end
 end
                       
endmodule
