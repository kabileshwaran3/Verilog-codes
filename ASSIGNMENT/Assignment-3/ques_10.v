`timescale 1ns / 1ps
//Implement a 9-bit even parity generator using ^x and ~:assign ep = ^x; assign op = ~ep;

module even_parity(input [8:0]x,
                   output ep,
                   output op);
                   
    assign ep= ^x;
    assign op=~ep;
    
endmodule
