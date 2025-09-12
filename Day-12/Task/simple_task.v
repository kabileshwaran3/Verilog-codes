module simple_task;
  task say_hello;
    begin
    $display("Hello Everyone");
    end
  endtask
  initial begin
    say_hello;
  end
endmodule

//output
/*sum= 25
diff=  5
*/
