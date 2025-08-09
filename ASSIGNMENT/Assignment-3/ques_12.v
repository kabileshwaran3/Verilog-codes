`timescale 1ns / 1ps
module comparator(input [4:0]a,
                  input [4:0]b,
                  output ceq, 
                  output clt,
                  output cgt);

    assign ceq = (a==b);
    assign clt = (a<b);
    assign cgt = (a>b);
endmodule

//test bench
module comparator_tb;
  					 reg [4:0]a;
  					 reg [4:0]b;			
                     wire ceq;
                     wire clt;
   		 	 	 	 wire cgt;		
  comparator uut(.a(a),.b(b),.ceq(ceq),.clt(clt),.cgt(cgt));
  initial begin
  
    a=5'b10000;
    b=5'b00000; #20;
    $display("ceq=%b,clt=%b,cgt=%b",ceq,clt,cgt);
    
    a=5'b10101;
    b=5'b01010;#20;
       $display("ceq=%b,clt=%b,cgt=%b",ceq,clt,cgt);
    
    
    #30
    $finish;
  end
endmodule

//output

//ceq=0,clt=0,cgt=1
//ceq=0,clt=0,cgt=1