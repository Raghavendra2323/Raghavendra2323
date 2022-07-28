
module helloworldfpga(
                 output a,
                 output b,
                 output c,
             output d,
               output e,
              output f,
               output g

);
function automatic [6:0] gpio_out;

    input [6:0] num_i; 

begin
    case (num_i)   
        0 : gpio_out = 7'b0000001;
        1 : gpio_out = 7'b1001111;
        2 : gpio_out = 7'b0010010;
        3 : gpio_out = 7'b0000110;
        4 : gpio_out = 7'b1001100;
        5 : gpio_out = 7'b0100100;
        6 : gpio_out = 7'b0100000;
        7 : gpio_out = 7'b0001111;
        8 : gpio_out = 7'b0000000;
        9 : gpio_out = 7'b0000100;
        
       
        default : gpio_out = 7'b1111111; 
    endcase
end
endfunction
//end function

//display number
assign {a, b,c,d,e,f,g}=gpio_out(3);
endmodule
//end of the module







