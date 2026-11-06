
`timescale 1ns/1ps

module tb_counter;

// 1. Declare testbench signals
reg clk;
reg rst;
wire [3:0] count;

// 2. Instantiate the actual counter design
counter_4bit DUT (
    .clk(clk),
    .rst(rst),
    .count(count)
);

// 3. Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// 4. Apply test inputs
initial begin

    // Waveform generation
    $dumpfile("counter.vcd");
    $dumpvars(0, tb_counter);

    // Reset active initially
    rst = 1;

    // Wait for two falling clock edges
    repeat (2) @(negedge clk);

    // Release reset
    rst = 0;

    // Allow counter to count for 18 cycles
    repeat (18) @(negedge clk);

    // Apply reset again
    rst = 1;

    repeat (2) @(negedge clk);

    rst = 0;

    // Allow five more cycles
    repeat (5) @(negedge clk);

    $finish;
end

// 5. Display simulation results
initial begin
    $monitor("Time=%0t | CLK=%b | RST=%b | COUNT=%b | Decimal=%0d",
             $time, clk, rst, count, count);
end

endmodule
