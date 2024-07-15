// counter_tb.v
`timescale 1ns/1ps

module counter_tb;

reg clk;
reg rst;
wire [3:0] count;

counter uut (
    .clk(clk),
    .rst(rst),
    .count(count)
);

initial begin
    $dumpfile("counter_tb.vcd");
    $dumpvars(0, counter_tb);

    // Initialize inputs
    clk = 0;
    rst = 1;
    #10;
    
    rst = 0;
    #100;

    // Finish simulation
    $finish;
end

// Clock generation
always #5 clk = ~clk;

endmodule