`timescale 1ns / 1ps

module even_parity(input [8:0]x,
                   output ep,
                   output op);
                   
    assign ep= ^x;
    assign op=~ep;
    
endmodule
