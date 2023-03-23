`timescale 1ns / 1ps

// Ethan Thummel / UraniumNutt 02/22/23

module Dataflow(
    input wire [7:0] A,
    input wire [3:0] B,
    input [3:0] C, // note: it does not look like C is ever refrenced in part 2
    output [7:0] Q
    );

    // concatenation of the bits into one reg
    wire [3:0] odd_bits =  {A[7], A[5], A[3], A[1]}; 
    //reg [3:0] even_bits = {A[6], A[4], A[2] ,A[0]}
    wire [7:0] parity;
    // generates the parity, and duplicates it 8 times to make an 8 bit value
    assign parity = {8{~^odd_bits}}; 
    // Multiplexer in the form of F = A & S | B & ~S
    assign Q = (parity & (A + B)) | (~parity & (A - B)); 

    // note: the problems states that the second condition is and else if, but this would mean there would
    // be times when both were not true. Since the problems mentions using a 2:1 multiplexer, I am assuming 
    // if oddParity == 0, then Q = A - B

endmodule
