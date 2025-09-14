module ques_10;
  reg signed [7:0] i;
  initial begin
    repeat (20) begin
      i = $random;             
      if (i>=-100 & i<=100) begin
        $display("r = %0d" i);
      end
    end
    $finish;
  end
endmodule
