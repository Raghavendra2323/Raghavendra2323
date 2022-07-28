
// Sequence detector for the sequence 0011

module Sequence( x,y,a,b,c,d,e,f,g,blinkled);
       output y,a,b,c,d,e,f,g;
       output wire blinkled;
       input x;
       reg q1,q2,q3,d1,d2,d3;
             
   wire clk;
    qlal4s3b_cell_macro u_qlal4s3b_cell_macro( .Sys_Clk0(clk));
   reg [26:0] delay ;
   initial begin 
          q1 =0;
          q2 =0;
          q3 =0;
               a=0;
               b=0;
               c=0;
               d=0;
               e=0;
               f=0;
               g=1;
          end     
       
always@(posedge clk)
begin
delay = delay +1 ;
          
if (delay >= 20000000)
begin
d1 = (!q1&&q2&&q3&&x);
d2 = (!q1&&q2&&!q3) || (!q1&&!q2&&q3&&!x);
d3 = (!q2&&!q3&&!x) || (!q1&&q2&&!q3&&x) || (!q1&&q2&&q3&&!x);
y = !d1;                          

a = (!q2&&!q3&&!x) || (!q1&&q2&&q3);
b = 0;
c = (!q1&&q2&&!q3&&!x) || (!q1&&!q2&&q3&&!x);
d = a;
e = (!q2&&!q3&&!x) || (!q1&&q2&&x) || (!q1&&q2&&q3);
f = (!q2&&!q3&&!x) || (!q1&&q2&&!q3) || (!q1&&q3&&!x);  
g = (!q3&&!q2) || (q1&&!q2&&x) || (!q1&&q2&&q3&&!x);
                            
q1<=d1;
q2<=d2;
q3<=d3;


delay = 27'b0;
led =!led;
end 
end

assign blinkled = led;
endmodule          
