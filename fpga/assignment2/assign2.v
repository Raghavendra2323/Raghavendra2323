
//F = wx'+y'z+wy

module Assignment2(w,x,y,z,F);

input wire w;
input wire x;
input wire y;
input wire z;

output wire F;

wire a,b;

not(a,x);     //x'
not(b,y);     //y'
and(c,w,a);   //wx'
and(d,y,b);   //y'z
and(e,w,y);   //wy

or(f,c,d);    //wx'+y'z
or(F,f,e);    //F = wx'+y'z+wy

endmodule
