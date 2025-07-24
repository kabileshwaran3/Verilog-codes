`timescale 1ns / 1ps

module decoder_3x8(a,b,c,y0,y1,y2,y3,y4,y5,y6,y7);
    input a,b,c;
    output y0,y1,y2,y3,y4,y5,y6,y7;
    wire n1,n2,n3;
    
 not (n1, a);
 not (n2, b);
 not (n3, c);
 
  and (y0, n1, n2, n3);  
  and (y1, n1, n2, c);     
  and (y2, n1, b, n3);   
  and (y3, n1, b, c);       
  and (y4, a, n2, n3);     
  and (y5, a, n2, c);       
  and (y6, a, b, n3);        
  and (y7, a, b, c); 
    

endmodule
