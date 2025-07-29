`timescale 1ns / 1ps
/*4. Register Assignment
Create a module that uses:
• reg [7:0] data
Assign and display a binary value.*/

module Register;
    reg[7:0] data;
    initial begin
         data=8'b10111010;
         $display("data=%b",data);
         end
         
endmodule
//output

//data=10111010