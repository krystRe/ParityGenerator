`timescale 1ns / 1ps
module GP_test();
    reg [15:0] sw_i;
    wire [7:0] an_o;
    wire [7:0] seg_o;
    GP_top test(sw_i, an_o, seg_o);
    
    initial
        begin
        sw_i = 16'b1111111111111111;
        #100
        sw_i = 16'b1111111111111110;
        #100
        sw_i = 16'b1111111111111100;
        #100
        sw_i = 16'b1111111111111000;
        #100
        sw_i = 16'b1111111111110000;
        #100
        sw_i = 16'b1111111111100000;
        #100
        sw_i = 16'b1111111111000000;
        #100
        sw_i = 16'b1111111110000000;
        #100
        sw_i = 16'b1111111100000000;
        #100
        sw_i = 16'b1111111000000000;
        #100
        sw_i = 16'b1111110000000000;
        #100
        sw_i = 16'b1111100000000000;
        #100
        sw_i = 16'b1111000000000000;
        #100
        sw_i = 16'b1110000000000000;
        #100
        sw_i = 16'b1100000000000000;
        #100
        sw_i = 16'b1000000000000000;
        #100
        sw_i = 16'b0000000000000000;
        end
endmodule
