`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2024 13:08:54
// Design Name: 
// Module Name: tb_ladner_fisher_16
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


module tb_ladner_fisher_16;

    reg [15:0] A, B;
    reg Cin;
    wire [15:0] sum;
    wire carry_out;

    // Instantiate the DUT (Device Under Test)
    ladner_fisher_16 dut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .sum(sum),
        .carry_out(carry_out)
    );

    // Test vector initialization
    initial begin
        // Test case 1: A = 0, B = 0, Cin = 0
        A = 16'b0000000000000000;
        B = 16'b0000000000000000;
        Cin = 0;
        #10;
        $display("Test 1: A=0, B=0, Cin=0 => Sum=%b, Carry_out=%b", sum, carry_out);
        
        // Test case 2: A = 65535 (all 1s), B = 0, Cin = 0
        A = 16'b1111111111111111;
        B = 16'b0000000000000000;
        Cin = 0;
        #10;
        $display("Test 2: A=65535, B=0, Cin=0 => Sum=%b, Carry_out=%b", sum, carry_out);
        
        // Test case 3: A = 65535 (all 1s), B = 1, Cin = 0
        A = 16'b1111111111111111;
        B = 16'b0000000000000001;
        Cin = 0;
        #10;
        $display("Test 3: A=65535, B=1, Cin=0 => Sum=%b, Carry_out=%b", sum, carry_out);
        
        // Test case 4: A = 12345, B = 54321, Cin = 0
        A = 12345;
        B = 54321;
        Cin = 0;
        #10;
        $display("Test 4: A=12345, B=54321, Cin=0 => Sum=%b, Carry_out=%b", sum, carry_out);
        
        // Test case 5: A = 12345, B = 54321, Cin = 1
        A = 65535;
        B = 65535;
        Cin = 0;
        #10;
        $display("Test 5: A=12345, B=54321, Cin=1 => Sum=%b, Carry_out=%b", sum, carry_out);
        
        A = 65535;
        B = 65535;
        Cin = 1;
        #10;
        $display("Test 5: A=12345, B=54321, Cin=1 => Sum=%b, Carry_out=%b", sum, carry_out);

        // Add more test cases as needed...
        
        $stop; // Stop the simulation
    end

endmodule
