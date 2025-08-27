module sram(
            input clk,
            input [7:0]data_in,
            input wr,en,rst,
            input[2:0]addr,
            output reg[7:0]data_out);
            
        reg[7:0]mem[7:0];
        
   always @(posedge clk)begin
   if(rst)begin
         data_out=0;
    end
   else  begin
           if(en==1 && wr==1)begin
           mem[addr]<=data_in;//write operation
           end
           else if(en==1 && wr==0)begin
           data_out<=mem[addr];//read operation
           end
           else
           data_out=8'bz;
           end
         end
                 
endmodule            
