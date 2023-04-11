// Ethan Thummel 4/11/23

`timescale 1ns / 1ps

module Testbench;

    reg [7:0] A, B;
    reg S_1, S_0, C_in;
    wire [7:0] Q;

    ALU uut(

        .A(A),
        .B(B),
        .S_1(S_1),
        .S_0(S_0),
        .C_in(C_in),
        .Q(Q)

    );


    initial begin

        
        A = 8'd9; B = 8'd3; {S_1, S_0, C_in} = 3'b000;

        #10 {S_1, S_0, C_in} = 3'b000; 
        #10 {S_1, S_0, C_in} = 3'b001; 
        #10 {S_1, S_0, C_in} = 3'b010; 
        #10 {S_1, S_0, C_in} = 3'b011; 
        #10 {S_1, S_0, C_in} = 3'b100; 
        #10 {S_1, S_0, C_in} = 3'b101; 
        #10 {S_1, S_0, C_in} = 3'b110; 
        #10 {S_1, S_0, C_in} = 3'b111; 

        #10 A = 8'd9; B = 8'd3; {S_1, S_0, C_in} = 3'b000;

    end

endmodule
