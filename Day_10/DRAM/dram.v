`timescale 1ns / 1ps
module dual_port_ram(
    input clk,
    input [7:0]data_a,
    input [7:0]data_b,
    input [2:0]addr_a,
    input [2:0]addr_b,
    input wr_a,
    input wr_b,
    output reg[7:0]data_out_a,
    output reg[7:0]data_out_b);
    
reg[7:0]mem[7:0];
always @(posedge clk)begin
    if(wr_a)
        mem[addr_a]<=data_a;
    else 
        data_out_a<=mem[addr_a];
        end   
always @(posedge clk)begin
    if(wr_b) 
        mem[addr_b]=data_b;
     else
        data_out_b=mem[addr_b];
        end

endmodule
