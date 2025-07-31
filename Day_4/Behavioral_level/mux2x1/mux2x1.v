`timescale 1ns / 1ps

module mux2x1(input[1:0]i,
              input s,
              output reg y);
  // case statement
    always @(*)
    begin
    case(s)
    1'b0:y=i[0];
    1'b1:y=i[1];
    endcase
    end
    //If else statement
    always @(*)
    begin
    if(s)
    y=i[1];
    else
    y=i[0];
    end
    
    
endmodule
