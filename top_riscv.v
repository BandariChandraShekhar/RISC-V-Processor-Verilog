module top_riscv(input clk, input reset);

    wire [31:0] pc, pc_next, instruction;
    wire [31:0] rd1, rd2, alu_out, mem_data, imm;
    wire reg_write, alu_src, mem_read, mem_write, mem_to_reg;
    wire [1:0] alu_op;
    wire [3:0] alu_ctrl;

    assign pc_next = pc + 4;

    pc PC(clk, reset, pc_next, pc);
    instruction_memory IM(pc, instruction);
    register_file RF(clk, reg_write,
        instruction[19:15], instruction[24:20], instruction[11:7],
        mem_to_reg ? mem_data : alu_out,
        rd1, rd2);

    immediate_generator IG(instruction, imm);
    control_unit CU(instruction[6:0], reg_write, alu_src, mem_read, mem_write, mem_to_reg, alu_op);
    alu_control AC(alu_op, instruction[14:12], instruction[30], alu_ctrl);

    alu ALU(rd1, alu_src ? imm : rd2, alu_ctrl, alu_out, );
    data_memory DM(clk, mem_read, mem_write, alu_out, rd2, mem_data);

endmodule
