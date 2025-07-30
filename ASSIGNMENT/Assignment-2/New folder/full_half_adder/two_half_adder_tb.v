module two_half_adder_tb;
  	reg a,b,cin;
  	wire sum,carry;
  two_half_adder uut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
  
  initial begin
      $display("A B Cin | Sum Carry");
  $monitor("%4t | %b %b  %b  |  %b    %b", $time, a, b, cin, sum, carry);

    //test case 
   a=0; b=0; cin=0; #20;
   a=0; b=0; cin=1; #20;
   a=0; b=1; cin=0; #20;
   a=0; b=1; cin=1; #20;
   a=1; b=0; cin=0; #20;
   a=1; b=0; cin=1; #20;
   a=1; b=1; cin=0; #20;
   a=1; b=1; cin=1; #20;
   $finish;
    end 
endmodule