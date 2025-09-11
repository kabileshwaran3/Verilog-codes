//Create a pipelined register using non-blocking assignments.
module pipeline_register (
    input  clk,
    input  rst,
    input  [7:0] data_in,
    output reg [7:0] data_out);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            data_out <= 8'b0;   
        end else begin
            data_out <= data_in; 
        end
    end

endmodule
