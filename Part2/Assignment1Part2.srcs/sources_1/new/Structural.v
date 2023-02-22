`timescale 1ns / 1ps

// Ethan Thummel / UraniumNutt 02/22/23

module Structural(
    input wire [7:0] A,
    input wire [3:0] B,
    input [3:0] C, // note: it does not look like C is ever refrenced in part 2
    output wire [7:0] Q
    );

    // concatenation of the bits into one reg
    wire [3:0] odd_bits =  {A[7], A[5], A[3], A[1]}; 
    // creates an 8 bit copy of B, with 4 padded zeros
    wire [7:0] B_8bit = {1'b0, 1'b0, 1'b0, 1'b0, B}; 
    // output of the xnor gate parity detector
    wire parity; 
    // output of the multiplexer for selecting additon / subtraction
    wire [7:0] plexout; 
    // inverted copy of B
    wire [7:0] bInverted; 
    wire Cout;

    xor xor1(parity, odd_bits[3], odd_bits[2], odd_bits[1], odd_bits[0]);
    EightBitInverter Binvert(bInverted, B_8bit);
    Multiplexer opselect(plexout, B_8bit, bInverted, parity);
    EightBitFullAdder finaladder(Q, Cout, A, plexout, parity);
    
endmodule
