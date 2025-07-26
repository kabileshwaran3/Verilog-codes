`timescale 1ns / 1ps
/*UDP for Custom Logic
Write a UDP using the given table:
f(x,y,z) = ~(~(x|y) | ~x & z);*/


primitive udp_custom (f, x, y,z);
    input x,y,z;
    output f;
    
    table
    
    //x y z : f
     0 0 0  : 0;
     0 0 1  : 0;
     0 1 0  : 1;
     0 1 1  : 0;
     1 0 0  : 1;
     1 0 1  : 1;
     1 1 0  : 1;
     1 1 1  : 1;
     endtable
         
    
    endprimitive