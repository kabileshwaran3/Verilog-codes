//`timescale 1ns / 1ps
///*2. Comparison of Wire and Reg
//Implement two separate modules:
//• One using wire and assign
//• Another using reg and procedural assignment
//Compare their simulation behavior.*/
module comparison;
    wire a;
    wire b;
    
    assign a=1'b1;
    assign b=a;
    initial begin
        $display ("a=%b,b=%b",a,b);
        end
endmodule

//output 
// a=1,b=1

//ii)
module comparison;
    reg a;
    reg b;
   initial begin
   a=1'b1;
   b=a;
   end 
    
endmodule   

//output
// a=1,b=1 

