`timescale 1ns / 1ps
module mealy_1010_tb;
    reg clk;
    reg rst;
    reg din;
    wire y;
mealy_1010 uut(.clk(clk),.rst(rst),.din(din),.y(y));

initial begin clk=0; #2
forever #5 clk=~clk;
end
initial begin
din=0;
rst=1;#2
rst=0;
        din = 1; #10;
        din = 0; #10;
        din = 1; #10; 
        din = 0; #10;
        din = 1; #10; 
        din = 0; #10;
        din = 1; #10;
        din = 1; #10;
        din = 0; #10;
        $finish;
        end
    
endmodule
