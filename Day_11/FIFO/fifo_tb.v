`timescale 1ns/1ps

module fifo_design_tb;
    reg clk;
    reg rst;
    reg wr_en;
    reg rd_en;
    reg cs;
    reg [7:0] data_in;
    wire [7:0] data_out;
    wire full;
    wire empty;
    
    fifo_design  uut (.clk(clk),.rst(rst),.wr_en(wr_en),.rd_en(rd_en),.cs(cs),.data_in(data_in),.data_out(data_out),.full(full),.empty(empty));
    initial clk = 0;
    always #5 clk = ~clk; 
    initial begin
        rst = 1;
        wr_en = 0;
        rd_en = 0;
        cs = 0;
        data_in = 0;
        
        #20;
        rst = 0;
        cs = 1;

        #10;
        wr_en = 1;
        data_in = 8'hA5;
        #10;
        data_in = 8'h5A;
        #10;
        data_in = 8'hFF;
        #10;
        wr_en = 0;
   
        #20;

        rd_en = 1;
        #40;
        rd_en = 0;
 
        #10;
        wr_en = 1;
        data_in = 8'h11;
        #10;
        data_in = 8'h22;
        #10;
        wr_en = 0;
        #10;
        rd_en = 1;
        #40;
        rd_en = 0;

        #20;
        $finish;
    end
        
endmodule
