module mux4to1(
    input [1:0] sel,  
    input  a,
    input  b,
    input  c,
    input  d,
    output y
);

  always@(*) begin
        if (sel == 2'b00)
            y = a;
        else if (sel == 2'b01)
            y = b;
        else if (sel == 2'b10)
            y = c;
        else
            y = d;
    end

endmodule
