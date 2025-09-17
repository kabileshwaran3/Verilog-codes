module counter_sim;
    reg [3:0] counter = 0; 

    initial begin
        repeat (8) begin         
            counter = counter + 1;
          $display("Counter value=%0d", counter);
        end
        $finish;  
    end
endmodule
