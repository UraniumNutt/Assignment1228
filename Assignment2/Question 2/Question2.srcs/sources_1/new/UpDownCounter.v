`timescale 1ns / 1ps

module UpDownCounter(

    input [3:0] load,
    input [1:0] op,
    input clk,
    output [3:0] count

    );

    reg [3:0] internalState;
    assign count = internalState;

    always @(posedge clk) begin

        case (op[1:0]) 

            // don't count
            2'b00: internalState = internalState;
            // count up
            2'b01: internalState = internalState + 1;
            // count down
            2'b10: internalState = internalState - 1;
            // load
            2'b11: internalState = load;

        endcase

    end

endmodule
