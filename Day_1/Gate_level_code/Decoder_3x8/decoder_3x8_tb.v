`timescale 1ns / 1ps

module decoder_3x8_tb;
    reg a,b,c;
    wire y0,y1,y2,y3,y4,y5,y6,y7;
 
decoder_3x8 uut(.a(a),.b(b),.c(c),.y0(y0),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5),.y6(y6),.y7(y7));
  initial begin
    $dumpfile("demux1_8.vcd");
    $dumpvars(1,demux1_8_tb);
  end
    initial begin
    //test case
     a=0; b =0; c = 0; #4;
    a=0; b = 0; c = 1; #4;
    a=0; b = 1; c = 0; #4;
    a=0; b = 1; c = 1; #4;
    a=1; b = 0; c = 0; #4;
    a=1; b = 0; c = 1; #4;
    a=1; b = 1; c = 0; #4;
    a=1; b = 1; c = 1; #4;
    $finish;
    end

endmodule
