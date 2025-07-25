`timescale 1ns / 1ps

module binary_to_gray_tb;
    reg [3:0]b;
    wire [3:0]g;
    
binary_to_gray uut(.b(b),.g(g));
    initial begin
    //test case
    b=4'b1101; #20;
    b=4'b1111; #20;
    b=4'b0101; #20;
    b=4'b0011; #20;
    
    $finish;
    end
endmodule
