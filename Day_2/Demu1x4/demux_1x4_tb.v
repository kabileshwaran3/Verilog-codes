`timescale 1ns / 1ps

module demux_1x4_tb;
                    reg d;
                    reg s0;
                    reg s1;
                    wire y0;
                    wire y1;
                    wire y2;
                    wire y3;

demux1x4 uut(.d(d),.s0(s0),.s1(s1),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
 
 initial begin
 
        d = 0;
        s0=0; s1=0; #20;
        s0=0; s1=1; #20;
        s0=1; s1=0; #20;
        s0=1; s1=1; #20;
        
        d = 1;
        s0=0; s1=0; #20;
        s0=0; s1=1; #20;
        s0=1; s1=0; #20;
        s0=1; s1=1; #20;

        $finish;
        end
       
endmodule
