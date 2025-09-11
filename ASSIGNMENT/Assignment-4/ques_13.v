//Create a simple ALU module using only blocking assignments.
module simple_alu (
  input  [3:0]  a,      
  input  [3:0]  b,      
    input  [2:0]  opcode, 
    output reg [7:0] result 
);

    always @(*) begin
        case (opcode)
            3'b000: result = a + b;          
            3'b001: result = a - b;         
            3'b010: result = a& b;         
            3'b011: result = a| b;         
            3'b100: result = a ^ b;          
            3'b101: result = ~a;            
          3'b110: result = (a < b) ? 1 : 0; 
            default: result = 0;         
        endcase
    end

endmodule
