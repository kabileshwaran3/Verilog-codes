`timescale 1ns / 1ps

module mux2x1(input a,b,s,
              output y);
              
   assign y = (s) ? b:a;           

   
endmodule

//test bench
`timescale 1ns / 1ps

module mux2x1_tb;
    reg a,b,s;
    wire y;

 mux2x1 uut (.a(a),.b(b),.s(s),.y(y));
 
 initial begin
     s=0;
     a=1;
     b=0; #20
     s=1;
     a=1;
     b=0; #20;
     
     #30
     $finish;
     end
 
endmodule