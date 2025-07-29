/*Time Simulation Variable
Create a time t; variable
Store and display $time at different events using delays.*/

module time_simulation;
    time t;
initial begin
    t=$time;
    $display("t=%0t",t);#5
    t=$time;
    $display("t=%0t",t);#10
    t=$time;
  $display("t=%0t",t);#15
    $finish;
    end
    
endmodule

//output
/*t=0
t=5
t=85
design.sv:12: $finish called at 135 (1s)*/
