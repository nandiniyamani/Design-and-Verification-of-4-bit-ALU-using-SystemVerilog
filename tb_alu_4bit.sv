`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2025 18:59:38
// Design Name: 
// Module Name: tb_alu_4bit
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


`timescale 1ns / 1ps

module tb_alu_4bit;

    // input and output declarations
    logic [3:0] A, B;
    logic [2:0] ALU_Sel;
    logic [3:0] ALU_Out;
    logic CarryOut;
    logic Zero;
    
    logic [3:0] expected_result;
    logic expected_zero;

    // Instantiate DUT
    alu_4bit uut (
        .A(A),
        .B(B),
        .op_code(ALU_Sel),
        .result(ALU_Out),
        .carry_out(CarryOut),
        .zero(Zero)
    );

    initial begin
        // Initialize inputs
        A = 4'b0101; 
        B = 4'b0011; 
        
        // Loop through all ALU operations
        for (int i = 0; i < 8; i++) begin
            ALU_Sel = i;
            #1; // small delay of 1ns for ALU to process    

            // expected output calculation  
            case (ALU_Sel)
                3'b000: expected_result = A + B;
                3'b001: expected_result = A - B;
                3'b010: expected_result = A & B;
                3'b011: expected_result = A | B;
                3'b100: expected_result = A ^ B;
                3'b101: expected_result = ~A;
                3'b110: expected_result = A << 1;
                3'b111: expected_result = A >> 1;
                default: expected_result = 4'b0000;
            endcase

            expected_zero = (expected_result == 4'b0000);

            #9; // Wait for remaining time in 10ns

            // Compare actual vs expected results
            if (ALU_Out !== expected_result || Zero !== expected_zero) begin
                $error("Mismatch at time %0t: ALU_Sel=%b, Expected: %b, Got: %b | Expected Zero=%b, Got Zero=%b",
                       $time, ALU_Sel, expected_result, ALU_Out, expected_zero, Zero);
            end else begin
                $display("PASS at time %0t: ALU_Sel=%b, Result=%b, Zero=%b", 
                         $time, ALU_Sel, ALU_Out, Zero);
            end
        end

        $display("All tests completed.");
        $finish;
    end

endmodule

       
  