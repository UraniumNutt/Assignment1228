`timescale 1ns / 1ps

module test;
    
    reg A, B, C, D;
    wire led1;
    
    Dataflow uut (
    
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .led1(led1));
    
initial begin 
    
    #100
     A = 0;  B = 0;
    #100
    A = 0;  B = 1;
    #100
    A = 1;  B = 0;
    #100
    A = 1;  B = 1;
    
end

    
endmodule
