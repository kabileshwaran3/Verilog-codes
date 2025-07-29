    /* Floating-Point Handling 
Use real delta; and assign values like 4e10, 2.18. 
Observe behavior when assigned to an integer. 
*/
    
    module floating_point;
        real delta;
        integer i;
    
     initial begin
        delta=4e10;
        $display("delta=%0e",delta);
        i=delta;
        $display("i=%0d ",i);
        delta=2.18;
        $display("delta=%f", delta);
        i=delta;
        $display("i=%0d",i);
        
        end
    endmodule
    //output
    //
    /*delta=4.000000e+10
i=1345294336 
delta=2.180000
i=2*/
