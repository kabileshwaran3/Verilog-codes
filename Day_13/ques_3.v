//Design configurable full adder using parameter construct (Test it for 8 bitand 16 bit full adder)
module ques_3 #(parameter n=8)

   ( input [n-1:0]a,
     input [n-1:0]b,
     input cin,
     output[n-1:0]sum,
     output cout);
     
     assign sum=a^b^cin;
     assign cout=((a&b)| (b&cin) | (a&cin));
     
    
endmodule
