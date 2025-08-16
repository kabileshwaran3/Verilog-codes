`timescale 1ns / 1ps
module moore_101(input clk,
                 input rst,
                 input din,
                 output reg y);

    parameter s0=2'b00,
              s1=2'b01,
              s2=2'b10,
              s3=2'b11;
        reg [1:0]state,next_state;
     
   always @(*)begin
    case(state)
    s0: begin
        if( din ==1)
         next_state=s1;
         else
         next_state=s0;
      end 
       
          s1: begin
        if( din ==0)
         next_state=s2;
         else
         next_state=s1;
      end 
      
          s2: begin
        if( din ==1)
         next_state=s3;
         else
         next_state=s0;
      end 
      
          s3: begin
        if( din ==1)
         next_state=s2;
         else
         next_state=s0;
      end 
      default :next_state=s0;
    endcase
 end     
     
     
  always @(posedge clk or posedge rst) begin
        if (rst)
            state <= s0;
        else
            state <= next_state;
    end
    
   always @(*) begin
        if (state == s3)
            y = 1'b1;
        else
            y = 1'b0;
    end
   
              
endmodule
