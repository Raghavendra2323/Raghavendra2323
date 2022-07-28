
module helloworldfpga(
    output wire redled,
    output wire greenled,
    output wire blueled,
                 output a,
                 output b,
                 output c,
             output d,
               output e,
              output f,
               output g

);
    wire clk;

    qlal4s3b_cell_macro u_qlal4s3b_cell_macro (
        .Sys_Clk0 (clk),
    );

    reg[26:0] delay;
     reg	led;


always@(posedge clk) begin
delay = delay+1; 

if(delay > 20000000) //blink delay in decimal
begin
delay=27'b0;
led=0; //keep led on
end
end


assign greenled = !led; 
assign     a=!led;
assign     b=led;
assign     c=led;
assign     d=!led;
assign     e=!led;
assign     f=!led;
assign     g=!led;

endmodule
//end of the module







