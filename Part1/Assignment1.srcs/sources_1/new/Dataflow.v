`timescale 1ns / 1ps

module Dataflow(

    input A, B, C, D,
    output led1

    );
    
    assign led1 = A | (~A & B & ~C & D) | (~A & ~B & C & ~D); // the logic expresion for the truth table
    
endmodule
