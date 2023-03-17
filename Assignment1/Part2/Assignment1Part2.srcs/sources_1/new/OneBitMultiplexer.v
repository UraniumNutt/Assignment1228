`timescale 1ns / 1ps

module OneBitMultiplexer(
    output O,
    input A,
    input B,
    input S
    );

    wire Sn, As, Bs;

    not not1(Sn, S); // invert select

    and andA(As, A, Sn); // select A when S == 0;

    and andB(Bs, B, S); // select B when S == 1;

    or or1(O, As, Bs); // or the two gates together to get the result

endmodule
