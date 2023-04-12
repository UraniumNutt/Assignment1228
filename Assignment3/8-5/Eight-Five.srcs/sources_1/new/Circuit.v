// Ethan Thummel 4/11/23

`timescale 1ns / 1ps

module Circuit(

    input [3:0] A, B,
    input Cin, S,
    output [3:0] Q

    );

    assign Q = A + ((~B & {4{S}}) | (B & {4{~Cin}})) + Cin;

endmodule
