`timescale 1ns / 1ps

//Switch-Level NAND Implement a 2-input NAND using nmos and pmos switches manually.

module cmos_nand(input a,b,
                 output y,
                 wire w);
    supply1 vdd;
    supply0 gnd;
    
    pmos(y,vdd,a);
    pmos(y,vdd,b);
    
    nmos(w,gnd,b);
    nmos(y,w,a);    
    
    

endmodule
