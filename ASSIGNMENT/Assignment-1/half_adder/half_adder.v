`timescale 1ns / 1ps

//1-Bit Full Adder Using Gates 
//Write structural code using xor, and, or gates for a full adder.

module half_adder(input a,b,
                  output sum,
                  output carry);
                  
    xor(sum,a,b);
    and(carry,a,b);                 
    
endmodule
