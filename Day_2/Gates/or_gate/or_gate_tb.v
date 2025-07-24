module or_gate_tb;
    reg a,b;
    wire y;
or_gate uut(.a(a),.b(b),.y(y));
initial begin
    //test case
    a=0; b=0; #20;
    a=0; b=1; #20;
    a=1; b=0; #20;
    a=1; b=1; #20;  
    
    $finish;
    end  
    
endmodule