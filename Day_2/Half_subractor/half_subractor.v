`timescale 1ns / 1ps

module half_subractor(input a,
                      input b,
                      output diff,
                      output borr);
                      
    assign diff=a^b;
    assign borr=~a&b;
endmodule
