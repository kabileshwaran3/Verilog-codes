module simple_encoder (
    input [3:0] in,
    output reg [1:0] out);

always @(*) begin
    if (in[3]) begin
        out = 2'b11;
    end else begin
        if (in[2]) begin
            out = 2'b10;
        end else begin
            if (in[1]) begin
                out = 2'b01;
            end else begin
                out = 2'b00;
            end
        end
    end
end

endmodule
