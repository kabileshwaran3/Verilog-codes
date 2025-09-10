//Modify the above to use non-blocking assignments and compare the outputs.
module non_blocking (
    input  clk,
    input  rst,
    output reg  a,
    output reg  b);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            a <= 0;
            b <= 0;
        end else begin
            a <= 10;
            b <= a + 5; 
        end
    end

endmodule