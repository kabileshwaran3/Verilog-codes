// Code your design here
module pattern;
  int i,j;
  initial begin
    for(i=0;i<5;i++)begin
    for(j=0;j<5;j++)
      $write("*");
    $display();
    end
    
  
  end
endmodule
  
  
