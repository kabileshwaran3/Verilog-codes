`timescale 1ns / 1ps

module and_switch_leveltb();
    reg a,b;
    wire s;
    and_switch_level uut(.a(a),.b(b),.s(s));
    initial begin
        a=0;b=0;#10
        a=0;b=1;#10
        a=1;b=0;#10
        a=1;b=1;#10
        $finish;
    end
endmodule