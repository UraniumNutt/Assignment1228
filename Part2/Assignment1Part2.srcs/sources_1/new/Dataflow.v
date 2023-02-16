`timescale 1ns / 1ps

module Dataflow(
    input wire [7:0] A,
    input wire [3:0] B,
    input [3:0] C, // note: it does not look like C is ever refrenced in part 2
    output reg [7:0] Q
    );

    wire [3:0] odd_bits =  {A[7], A[5], A[3], A[1]}; // concatenation of the bits into one reg
    //reg [3:0] even_bits = {A[6], A[4], A[2] ,A[0]}

    always @(*) begin
        
        if ((~^odd_bits) == 1)
    
        begin
    
            Q = A + B;
    
        end
        
    
        else // note: the problems states that the second condition is and else if, but this would mean there would
            // be times when both were not true. Since the problems mentions using a 2:1 multiplexer, I am assuming 
            // if oddParity == 0, then Q = A - B
    
        begin
    
            Q = A - B;
    
        end
    
    end

    

endmodule
