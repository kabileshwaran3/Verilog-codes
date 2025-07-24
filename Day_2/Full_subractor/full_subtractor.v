`timescale 1ns / 1ps

module full_subtractor(
                       input a,
                       input b,
                       input bin,
                       output diff,
                       output borr);
                       
   assign diff=a^b^bin;
   assign borr=((~a&b)| (b&bin) |(~a&bin));
                                                   
endmodule
