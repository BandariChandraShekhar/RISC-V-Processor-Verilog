module immediate_generator(
    input [31:0] instruction,
    output reg [31:0] imm
);
    always @(*) begin
        case (instruction[6:0])
            7'b0000011: imm = {{20{instruction[31]}}, instruction[31:20]}; // LW
            7'b0100011: imm = {{20{instruction[31]}}, instruction[31:25], instruction[11:7]}; // SW
            default: imm = 0;
        endcase
    end
endmodule
