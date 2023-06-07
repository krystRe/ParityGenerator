`timescale 1ns / 1ps

module GP_top(sw_i, an_o, seg_o);
    input [15:0] sw_i;
    output [7:0] an_o, seg_o;
    reg [7:0] o_or_e;
    assign an_o = 8'b11111110;
    
    always @ (sw_i)
        begin
        if(^sw_i)
        o_or_e = 8'b11000101;  //nieparzysta ilosc '1'
        else
        o_or_e = 8'b01100001;  //parzysta ilosc '1'
        end
    assign seg_o = o_or_e;
endmodule
