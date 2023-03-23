`timescale 1ns / 1ps

// Ethan Thummel / UraniumNutt 02/22/23

module Dataflow(

    input A, B, C, D,
    output led1

    );
    
    // the logic expresion for the truth table
    assign led1 = A | (~A & B & ~C & D) | (~A & ~B & C & ~D); 
    
endmodule
