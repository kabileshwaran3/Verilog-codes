`timescale 1ns / 1ps

module full_sub_tb;
    reg a,b,bin;
    wire diff,borr;
    integer i;
    
full_subtractor uut(.a(a),.b(b),.bin(bin),.diff(diff),.borr(borr));    
initial begin

    $dumpfile("full_subtractor.vcd");
    $dumpvars(0,full_sub_tb);
//     $monitor("%0t\t %b %b  %b  |  %b    %b", $time, a, b, bin, sum, cout);
     
     for(i=0; i<=7; i=i+1)
     begin
     {a,b,bin}=i;
     #10;
     end
     $finish;
     
   end
    
endmodule
