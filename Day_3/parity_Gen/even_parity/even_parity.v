`timescale 1ns / 1ps

module even_parity(input [3:0]a,
                   output y); 
                   
   // assign y= ~a; //bitwise operator
    assign y= (^a == 0)? 1'b0 : 1'b1; // conditional operator
                       
endmodule
