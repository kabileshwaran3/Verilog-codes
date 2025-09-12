module addition;
  reg[7:0]a;
  reg[7:0]b;
  reg[7:0]sum;
  reg[7:0]diff;
  task add;
    input[7:0]x;
    input[7:0]y;
    output[7:0]result;
    begin
      result=x+y;
    end
  endtask
     
    task sub;
    input[7:0]x;
    input[7:0]y;
    output[7:0]result;
    begin
      result=x-y;
    end
     endtask
    
    initial begin
      a=8'd15;
      b=8'd10;
      add(a,b,sum);
      $display("sum=%d",sum);
      sub(a,b,diff);
      $display("diff=%d",diff);
     
    end
    endmodule

//output
//sum= 25
//diff=  5
