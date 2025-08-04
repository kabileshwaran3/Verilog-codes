`timescale 1ns / 1ps
module siso_shift(input clk,
                 input rst,
                 input sin,
                 output reg sout);
      reg s0,s1,s2;
always @ (posedge clk  or posedge rst)begin
if(rst)begin
   s0<=0; 
   s1<=0;
   s2<=0;
   sout<=0;
   end
    
else begin
   s2<=s1;
   s1<=s0;
   s0<=sin;
   sout<=s2;
   end
  end
    
endmodule


///*concatenation8
`timescale 1ns / 1ps
module siso_shift(input clk,
                  input rst,
                  input sin,
                  output  sout);
      reg [3:0]s;
      assign sout=s[0];
 always @ (posedge clk  or posedge rst)begin
 if(rst)begin
    s<=4'b0000;
    end
    
 else begin
    s<={sin,s[3:1]};  // nbit right shift 
    end               //temp<={din,temp [(N-1:1]};
   end
    
endmodule

