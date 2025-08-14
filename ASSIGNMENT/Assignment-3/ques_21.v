//Design a parametric N-bit 4-to-1 MUX using conditional operator (N = 4 default).

module nbit_4x1 #(
    parameter N = 4)
    (input  [N-1:0] d0, d1, d2, d3,
    input  [1:0]   sel,            
    output [N-1:0] y);

  
    assign y = (sel == 2'b00) ? d0 :
               (sel == 2'b01) ? d1 :
               (sel == 2'b10) ? d2 :
                                 d3; 

endmodule

