module gate_operations;
  reg a_in,b_in;
  reg and_gate,or_gate,not_gate,nand_gate,nor_gate,xor_gate,xnor_gate;
   
  task and_operation;
    input a, b;
    output result;
    begin
      result = a & b;
    end
  endtask
  
  task not_operation;
    input a;
    output result;
    begin
      result=~a;
    end
  endtask
  
    task or_operation;
    input a, b;
    output result;
    begin
      result = a | b;
    end
  endtask
  
    task nor_operation;
    input a, b;
    output result;
    begin
      result = ~(a | b);
    end
  endtask
  
    task nand_operation;
    input a, b;
    output result;
    begin
      result = ~(a& b);
    end
  endtask
 
  	task xor_operation;
    input a, b;
    output result;
    begin
      result = (a^b);
    end
  endtask
  
    task xnor_operation;
    input a, b;
    output result;
    begin
      result = ~(a^b);
    end
  endtask
  
  initial begin
    a_in=1;
    b_in=1;
    
    and_operation(a_in, b_in,and_gate);
    or_operation(a_in,b_in,or_gate);
    not_operation(a_in,not_gate);
    nor_operation(a_in,b_in,nor_gate);
    nand_operation(a_in,b_in,nand_gate);
    xor_operation(a_in,b_in,xor_gate);
    xnor_operation(a_in,b_in,xnor_gate);
    
    $display("Inputs: a=%b, b=%b", a_in, b_in);
    $display("and_gate  = %b", and_gate);
    $display("or_gate  = %b", or_gate);
    $display("not_gate of a= %b",not_gate);
    $display("nor_gate  = %b", nor_gate);
    $display("nand_gate  = %b", nand_gate);
    $display("xor_gate = %b", xor_gate);
    $display("xnor_gate  = %b", xnor_gate);
  end
endmodule

/*ouputs
Inputs: a=1, b=1
and_gate  = 1
or_gate  = 1
not_gate of a= 0
nor_gate  = 0
nand_gate  = 0
xor_gate = 0
xnor_gate  = 1
*/

        
