`timescale 1ns / 1ps
module dual_port_ram_tb;

  reg clk;
  reg wr_a, wr_b;
  reg [2:0] addr_a, addr_b;
  reg [7:0] data_a, data_b;
  wire [7:0] data_out_a, data_out_b;

  dual_port_ram uut ( .clk(clk),.data_a(data_a),.data_b(data_b),.addr_a(addr_a), .addr_b(addr_b),.wr_a(wr_a),.wr_b(wr_b),.data_out_a(data_out_a),.data_out_b(data_out_b)
  );
  
   always #5 clk=~clk;
   initial begin
    clk = 0; wr_a = 0; wr_b = 0; addr_a = 0; addr_b = 0; data_a = 0; data_b = 0;
    
      #20; wr_a=1; addr_a=3'b000; data_a=8'b10101001;
      #20; wr_b=1; addr_b=3'b001; data_b=8'b10111101;
      #20; wr_a = 1; addr_a = 3'b010; data_a = 8'b11001100;
      

  
  
      #20; wr_a=0; addr_a=3'b000;
      #20; wr_b=0; addr_b=3'b001;
      
      #30
      $finish;
    end  
  

endmodule
