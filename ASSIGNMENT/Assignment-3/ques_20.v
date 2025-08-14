//Write a 1-to-4 demultiplexer using assign statements and enable logic.
module demux_1to4 ( input  din,         
    input  [1:0] sel,    
    input  en,          
    output [3:0] y );

    assign y[0] = (en & (sel == 2'b00)) ? din : 1'b0;
    assign y[1] = (en & (sel == 2'b01)) ? din : 1'b0;
    assign y[2] = (en & (sel == 2'b10)) ? din : 1'b0;
    assign y[3] = (en & (sel == 2'b11)) ? din : 1'b0;

endmodule
