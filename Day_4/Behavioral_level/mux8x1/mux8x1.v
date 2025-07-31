`timescale 1ns / 1ps

module mux8x1(input  [7:0]i,
              input  [2:0]s,
              output reg y);
              
//     always @(*)
//     begin
//     case(s)
//     3'b000: y=i[0];
//     3'b001: y=i[1];
//     3'b010: y=i[2];
//     3'b011: y=i[3];
//     3'b100: y=i[4];
//     3'b101: y=i[5];
//     3'b110: y=i[6];
//     3'b111: y=i[7];
//     endcase
//     end
     
     
//`timescale 1ns / 1ps

//module mux8x1(
//    input  wire [7:0] i,
//    input  wire [2:0] s,
//    output reg        y
//);
    integer k;  // loop variable

    always @(*) begin
        y = 0; // default value
        for (k = 0; k < 8; k = k + 1) begin
            if (s == k)
                y = i[k];
        end
    end
endmodule

//endmodule
