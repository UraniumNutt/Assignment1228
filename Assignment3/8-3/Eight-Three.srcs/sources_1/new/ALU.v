// Ethan Thummel 4/11/23

`timescale 1ns / 1ps

module ALU(

    input [7:0] A, B,
    input S_1, S_0, C_in,
    output reg [7:0] Q

    );

    wire [2:0] op = {S_1, S_0, C_in};

    always @(*) begin

        case (op)

            3'b000: Q = A + B;
            3'b001: Q = A + ~B + 1;
            3'b010: Q = ~A + B;
            3'b011: Q = ~A + B + 1;
            3'b100: Q = A - 1;
            3'b101: Q = A + 1;
            3'b110: Q = ~A;
            3'b111: Q = ~A + 1;

        endcase

    end

endmodule
