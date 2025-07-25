`timescale 1ns / 1ps

module ripple_carry_adder(input [3:0] a,b,
                          output [3:0]s,
                          output [3:0]c,  
                          output cout);
    
    assign c[0]=1'b0;                      
    assign s[0]= a[0]^b[0]^c[0];
    assign c[1]=a[0]&b[0] | b[0]&c[0] | a[0]&c[0];
    assign s[1]=a[1]^b[1]^c[1];
    assign c[2]=a[1]&b[1] | b[1]&c[1] |a[1]&c[1];
    assign s[2]=a[2]^b[2]^c[2];
    assign c[3]=a[2]&b[2] | b[2]&c[2] | a[2]&c[2];
    assign s[3]=a[3]^b[3]^c[3];
    assign cout=a[3]&b[3] | b[3]&c[3] | a[3]&c[3];                    

endmodule
