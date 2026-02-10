// 1) Write a verilog code to swap contents of two registers with and without a temporary register?

module swap(input clk,rst,
            output reg [4:0]a ,b);
  reg [4:0]temp;
  
  always @(posedge clk or posedge rst)begin
    if(rst)begin
      a=5'd10;
      b=5'd20;
    end
    else begin
      //using an temp reg 
      temp=a;
      a=b;
      b=temp;
      //without using temp by using non blocking
      a<=b;
      b<=a;
 
    end
  end
endmodule

module tb;
 reg clk,rst;
  wire [4:0]a,b;
  
  swap dut(.clk(clk),.rst(rst),.a(a),.b(b));
  
      always #5 clk=~clk;

  initial begin
    clk=0;
    rst=1;#5;
        $display("A=%0d B=%0d",a,b);

    rst=0;#5;
        $display("A=%0d B=%0d",a,b);

    rst=1;#5;
    $display("A=%0d B=%0d",a,b);
    $finish;
  end
endmodule
