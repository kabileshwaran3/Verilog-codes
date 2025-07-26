`timescale 1ns / 1ps

module mux4x1_tb;
    reg [3:0]i;
    reg[1:0]s;
    wire y;
    
 mux4x1 uut (.i(i),.s(s),.y(y));
 initial begin
    i[0]=1; i[1]=0; i[2]=1; i[3]=0;
    //test case 
    s[0]=0; s[1]=0; #20;
    s[0]=0; s[1]=1; #20;
    s[0]=1; s[1]=0; #20;
    s[0]=1; s[1]=1; #20;
    $finish;
    end

   
endmodule
