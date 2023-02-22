`timescale 1ns / 1ps

// Ethan Thummel / UraniumNutt 02/22/23

// this is the test module for testing the Structural version
module StructuralTest; 
    
    reg A, B, C, D;
    wire led1;
    
    Structural uut (
    
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .led2(led2));
    
// go through every combination of inputs
initial begin 
    
    #100
    A = 0;  B = 0; C = 0; D = 0; //0

    #100
    A = 0;  B = 0; C = 0; D = 1; //1

    #100
    A = 0;  B = 0; C = 1; D = 0; //2

    #100
    A = 0;  B = 0; C = 1; D = 1; //3

    #100
    A = 0;  B = 1; C = 0; D = 0; //4

    #100
    A = 0;  B = 1; C = 0; D = 1; //5

    #100
    A = 0;  B = 1; C = 1; D = 0; //6

    #100
    A = 0;  B = 1; C = 1; D = 1; //7

    #100
    A = 1;  B = 0; C = 0; D = 0; //8

    #100
    A = 1;  B = 0; C = 0; D = 1; //9

    #100
    A = 1;  B = 0; C = 1; D = 0; //10

    #100
    A = 1;  B = 0; C = 1; D = 1; //11

    #100
    A = 1;  B = 1; C = 0; D = 0; //12

    #100
    A = 1;  B = 1; C = 0; D = 1; //13

    #100
    A = 1;  B = 1; C = 1; D = 0; //14

    #100
    A = 1;  B = 1; C = 1; D = 1; //15

end
 
endmodule