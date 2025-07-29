`timescale 1ns / 1ps
/*1. Wire and Reg Demonstration
Write a Verilog module where:
• net1 and net2 are wires.
• net1 is assigned a constant value and net2 = net1.
• Display their values using $display.*/

module demonstration;
    wire net1;
    wire net2;
    
    assign net1=1'b1;
    assign net2=net1;
    
    initial begin
    $display("net1=%b,net2=%b",net1,net1);
    end
  
endmodule

//output
// net1=1,net2=1
