`timescale 1ns / 1ps

module Structural( 

    input A, B, C, D,
    output led2

    );

    wire And1, And2, An, Bn, Cn, Dn; // intermediate wires

   not notA(An, A); // provide inverted terms
   not notB(Bn, B);
   not notC(Cn, C);
   not notD(Dn, D);

   and and1(And1, An, B, Cn, D); // or gate for first minterm

   and and2(And2, An, Bn, C, Dn); // or gate for second minterm

   or or1(led2, A, And1, And2); // final and gate

endmodule
