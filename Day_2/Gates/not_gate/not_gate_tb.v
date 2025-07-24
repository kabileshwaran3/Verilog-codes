`timescale 1ns / 1ps

module not_gate_tb;
    reg a;
    wire y;
 
 not_gate uut(.a(a),.y(y));
 initial begin
  //test case
    a=0; #20;
    a=1; #20;
    $finish;
    end

endmodule
