module bus_decoder (
  input  [1:0] in,   
    output reg [3:0] out);

always @(*) begin
    case (addr)
        2'b00: in =4'b0001;
        2'b01: in =4'b0010;
        2'b10: in= 4'b0100;
        2'b11: in = 4'b1000;
        default:in =4'b0000;
    endcase
end
endmodule
