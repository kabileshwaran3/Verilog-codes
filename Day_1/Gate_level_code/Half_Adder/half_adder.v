module half_adder(a,b,sum,carry);
    input a,b;
    output sum,carry;
//Instantiating gates
    xor x1(sum,a,b);
    and x2(carry,a,b);    
endmodule
