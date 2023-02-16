`timescale 1ns / 1ps

module Dataflow(
    input [7:0] A,
    input [3:0] B,
    input [3:0] C, // note: it does not look like C is ever refrenced in part 2
    output [7:0] Q
    );

    reg [3:0] odd_bits =  {A[7], A[5], A[3], A[1]} // concatenation of the bits into one reg
    reg [3:0] even_bits = {A[6], A[4], A[2] ,A[0]}

    

endmodule
