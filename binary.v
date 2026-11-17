// Implement binary state machine
module binary(
    input w,
    input clk,
    output z,
    input reset,
    output [2:0] stateOut
);

    wire [2:0] Next;
    wire [2:0] State;  

    dff zero(
        .Default(1'b0),
        .D(Next[0]),
        .clk(clk),
        .Q(State[0]),
        .reset(reset)
    );

    dff one(
        .Default(1'b0),
        .D(Next[1]),
        .clk(clk),
        .Q(State[1]),
        .reset(reset)
    );

    dff two(
        .Default(1'b0),
        .D(Next[2]),
        .clk(clk),
        .Q(State[2]),
        .reset(reset)
    );

    //assign z = State[1] & ~State[0];
    //assign Next[0] = w & ~State[1] & ~State[0];
    //assign Next[1] = w & (State[1] | State[0]);

    //assign z = State[0] | (State[1] & ~State[2]);

    assign z =  (~State[2] & State[1] & ~State[0]) | (State[2] & ~State[1] & ~State[0]); //(010)C | (100)
    assign Next[0] = (~State[1] & w & ~State[2]) | (~w & ~State[1] & ~State[0]) | (w & State[1] & ~State[0]) | (~w & State[1] & State[0]);
    assign Next[1] = (~State[1] & State[0]) | (~State[1] & w & ~State[2]) | (State[1] & ~State[0]);
    assign Next[2] = (w & State[2]) | (w & State[1] & State[0]);

    assign stateOut[2:0] = State[2:0];



endmodule