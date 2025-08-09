`timescale 1ns / 1ps
//Implement logical left and right shift on a 4-bit input vector using assign.
module shift_le_ri(input [3:0]a,
                   output [3:0]le,
                   output [3:0]ri);
 assign le= a<<1;
 assign ri= a>>1;
    
endmodule

//test bench

`timescale 1ns / 1ps

module tb_shift_le_ri;

    reg  [3:0] a;     
    wire [3:0] le;  
    wire [3:0] ri;    

    shift_le_ri uut (
        .a(a),
        .le(le),
        .ri(ri));
   initial begin
        $monitor("Time=%0t  a=%b  le=%b  ri=%b", 
                 $time, a, le, ri);
        a = 4'b0001; #10;
        a = 4'b1010; #10;
        a = 4'b1111; #10; 
        a = 4'b0101; #10; 

        $finish;
    end

endmodule
