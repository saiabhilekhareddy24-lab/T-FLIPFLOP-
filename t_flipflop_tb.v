// Testbench for T Flip-Flop
`timescale 1ns/1ps

module t_flipflop_tb;

reg clk;
reg reset;
reg t;
wire q;

// Instantiate T Flip-Flop
t_flipflop uut (
    .clk(clk),
    .reset(reset),
    .t(t),
    .q(q)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Test sequence
initial begin

    $monitor("Time=%0t | Reset=%b | T=%b | Q=%b",
             $time, reset, t, q);

    // Initial reset
    reset = 1;
    t = 0;
    #10;

    // Release reset
    reset = 0;

    // T = 0 -> Hold
    t = 0;
    #10;

    // T = 1 -> Toggle
    t = 1;
    #10;

    // T = 1 -> Toggle
    t = 1;
    #10;

    // T = 0 -> Hold
    t = 0;
    #10;

    // T = 1 -> Toggle
    t = 1;
    #10;

    // T = 1 -> Toggle
    t = 1;
    #10;

    // Finish simulation
    $finish;
end

endmodule
