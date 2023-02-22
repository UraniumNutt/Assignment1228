`timescale 1ns / 1ps

// Ethan Thummel / UraniumNutt 02/22/23

// implementing multiplexer for Structural version
module Multiplexer( 
    output [7:0] O,
    input [7:0] A,
    input [7:0] B,
    input S
    );

    // creates an instance of the one bit multiplexer for each bit of the bus inputs
    OneBitMultiplexer Bit0(O[0], A[0], B[0], S); 
    OneBitMultiplexer Bit1(O[1], A[1], B[1], S);
    OneBitMultiplexer Bit2(O[2], A[2], B[2], S);
    OneBitMultiplexer Bit3(O[3], A[3], B[3], S);
    OneBitMultiplexer Bit4(O[4], A[4], B[4], S);
    OneBitMultiplexer Bit5(O[5], A[5], B[5], S);
    OneBitMultiplexer Bit6(O[6], A[6], B[6], S);
    OneBitMultiplexer Bit7(O[7], A[7], B[7], S);

endmodule
