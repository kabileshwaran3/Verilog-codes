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

