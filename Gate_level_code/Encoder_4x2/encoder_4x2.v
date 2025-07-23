`timescale 1ns / 1ps

module encoder_4x2(a,b,c,d,y,z);
       input a,b,c,d;
        output y;
        output z;
  or x1(y,a,b);
  or x2(z,c,a);
endmodule
  
