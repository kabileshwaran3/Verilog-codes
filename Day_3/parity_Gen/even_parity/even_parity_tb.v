`timescale 1ns / 1ps

module even_parity_tb;
    reg[3:0]a;
    wire y;
    
even_parity uut(.a(a),.y(y));
initial begin
    //test case
    a=4'b0011; #20;
    a=4'b1110; #20;
    a=4'b0011; #20;
    a=4'b1111; #20;
    
    $finish;
    end    
endmodule
