`timescale 1ns / 1ps

module mux4x1(input[3:0]i,
              input [1:0]sel,
              output y);

    assign y= (sel==2'b00) ? i[0]:
              (sel==2'b01) ? i[1]:
              (sel==2'b10) ? i[2]: i[3];
endmodule

//test bench

module mux4x1_tb;
          reg[3:0]i;
          reg[1:0]sel;
          wire y;

    mux4x1 uut(.i(i),.sel(sel),.y(y));
    
    initial begin
    
     i=4'b1010;
    sel=2'b00; #10;
    sel=2'b01; #10;
    sel=2'b10; #10;
    sel=2'b11; #10;
    
    #20
    $finish;
    end
endmodule
