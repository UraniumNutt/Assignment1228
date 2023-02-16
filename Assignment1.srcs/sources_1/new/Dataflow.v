`timescale 1ns / 1ps

module Dataflow(

    input A, B, C, D,
    output led1

    );
    
    assign led1 = A & B;
    
endmodule
