`timescale 1ns / 1ps

module odd_parity_tb;
    reg [3:0]a;
    wire y;
    
odd_parity uut(.a(a),.y(y));
    
    initial begin
    //test case
    a=4'b1101; #20;
    a=4'b0010; #20;
    a=4'b1010; #20;
    a=4'b1111; #20;
    $finish;
    end
endmodule
