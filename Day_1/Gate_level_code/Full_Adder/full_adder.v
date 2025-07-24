`timescale 1ns / 1ps

module full_adder(s,c,a,b,cin);
    input a,b,cin;
    output s,c;
    wire w1,w2,w3;
    
xor x1(w1,a,b);
xor x2(s,w1,cin);
and x3(w2,a,b);
and x4(w3,w1,cin);
or  x5(cin,w2,w3);    
endmodule
