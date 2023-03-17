`timescale 1ns / 1ps

// Ethan Thummel / UraniumNutt 02/22/23

module DataflowTest;

    reg [7:0] A;
    reg [3:0] B, C;
    wire [7:0] Q;

    Dataflow uut (

    .A(A),
    .B(B),
    .C(C),
    .Q(Q));

initial begin

    // 'odd'
    A = 8'd110; B = 4'd14; 
    # 100
    // 'even'
    A = 8'd241; B = 4'd12; 
    # 100
    // 'odd'
    A = 8'd70; B = 4'd02; 
    # 100
    // 'even'
    A = 8'd228; B = 4'd03; 
    
end

endmodule
