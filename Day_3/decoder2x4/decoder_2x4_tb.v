`timescale 1ns / 1ps

module decoder_2x4_tb;
    reg[1:0]a;
    wire[3:0]y;
    
decoder2_4 uut(.a(a),.y(y));

initial begin
$dumpfile("decoder2_4.vcd");
$dumpvars(0,decoder_2x4_tb);

//test case 
    a=2'b00; #20;
    a=2'b01; #20;
    a=2'b10; #20;
    a=2'b11; #20;
    $finish;
    end

endmodule
