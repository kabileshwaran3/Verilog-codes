//Implement a module that uses initial for setup and always for functional updates.
module setup (
    input  clk,
    input  rst,
    input  inc,
    output reg [7:0] counter);
    initial begin
        counter = 0;
    end

    always @(posedge clk or posedge rst) begin
        if (rst)
            counter <= 0;         
        else if (inc)
            counter <= counter + 1; 
            end

endmodule
