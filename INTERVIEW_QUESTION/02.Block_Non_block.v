// Code your design here
// Difference between blocking and non-blocking?

module ex;
  reg [5:0]a,b;
  
  initial begin
    a=5;
    #1;
    a=a+1;
    b=a+1;
    $display("A=%0d | B=%0d",a,b);
    
    a=5;
    #1
    
    
    a<=a+1;
    b<=a+1;
    #1
    $display("A=%0d | B=%0d",a,b);
  end
endmodule

    
    
