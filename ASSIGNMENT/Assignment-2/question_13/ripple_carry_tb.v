`timescale 1ns / 1ps

module ripple_carry_tb;
    reg [3:0]a,b;
    reg cin;
    wire[3:0]sum;
    wire cout;
    

   ripple_carry uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
   initial begin 
   //test case
    cin=0;
    a=4'b1101;  b=4'b1010; #20;
    a=4'b0011;  b=4'b1101; #20;
    a=4'b0001;  b=4'b0101; #20;
    a=4'b1111;  b=4'b0011; #20;
    $finish;
    end
endmodule

