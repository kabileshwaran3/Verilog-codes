`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 19:52:22
// Design Name: 
// Module Name: nand_gate
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module nand_gate(out,a,b);
input a,b;
output out;
wire w;
supply1 vdd;
supply0 gnd;
pmos x1(out,a,vdd);
pmos x2(out,b,vdd);
nmos x3(out,a,w);
nmos x4(w,b,gnd);
endmodule
