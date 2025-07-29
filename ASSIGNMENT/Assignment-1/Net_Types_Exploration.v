`timescale 1ns / 1ps

module Net_Types_Exploration;
    wand y1;
    wor y2;
    tri y3;
    triand y4;

    //wand
    assign y1=1'b0;
    assign y1=1'b0;
    //wor
    assign y2=1'b0;
    assign y2=1'b1;
    //tri
    assign y3=1'b0;
    //triand
    assign y4=1'b1;
    assign y4=1'b0;
    
    initial begin
    $display("y1=%b,y2=%b,y3=%b,y4=%b",y1,y2,y3,y4);
    end
endmodule

//output
// y1=0,y2=1,y3=0,y4=0
