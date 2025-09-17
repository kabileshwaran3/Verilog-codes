module mux2to1(
    input  a,
    input  b,
    input  sel,
    output  y);

  always(*) begin
        if (sel) 
            y = b;
        else 
            y = a;
    end

endmodule
