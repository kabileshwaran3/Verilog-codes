`timescale 1ns / 1ps

module piso_tb;
    reg clk;
    reg rst;
    reg [3:0]pi;
    wire sout;

  piso_shift uut (.clk(clk),.rst(rst),.pi(pi),.sout(sout));
  
initial begin clk=0;
forever #5 clk=~clk; end

 initial begin rst=1; pi=4'b0000;#2 rst=0; 
   begin
    pi=4'b1010;#10;
//    pi=4'b0000;
     #100 $finish;
    end
  end
    

endmodule


module piso_tb;
    reg clk;
    reg load;
    reg [3:0]pi;
    wire sout;
    
   piso_shift uut(.clk(clk),.load(load),.pi(pi),.sout(sout));
    initial begin clk=0;
    forever #5 clk=~clk;
    end
    initial begin
    load=0;
    pi=1010; #10
    load=1; #10
    load=1; #10
    load=1; #10
    load=1; #10
    load=0;
    pi=1101; #10
    load=1; #40;
    $finish;
    end
   endmodule 