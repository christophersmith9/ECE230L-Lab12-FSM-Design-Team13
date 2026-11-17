module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    // Hook up binary and one-hot state machines

    one_hot one_hot(
        .w(sw),
        .clk(btnC),
        .z(led[0]),
        .reset(btnU),
        .stateOut(led[6:2])
        //.Astate(led[2]),
        //.Bstate(led[3]),
        //.Cstate(led[4]),
        //.Dstate(led[5]),
        //.Estate(led[6])
    );
    
    binary binary(
        .w(sw),
        .clk(btnC),
        .z(led[1]),
        .reset(btnU),
        .stateOut(led[9:7])
    );

endmodule