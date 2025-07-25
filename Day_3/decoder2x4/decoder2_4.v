`timescale 1ns / 1ps

module decoder2_4(input[1:0]a,
                  output[3:0]y);
                   
    assign y[0]= (a == 2'b00)? 1'b1:1'b0; 
    assign y[1]= (a == 2'b01)? 1'b1:1'b0;
    assign y[2]= (a == 2'b10)? 1'b1:1'b0;
    assign y[3]= (a == 2'b11)? 1'b1:1'b0;
     
endmodule
