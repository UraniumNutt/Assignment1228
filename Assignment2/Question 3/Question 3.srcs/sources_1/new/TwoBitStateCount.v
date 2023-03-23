module TwoBitStateCount(

    input clk,
    input reset,
    output reg count

    );

    reg [1:0] currentState;
    reg [1:0] nextState;

    always @(posedge clk) begin
        
        currentState = nextState;

    end

    always @(reset) begin

        if (reset == 1)
            nextState = 0;
        else
            

    end

endmodule
