module square_wave_gen;
    reg clk = 0;
 initial begin
        forever begin
            #5 clk = ~clk; 
        end
    end
endmodule
