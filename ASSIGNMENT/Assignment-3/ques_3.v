/*Write a module using delay in assign statement: assign #5 sum = a + b; and
simulate the output using $monitor.*/
`timescale 1ns / 1ps

module delay_assign(input a, input b, output y);
    assign #5 y = a + b;
  initial begin
    $monitor("%0time: a=%0d, b=%0d, y=%0d", $time, a, b, y); end
endmodule