`timescale 1ns / 1ps

//16.Tristate 2:1 MUX  Use bufif0 and bufif1 to design and test.

module tristate_2x1_mux(input  s,
                        input i0,i1,
                        output y);
                        wire y1,y2;
    bufif0 (y1,i0,s);
    bufif1 (y2,i1,s);
    or (y,y1,y2);
    

  endmodule
