//Simulate a 16-bit register being initialized and incremented inside an always block.
module register (
    input  clk,
    input  rst,
    output reg [15:0] reg_out);
    always @(posedge clk or posedge rst) begin
        if (rst)
            reg_out <= 16'b0;     
        else
            reg_out <= reg_out + 1; 
    end

endmodule
