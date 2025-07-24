`timescale 1ns / 1ps

module demux1x4 ( input   d,
                  input   s0,
                  input   s1,
                  output  y0,
                  output  y1,
                  output  y2,
                  output  y3);
                  
    assign y0 = d & ~s1 & ~s0;
    assign y1 = d & s1 &  ~s0;
    assign y2 = d &  ~s1 & s0;
    assign y3 = d &  s1 &  s0;
endmodule
