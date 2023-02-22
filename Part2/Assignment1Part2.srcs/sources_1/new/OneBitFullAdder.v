`timescale 1ns / 1ps

// Ethan Thummel / UraniumNutt 02/22/23

// One bit full adder used as a helper module for the Eight bit full adder
module OneBitFullAdder(
    
    output S,
    output Cout,
    input A,
    input B,
    input Cin
    
    );

    wire xor1Out, and1Out, and2Out;

    xor xor1(xor1Out, A, B);
    xor xor2(S, xor1Out, Cin);
    and and1(and1Out, Cin, xor1Out);
    and and2(and2Out, A, B);
    or or1(Cout, and1Out, and2Out);

endmodule
