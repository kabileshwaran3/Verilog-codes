`timescale 1ns / 1ps
//Write Verilog code for the diagram below using switch level and gate level.

module switch_gate(input a,b,output out);
    wire w;
    supply1 vdd;
    supply0 gnd;

    pmos(out,vdd,a);
    pmos(out,vdd,b);

    nmos(out,w,a);
    nmos(w,gnd,b);
    
//Gate Level out =~(a&b);
endmodule
