module mux_4to1_casex (
    input  [3:0] data,  
    input  [1:0] sel,   
    output reg out);

always @(*) begin
    casex (sel)
        2'b00: out = data[0];
        2'b01: out = data[1];
        2'b10: out = data[2];
        2'b11: out = data[3];
        default: out = 1'b0; 
    endcase
end
endmodule
