//Design a 4-bit Ripple Carry Adder using structural modeling.
module ripple_carry(input [3:0]a,b,
                    input cin,
                    output [3:0]sum,
                    output cout);
                    
             wire y1,y2,y3;
                    
    full_adder x1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.carry(y1));
    full_adder x2(.a(a[1]),.b(b[1]),.cin(y1),.sum(sum[1]),.carry(y2));
    full_adder x3(.a(a[2]),.b(b[2]),.cin(y2),.sum(sum[2]),.carry(y3));
    full_adder x4(.a(a[3]),.b(b[3]),.cin(y3),.sum(sum[3]),.carry(cout));
    
 endmodule

module full_adder(input a,b,cin,
                  output sum,carry);
                  
         assign sum=a^b^cin;
         assign carry=a&b | b&cin | a&cin;
endmodule


