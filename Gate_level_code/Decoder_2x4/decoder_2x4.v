`timescale 1ns / 1ps

module decoder_2x4(d1,d0,y3,y2,y1,y0);
    input d1,d0;
    output y3,y2,y1,y0;
    wire w1,w2;
    
and x1(y3,d1,d0);
and x2(y2,d1,w1);
and x3(y1,d0,w2);
and x4(y0,w1,w2);
not x5(w1,d0);
not x6(w2,d1);    
endmodule


