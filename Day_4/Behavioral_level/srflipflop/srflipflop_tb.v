`timescale 1ns / 1ps
module srflipflop_tb;
    reg s,r,rst;
    reg clk;
    wire q;
    
sr_flip_flop uut(.s(s),.r(r),.clk(clk),.rst(rst),.q(q));
initial begin clk=0;
  forever #10 clk=~clk; end

initial begin
rst=1; s=0; r=0; #8;
rst=0;
    @(posedge clk)
     s=0; r=0; #20;
     s=1; r=0; #20;
     s=0; r=1; #20;
     s=1; r=1; #20;
$finish;
end    

    
endmodule
