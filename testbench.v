`timescale 1ns/1ps

module testbench;

reg clk;
reg reset;

cpu_top dut (
    .clk(clk),
    .reset(reset)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    reset = 1;
    #20 reset = 0;
    #2000 $stop;
end

endmodule