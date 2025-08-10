`timescale 1ns / 1ps
module priority_encoder(input [3:0]i,
        input en,
        output reg [1:0]y);

    always @(*)begin
    if(en)begin
    casez(i)
            4'b1???: y = 2'b11; 
            4'b01??: y = 2'b10; 
            4'b001?: y = 2'b01; 
            4'b0001: y = 2'b00; 
            default: y = 2'b00; 

        endcase
        end
        else begin
        y=2'b00;
        end
   end     
endmodule

