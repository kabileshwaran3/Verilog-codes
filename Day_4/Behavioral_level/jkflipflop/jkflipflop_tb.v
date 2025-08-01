`timescale 1ns / 1ps

module jkflipflop_tb;
    reg j,k,clk,rst;
    wire q;
    
jk_flipflop uut(.j(j),.k(k),.clk(clk),.rst(rst),.q(q));

initial begin clk=0;
forever  #10 clk=~clk;end


initial begin
    rst=1; j=0; k=0;  #7;
    rst=0;
   @(posedge clk)
   j=0; k=0; #20;
   j=0; k=1; #20;
   j=1; k=0; #20;
   j=1; k=1; #20;
   $finish;
   end
   
endmodule
