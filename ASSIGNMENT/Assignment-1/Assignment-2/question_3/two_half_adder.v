`timescale 1ns / 1ps
/*Design a full adder using a half adder.*/

module two_half_adder(input a,
                      input b,
                      input cin,
                      output sum,carry);

    wire x1,x2,x3;
  half_adder ha1(.a(a),.b(b),.sum(x1),.carry(x2));
  half_adder ha2(.a(x1),.b(cin),.sum(sum),.carry(x3));
  or o1(carry,x2,x3);  
    
 endmodule

module half_adder(input a,input b,
                  output sum ,carry);
 assign sum=a^b;
 assign carry=a&b;
 endmodule
                                    