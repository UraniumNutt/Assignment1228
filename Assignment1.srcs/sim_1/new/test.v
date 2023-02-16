`timescale 1ns / 1ps

module test;
    
    reg [3:0] in;
    wire led1;
    
    Dataflow uut (
    
    .in(in),
    .led1(led1));
    
initial begin 
    
    #100
     in[0] = 0;  in[1] = 0;
    #100
    in[0] = 0;  in[1] = 1;
    #100
    in[0] = 1;  in[1] = 0;
    #100
    in[0] = 1;  in[1] = 1;
    
end

    
endmodule
