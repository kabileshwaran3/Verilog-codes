//Design a module that uses blocking assignments to assign two values in order.
module blocking (
    input  clk,
    input  rst,
    output reg  a,
    output reg  b);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            a = 0;
            b = 0;
        end else begin
            a = 10;
            b = a + 5; 
        end
    end

endmodule
