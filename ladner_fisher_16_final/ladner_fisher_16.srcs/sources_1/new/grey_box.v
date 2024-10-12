`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2024 11:27:53
// Design Name: 
// Module Name: grey_box
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


module grey_box(
input wire gen_L,gen_R,prop_L,
output wire gen_block
    );
    
   reg gen_block_reg;
   
   always@* gen_block_reg=(gen_R&prop_L)|gen_L;
   
   assign gen_block=gen_block_reg;
   
endmodule
