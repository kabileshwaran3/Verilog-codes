//Write Verilog code for sequence detector 10110 in Moore - overlapping
`timescale 1ns / 1ps
module moore(
    input clk,
    input rst,
    input din,
    output reg y
);

    parameter s0 = 3'b000,  
              s1 = 3'b001,  
              s2 = 3'b010,  
              s3 = 3'b011,  
              s4 = 3'b100,
              s5 = 3'b101; 

    reg [2:0] state, next_state;

    always @(*) begin
        case(state)
            s0:  next_state = (din == 1) ? s1   : s0;    
            s1:  next_state = (din == 0) ? s2   : s1;     
            s2:  next_state = (din == 1) ? s3   : s0;    
            s3:  next_state = (din == 1) ? s4   : s2;     
            s4:  next_state = (din == 0) ? s5    : s1;    
            s5:  next_state = (din == 1) ? s1   : s2;      
            default: next_state = s0;
        endcase
    end


    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= s0;
        else
            state <= next_state;
    end

   always @(*) begin
        if (state == s5)
            y = 1'b1;
        else
            y = 0;
    end
endmodule
