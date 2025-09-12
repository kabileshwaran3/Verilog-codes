module addition;
  reg[7:0]a;
  reg[7:0]b;
  reg[7:0]sum;
  task add;
    input[7:0]x;
    input[7:0]y;
    output[7:0]result;
    begin
      result=x+y;
    end
  endtask
    initial begin
      a=8'd10;
      b=4'd15;
      add(a,b,sum);
      $display("sum=%d",sum);
    end
    endmodule
