module fifo_design #(parameter depth = 8, data_width = 8)
(
    input clk, 
    input  rst,
    input wr_en,
     input rd_en,
     input cs,
    input  [data_width-1:0] data_in,
    output reg [data_width-1:0] data_out,
    output full,
    output empty);
    
   localparam fifo_clog_mem = $clog2(depth);
   
    reg [data_width-1:0]mem[0:depth-1];
    reg[fifo_clog_mem-1:0]write_pointer;
    reg[fifo_clog_mem-1:0]read_pointer;
    reg[fifo_clog_mem:0]count;
    
    assign full=(count==depth);
    assign empty=(count==0);
    
    always @(posedge clk or posedge rst)begin
    if(rst)begin
        write_pointer<=0;
    end
    else begin
        if(wr_en & cs & !full)begin
            mem[write_pointer] <=data_in;
            write_pointer <=write_pointer+1;
        end
     end
 end
 
always @(posedge clk or posedge rst)begin
    if(rst)begin
        read_pointer<=0;
        data_out<=0;
    end
    else begin
        if(rd_en & cs & !empty)begin
            data_out <=mem[read_pointer];
            read_pointer <=read_pointer+1;
            end
          end
       end    
       
always @(posedge clk or posedge rst) begin
    if (rst) begin
        count <= 0; 
    end else begin
        if (wr_en & cs & !full & !(rd_en & cs & !empty)) begin
             count <= count + 1;
        end
         else if 
        (!(wr_en & cs & !full) & rd_en & cs & !empty) begin
            
            count <= count - 1;
        end else begin
            count <= count;
        end
    end
end

        
    
endmodule  
