`timescale 1ns / 1ps

module demux_1x4(x,s1,s0,y0,y1,y2,y3);
    input x,s1,s0;
    output y0,y1,y2,y3;
    wire n1,n2;
    
    not x1(n1,s0);
    not x2(n2,s1);
    
    and x3(y0,x,n1,n2);
    and x4(y1,x,n1,s0);
    and x5(y2,x,s1,n2);
    and x6(y3,x,s1,s0);
endmodule
