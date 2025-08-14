//Implement a 4-to-2 encoder using conditional operator ?:
`timescale 1ns / 1ps

module encoder_4x2ass(input[3:0]a,[1:0]y);
  assign y=(a[0]==1)? 2'b00:
    (a[1]==1)?2'b01:
    (a[2]==1)?2'b10:
    (a[3]==1)?2'b11:2'b00;
    
    
endmodule


