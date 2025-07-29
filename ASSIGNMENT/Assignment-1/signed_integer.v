`timescale 1ns / 1ps
/*Signed Integer Simulation
Use integer i;
Assign positive and negative values and simulate signed behavior.*/

module signed_integer;
    integer i1;
    integer i2;
initial begin
    i1=1;
    i2=-4;
    $display("positive=%0d,negative=%0d",i1,i2);
    end
endmodule

//output

//positive=1,negative=-4

