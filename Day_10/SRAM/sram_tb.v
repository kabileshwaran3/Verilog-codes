`timescale 1ns / 1ps
module single_port_ram_tb;

  reg clk;
  reg en;
  reg wr;
  reg rst;
  reg [2:0] addr;
  reg [7:0] data_in;
  wire [7:0] data_out;
  
  sram uut(.clk(clk),.en(en),.wr(wr),.rst(rst),.addr(addr),.data_in(data_in),.data_out(data_out));
  
 initial begin
 clk=0;
 forever  #5 clk =~clk;
 end
 initial begin
  rst = 1; en = 0; wr = 0; addr = 0; data_in = 8'h00;
   #10 
   rst=0;
   
    #10 en = 1; wr = 1; addr = 3'b000; data_in = 8'hA5;
    #10 addr = 3'b001; data_in = 8'h5A;
    #10 addr= 3'b010; data_in = 8'hFF;
    
    
    #10 wr = 0; addr = 3'b000;
    #10 addr = 3'b001;
    #10 addr = 3'b010;
    
    #10 en = 1; wr = 1;
    #10 addr = 3'b001; data_in = 8'h5A;
    #10 addr= 3'b010; data_in = 8'hFF;

    
    #10 en = 0;
      #20 $finish;
  end
 
    
  endmodule
