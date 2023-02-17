`timescale 1ns / 1ps

module StructuralTest;

    reg [7:0] A;
    reg [3:0] B, C;
    wire [7:0] Q;

    Structural uut (

    .A(A),
    .B(B),
    .C(C),
    .Q(Q));

initial begin

    A = 8'd110; B = 4'd14; // 'odd'
    # 100

    A = 8'd241; B = 4'd12; // 'even'
    # 100

    A = 8'd70; B = 4'd02; // 'odd'
    # 100

    A = 8'd228; B = 4'd03; // 'even'
    

end

endmodule
