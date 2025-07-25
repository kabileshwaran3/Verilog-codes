`timescale 1ns / 1ps


module decoder3x8(input  [2:0]a,
                  output [7:0]y);

    assign y[0]=(a ==3'b000)? 1'b1:1'b0;
    assign y[1]=(a ==3'b001)? 1'b1:1'b0;
    assign y[2]=(a ==3'b010)? 1'b1:1'b0;
    assign y[3]=(a ==3'b011)? 1'b1:1'b0;
    assign y[4]=(a ==3'b100)? 1'b1:1'b0;
    assign y[5]=(a ==3'b101)? 1'b1:1'b0;
    assign y[6]=(a ==3'b110)? 1'b1:1'b0;
    assign y[7]=(a ==3'b111)? 1'b1:1'b0;
    
endmodule
