`timescale 1ns / 1ps

//CMOS Inverter with NMOS/PMOS
//Implement a CMOS inverter using supply1, supply0, nmos, pmos.

module cmos_inverter(input in,output out);
    supply1 vdd;
    supply0 gnd;
  
  pmos(out,vdd,in);
  nmos(out,gnd,in);
                          
endmodule
