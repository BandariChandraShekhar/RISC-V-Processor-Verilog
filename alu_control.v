module alu_control(
    input [1:0] alu_op,
    input [2:0] funct3,
    input funct7,
    output reg [3:0] alu_ctrl
);
    always @(*) begin
        case (alu_op)
            2'b00: alu_ctrl = 4'b0000;
            2'b10: begin
                if (funct3 == 3'b000 && funct7 == 0)
                    alu_ctrl = 4'b0000;
                else
                    alu_ctrl = 4'b0001;
            end
            default: alu_ctrl = 4'b0000;
        endcase
    end
endmodule
