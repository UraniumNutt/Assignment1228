`timescale 1ns / 1ps
module FourBitShiftRegister(

    input [3:0] in,
    input [1:0] sel,
    input clk,
    output [3:0] Q

    );

    wire leftHandIn, rightHandIn;
    reg [3:0] internalState;
    
    assign leftHandIn = 0;
    assign rightHandIn = 0;
    assign Q = internalState;

    always @(posedge clk) begin

        case (sel[1:0]) 

            // parallel load
            2'b00: internalState = in;
            // shift left
            2'b01: internalState = {internalState[2:0], leftHandIn};
            // shift right
            2'b10: internalState = {rightHandIn, internalState[3:1]};
            // no shift
            2'b11: internalState = internalState;
            

        endcase
        
    end

endmodule
