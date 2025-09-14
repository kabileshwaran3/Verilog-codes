//Design 8:3 priority encoder using casez statements
module ques_6(
    input [7:0]i,
    output reg [2:0]y);
    always @(i)begin
    casez(i)
    8'b1zzzzzzz : y=3'b111;
    8'b01zzzzzz : y=3'b110;
    8'b001zzzzz : y=3'b101;
    8'b0001zzzz : y=3'b100;
    8'b00001zzz : y=3'b011;
    8'b000001zz : y=3'b010;
    8'b0000001z : y=3'b001;
    8'b00000001 : y=3'b000;
    default: y=3'bzzz;
    endcase
    end
    
endmodule
