`timescale 1ns / 1ps

module Question1Testbench;

            reg [3:0] in;
            reg [1:0] sel;
            reg clk;
            wire [3:0] Q;

        FourBitShiftRegister uut(

            .in(in),
            .sel(sel),
            .clk(clk),
            .Q(Q)
        );

        // this toggles the clock, it runs at the same time as the initial block
        always
            #5 clk = ~clk;


        initial begin

            // start clock at zero
            clk = 0;
    
            // begin at zero, don't shift
            in = 0; sel = 11; #10
            // shift in value, load it in
            in = 4'b1010; sel = 2'b00; #10
            // shift right
            sel = 2'b10; #10
            // shift left
            sel = 2'b01; #10
            // shift left again
            sel = 2'b01; #10
            // do nothing
            sel = 2'b11; #10
            // shift right
            sel = 2'b10; #10
            // load in zero
            in = 0; sel = 2'b00; #10
            // don't shift for the last cycle
            sel = 2'b11;



        end

endmodule
