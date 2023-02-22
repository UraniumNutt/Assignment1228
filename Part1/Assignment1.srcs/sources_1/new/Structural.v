`timescale 1ns / 1ps

// Ethan Thummel / UraniumNutt 02/22/23

module Structural( 

    input A, B, C, D,
    output led2

    );

    // intermediate wires
    wire And1, And2, An, Bn, Cn, Dn; 

    // provide inverted terms
    not notA(An, A); 
    not notB(Bn, B);
    not notC(Cn, C);
    not notD(Dn, D);
    // or gate for first minterm
    and and1(And1, An, B, Cn, D); 
    // or gate for second minterm
    and and2(And2, An, Bn, C, Dn); 
    // final and gate
    or or1(led2, A, And1, And2); 

endmodule
