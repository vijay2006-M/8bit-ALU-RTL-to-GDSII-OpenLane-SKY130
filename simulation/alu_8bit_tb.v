// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module testbench;

    reg [7:0] A;
    reg [7:0] B;
    reg [2:0] OP;

    wire [7:0] RESULT;
    wire CARRY;

    alu_8bit uut (
        .A(A),
        .B(B),
        .OP(OP),
        .RESULT(RESULT),
        .CARRY(CARRY)
    );

    initial begin

        $dumpfile("alu8bit.vcd");
        $dumpvars(0, testbench);

        // ADD
        A = 8'd10;
        B = 8'd5;
        OP = 3'b000;
        #10;

        // SUB
        A = 8'd10;
        B = 8'd5;
        OP = 3'b001;
        #10;

        // AND
        A = 8'b10101010;
        B = 8'b11001100;
        OP = 3'b010;
        #10;

        // OR
        OP = 3'b011;
        #10;

        // XOR
        OP = 3'b100;
        #10;

        // NOT
        A = 8'b10101010;
        OP = 3'b101;
        #10;

        // INC
        A = 8'd255;
        OP = 3'b110;
        #10;

        // DEC
        A = 8'd10;
        OP = 3'b111;
        #10;

        $finish;

    end

endmodule
