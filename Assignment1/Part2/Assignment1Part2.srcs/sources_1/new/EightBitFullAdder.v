`timescale 1ns / 1ps

// Ethan Thummel / UraniumNutt 02/22/23

module EightBitFullAdder(
    
    output [7:0] S,
    output Cout,
    input [7:0] A,
    input [7:0] B,
    input Cin
    
    );

    wire C0, C1, C2, C3, C4, C5, C6, C7;

    // the first bit takes the Cin for the whole adder
    OneBitFullAdder onebitfulladder0(S[0], C0,   A[0], B[0], Cin); 

    OneBitFullAdder onebitfulladder1(S[1], C1,   A[1], B[1], C0);
    OneBitFullAdder onebitfulladder2(S[2], C2,   A[2], B[2], C1);
    OneBitFullAdder onebitfulladder3(S[3], C3,   A[3], B[3], C2);
    OneBitFullAdder onebitfulladder4(S[4], C4,   A[4], B[4], C3);
    OneBitFullAdder onebitfulladder5(S[5], C5,   A[5], B[5], C4);
    OneBitFullAdder onebitfulladder6(S[6], C6,   A[6], B[6], C5);

    // the last bit provides the Cout for the whole adder
    OneBitFullAdder onebitfulladder7(S[7], Cout, A[7], B[7], C6); 

endmodule
