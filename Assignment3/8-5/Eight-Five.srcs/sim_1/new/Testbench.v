// Ethan Thummel 4/11/23

`timescale 1ns / 1ps

module Testbench;

    reg [3:0] A, B;
    reg Cin, S;
    wire [3:0] Q;

    Circuit uut(

        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Q(Q)

    );

    initial begin
        
        A = 5'd4; B = 4'd1;

        #10 {Cin, S} = 2'b00;
        #10 {Cin, S} = 2'b01;
        #10 {Cin, S} = 2'b10;
        #10 {Cin, S} = 2'b11;

        #10 {Cin, S} = 2'b00;

    end

endmodule
