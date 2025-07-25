`timescale 1ns / 1ps

module decoder3x8_tb;
    reg [2:0]a;
    wire[7:0]y;
decoder3x8 uut(.a(a),.y(y));
initial begin
$dumpfile("decoder3x8.vcd");
$dumpvars(0,decoder3x8_tb);

 //test case
    a=3'b000; #20;
    a=3'b001; #20;
    a=3'b010; #20;
    a=3'b011; #20;
    a=3'b100; #20;
    a=3'b101; #20;
    a=3'b110; #20;
    a=3'b111; #20;
    $finish;
    end
    
endmodule
