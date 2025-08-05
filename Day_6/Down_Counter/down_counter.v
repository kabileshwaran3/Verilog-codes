module down_counter(input clk,
                        input rst,
                        output reg [3:0]c_out);
                        
    always @(posedge clk or posedge rst)begin
    if(rst)
       c_out<=0;       
    else begin
      c_out<=c_out-1;           
     end
     end
    
endmodule
