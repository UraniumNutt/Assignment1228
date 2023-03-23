module TwoBitStateCount(

    input [1:0] d,
    input clk,
    input reset,
    input [1:0] op,
    output reg [1:0] count

    );

    localparam zero = 2'b00;
    localparam one = 2'b01;
    localparam two = 2'b10;
    localparam three = 2'b11;

    reg [1:0] currentState;
    reg [1:0] nextState;

    initial begin

        currentState = zero;
        count = zero;

    end

    always @(posedge clk) begin
        
        currentState = nextState;
        count = currentState;

    end

    always @(reset or d or op or currentState) begin

        case (currentState)

            zero: begin
                if (reset == 1)
                    nextState = zero;

                case (op) 

                    0: nextState = zero;
                    1: nextState = one;
                    2: nextState = three;
                    3: nextState = d;

                endcase
                
            end

            one: begin
                if (reset == 1)
                    nextState = zero;

                    case (op) 

                    0: nextState = one;
                    1: nextState = two;
                    2: nextState = zero;
                    3: nextState = d;

                endcase
            end

            two: begin
                if (reset == 1)
                    nextState = zero;

                case (op) 

                    0: nextState = two;
                    1: nextState = three;
                    2: nextState = one;
                    3: nextState = d;

                endcase
            end

            three: begin
                if (reset == 1)
                    nextState = zero;

                    case (op) 

                    0: nextState = three;
                    1: nextState = zero;
                    2: nextState = two;
                    3: nextState = d;

                endcase
            end


        endcase
            

    end

endmodule
