`timescale 1ns / 1ps

module Dataflow(

    input [3:0] in,
    output led1

    );
    
    assign led1 = in[0] & in[1];
    
endmodule
