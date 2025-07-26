`timescale 1ns / 1ps

module cmosinverter_tb;
    reg in;
    wire out;
    
cmos_inverter uut(.in(in),.out(out));
initial begin
    in=0; #20;
    in=1; #20;
    $finish;
    end
endmodule
