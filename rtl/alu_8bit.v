// Code your design here
`timescale 1ns/1ps
module alu_8bit(
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] OP,
    output reg [7:0] RESULT,
    output reg       CARRY
);

always @(*) begin

    RESULT = 8'b00000000;
    CARRY  = 1'b0;

    case (OP)

        3'b000: begin
            {CARRY, RESULT} = A + B;
        end

        3'b001: begin
            {CARRY, RESULT} = A - B;
        end

        3'b010: begin
            RESULT = A & B;
        end

        3'b011: begin
            RESULT = A | B;
        end

        3'b100: begin
            RESULT = A ^ B;
        end

        3'b101: begin
            RESULT = ~A;
        end

        3'b110: begin
            {CARRY, RESULT} = A + 1'b1;
        end

        3'b111: begin
            {CARRY, RESULT} = A - 1'b1;
        end

        default: begin
            RESULT = 8'b00000000;
            CARRY  = 1'b0;
        end

    endcase

end

endmodule
