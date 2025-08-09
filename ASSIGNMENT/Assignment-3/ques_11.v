/*Write a module to detect all-zero and all-one using:
assign zero = ~(|x); assign one = &x; */

`timescale 1ns / 1ps

module all_zero(input[6:0]x,
                output zero,
                output one);

    assign zero=~(|x);
    assign one =&x;
endmodule

//test bench

`timescale 1ns/1ps

module tb_all_zero;

    reg  [6:0] x;     
    wire zero, one;   
    all_zero dut (
        .x(x),
        .zero(zero),
        .one(one)
    );

    initial begin
        $monitor("Time=%0t  x=%b  zero=%b  one=%b", 
                 $time, x, zero, one);

        x = 7'b0000000; #10;
        x = 7'b1111111; #10;
        x = 7'b1010101; #10;
        x = 7'b0000001; #10;
        x = 7'b1111110; #10;

        $finish;
    end

endmodule

//output

//Time=0  x=0000000  zero=1  one=0
//Time=10000  x=1111111  zero=0  one=1
//Time=20000  x=1010101  zero=0  one=0
//Time=30000  x=0000001  zero=0  one=0
