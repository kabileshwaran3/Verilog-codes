`timescale 1ns / 1ps

module full_subractor(a,b,bin,d,bor);
    input a,b,bin;
    output d,bor;
    wire w1,w2,w3,w4,w5;
    
xor x1(w1,a,b);
xor x2(d,w1,bin);
not x3(w2,a);
and x4(w3,w2,b);
and x5(w4,b,bin);
and x6(w5,w2,bin);
or  x7(bor,w2,w4,w5);    
    
endmodule
