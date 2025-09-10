//Design a clock generator using initial and forever loop.
module clk_generator (
    output reg clk);
    initial begin
        clk = 0;          
        forever begin
            #5 clk = ~clk; 
        end
    end

endmodule

