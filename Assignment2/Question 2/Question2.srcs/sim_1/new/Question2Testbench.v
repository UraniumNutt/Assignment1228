`timescale 1ns / 1ps



module Question2Testbench;

        reg [3:0] load;
        reg [1:0] op;
        reg clk;
        wire [3:0] count;

        UpDownCounter uut(

            .load(load),
            .op(op),
            .clk(clk),
            .count(count)

        );

        always
            #5 clk = ~clk;

        initial begin
            
            // init the clk
            clk = 0; 
            // load 2 into the counter
            load = 4'd2; op = 2'b11; #10
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
            // load 15 into the counter
            load = 4'd15; op = 2'b11; #10
            // count up (overflow)
            op = 2'b01; #10
            // count down (underflow)
            op = 2'b10; #10
            // do nothing for the last cycle
            op = 2'b00;


        end


endmodule
