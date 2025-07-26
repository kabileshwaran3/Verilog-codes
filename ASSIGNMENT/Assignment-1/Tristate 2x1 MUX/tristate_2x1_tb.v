`timescale 1ns / 1ps

module tristate_2x1_tb;
    reg i0,i1;
    reg s;
    wire y;

    tristate_2x1_mux uut(.i0(i0),.i1(i1),.s(s),.y(y));
    initial begin
    //test case
        i0=1; i1=1; s=1; #20;
        i0=1; i1=1; s=0; #20;
        i0=1; i1=0; s=0; #20;
        i0=1; i1=1; s=1; #20;
        $finish;
        end
     
endmodule
