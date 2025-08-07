/*Create a 4-bit full adder using only assign statement:
assign {c_out, sum} = a + b + c_in; */

module full_adder_4bit (
    input  wire [3:0] a,
    input  wire [3:0] b,
    input  wire       c_in,
    output wire [3:0] sum,
    output wire       c_out);

  
    assign {c_out, sum} = a + b + c_in;

endmodule