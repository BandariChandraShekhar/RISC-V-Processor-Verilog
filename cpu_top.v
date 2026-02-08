module cpu_top (
    input clk,
    input reset
);

    wire [31:0] pc;
    wire [31:0] pc_next;
    wire [31:0] instruction;

    // PC increment logic
    assign pc_next = pc + 32'd4;

    // Program Counter
    pc pc_unit (
        .clk(clk),
        .reset(reset),
        .pc_next(pc_next),
        .pc(pc)
    );

    // Instruction Memory
    instruction_memory imem (
        .addr(pc),
        .instr(instruction)
    );

endmodule