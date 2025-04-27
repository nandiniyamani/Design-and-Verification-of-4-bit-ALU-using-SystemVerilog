`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2025 18:57:12
// Design Name: 
// Module Name: alu_4bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


// alu_4bit.v
module alu_4bit (
    input  logic [3:0] A,
    input  logic [3:0] B,
    input  logic [2:0] op_code, 
    output logic [3:0] result,
    output logic carry_out,
    output logic zero
);
    always_comb begin
        carry_out = 0;
        case (op_code)
            3'b000: result = A + B;
            3'b001: result = A - B;
            3'b010: result = A & B;
            3'b011: result = A | B;
            3'b100: result = A ^ B;
            3'b101: result = ~A;
            3'b110: result = A << 1;
            3'b111: result = A >> 1;
            default: result = 4'b0000;
        endcase
        zero = (result == 0);
    end
endmodule

