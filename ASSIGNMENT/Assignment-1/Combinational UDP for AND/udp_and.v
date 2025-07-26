`timescale 1ns / 1ps
//Combinational UDP for AND
//Write and simulate a UDP for 2-input AND gate.

primitive udp_and (y, a, b);
    output y;
    input a, b;

    table
    // a  b : out
       0  0 : 0;
       0  1 : 0;
       1  0 : 0;
       1  1 : 1;    
    endtable
endprimitive

