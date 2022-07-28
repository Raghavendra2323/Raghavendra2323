

//F = xy'+x'yz

module Assignment1(F,x,y,z);

input wire z;
input wire y;
input wire x;

output wire F;

//output wire a,
//output wire b,
//output wire c,
//output wire d,
//output wire e,
//output wire f,
//output wire g,

wire a,b,c,d;
not(a,x);     //x'
not(b,y);     //y,

and(c,x,b);    //xy'
and(d,a,y,z);   //x'yz

or(F,c,d);

endmodule
