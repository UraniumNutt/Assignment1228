`timescale 1ns / 1ps



module Testbench;

        reg [1:0] d;
        reg clk;
        reg reset;
        reg [1:0] op;
        wire [1:0] count;

        TwoBitStateCount uut(

            .d(d),
            .clk(clk),
            .reset(reset),
            .op(op),
            .count(count)

        );

        always
            #5 clk = ~clk;

        initial begin
            
            // init the clk
            clk = 0; reset = 0;
            // load 2 into the counter
            d = 2'd2; op = 2'b11; #10
            // count down
            op = 2'b10; #10
            // count up
            op = 2'b01; #10
            // count up again
            op = 2'b01; #10
            // count up one more time
            op = 2'b01; #10
            // do nothing
            op = 2'b00; #10
            // load 1 into the counter
            d = 2'd1; op = 2'b11; #10
            // count up (overflow)
            op = 2'b01; #10
            // count down (underflow)
            op = 2'b10; #10
            // do nothing for the last cycle
            op = 2'b00;


        end


endmodule