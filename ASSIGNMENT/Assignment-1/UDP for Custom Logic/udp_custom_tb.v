`timescale 1ns / 1ps

module udp_custom_tb;
    reg x,y,z;
    wire f;
    
 udp_custom uut(.x(x),.y(y),.z(z),.f(f));
 initial begin 
    //test case 
     x=0; y=0; z=0; #20;
     x=0; y=0; z=1; #20;
     x=0; y=1; z=0; #20;
     x=0; y=1; z=1; #20;
     x=1; y=0; z=0; #20;
     x=1; y=0; z=1; #20;
     x=1; y=1; z=0; #20;
     x=1; y=1; z=1; #20;
     $finish;
     end
     
endmodule
