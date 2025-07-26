`timescale 1ns / 1ps

/*4:1 Multiplexer
Design using gates and simulate all s1, s0 combinations.*/

module mux4x1(input [1:0]s,
              input [3:0]i,
              output y,
              wire [1:0]n,
              wire [3:0]a);
              
    not x1(n[0],s[0]);
    not x2(n[1],s[1]);
    and x3(a[0],i[0],n[0],n[1]);
    and x4(a[1],i[1],n[0],s[1]);
    and x5(a[2],i[2],s[0],n[1]);
    and x6(a[3],i[3],s[0],s[1]);
    or x7(y,a[0],a[1],a[2],a[3]);
    
    
endmodule

