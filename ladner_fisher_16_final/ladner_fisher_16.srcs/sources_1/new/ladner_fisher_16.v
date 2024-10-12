`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2024 14:58:56
// Design Name: 
// Module Name: ladner_fisher_16
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


module ladner_fisher_16(
input wire[15:0] A,B,
input wire Cin,
output wire [15:0] sum,
output wire carry_out
    );
    
    wire[15:0] gen,prop;
    wire[7:0] gen_block_layer1;
    wire[7:0] prop_block_layer1;
    wire[7:0] gen_block_layer2;
    wire[7:0] prop_block_layer2;
    wire[7:0] gen_block_layer3;
    wire[7:0] prop_block_layer3;
    wire[7:0] gen_block_layer4;
    
gen_prop gp0(A[0], B[0], gen[0], prop[0]);
gen_prop gp1(A[1], B[1], gen[1], prop[1]);
gen_prop gp2(A[2], B[2], gen[2], prop[2]);
gen_prop gp3(A[3], B[3], gen[3], prop[3]);
gen_prop gp4(A[4], B[4], gen[4], prop[4]);
gen_prop gp5(A[5], B[5], gen[5], prop[5]);
gen_prop gp6(A[6], B[6], gen[6], prop[6]);
gen_prop gp7(A[7], B[7], gen[7], prop[7]);
gen_prop gp8(A[8], B[8], gen[8], prop[8]);
gen_prop gp9(A[9], B[9], gen[9], prop[9]);
gen_prop gp10(A[10], B[10], gen[10], prop[10]);
gen_prop gp11(A[11], B[11], gen[11], prop[11]);
gen_prop gp12(A[12], B[12], gen[12], prop[12]);
gen_prop gp13(A[13], B[13], gen[13], prop[13]);
gen_prop gp14(A[14], B[14], gen[14], prop[14]);
gen_prop gp15(A[15], B[15], gen[15], prop[15]);

//layer 1

grey_box GB1(gen[0],Cin,prop[0],gen_block_layer1[0]);//cout[0]
black_box BB1(gen[2], gen[1], prop[2], prop[1], gen_block_layer1[1], prop_block_layer1[1]); // gen_prop[2:1]
black_box BB2(gen[4], gen[3], prop[4], prop[3], gen_block_layer1[2], prop_block_layer1[2]); // gen_prop[4:3]
black_box BB3(gen[6], gen[5], prop[6], prop[5], gen_block_layer1[3], prop_block_layer1[3]); // gen_prop[6:5]
black_box BB4(gen[8], gen[7], prop[8], prop[7], gen_block_layer1[4], prop_block_layer1[4]); // gen_prop[8:7]
black_box BB5(gen[10], gen[9], prop[10], prop[9], gen_block_layer1[5], prop_block_layer1[5]); // gen_prop[10:9]
black_box BB6(gen[12], gen[11], prop[12], prop[11], gen_block_layer1[6], prop_block_layer1[6]); // gen_prop[12:11]
black_box BB7(gen[14], gen[13], prop[14], prop[13], gen_block_layer1[7], prop_block_layer1[7]); // gen_prop[14:13]

//layer 2
grey_box GB2(gen[1],gen_block_layer1[0],prop[1],gen_block_layer2[0]);//cout[1]
grey_box GB3(gen_block_layer1[1],gen_block_layer1[0],prop[1],gen_block_layer2[1]);//cout[2]
black_box BB8(gen[5], gen_block_layer1[2] , prop[5], prop_block_layer1[2] , gen_block_layer2[2], prop_block_layer2[2]); //gen_prop[5:3]
black_box BB9(gen_block_layer1[3], gen_block_layer1[2] , prop_block_layer1[3], prop_block_layer1[2] , gen_block_layer2[3], prop_block_layer2[3]); //gen_prop[6:3]
black_box BB10(gen[9], gen_block_layer1[4] , prop[9], prop_block_layer1[4] , gen_block_layer2[4], prop_block_layer2[4]);//gen_prop[9:7]
black_box BB11(gen_block_layer1[5], gen_block_layer1[4] , prop_block_layer1[5], prop_block_layer1[4] , gen_block_layer2[5], prop_block_layer2[5]); //gen_prop[10:7]
black_box BB12(gen[13], gen_block_layer1[6], prop[13], prop_block_layer1[6], gen_block_layer2[6], prop_block_layer2[6]); //gen_prop[13:11]
black_box BB13(gen_block_layer1[7], gen_block_layer1[6], prop_block_layer1[7], prop_block_layer1[6], gen_block_layer2[7], prop_block_layer2[7]); //gen_prop[14:11]

//layer3
grey_box GB4(gen[3],gen_block_layer2[1],prop[3],gen_block_layer3[0]);//cout[3]
grey_box GB5(gen_block_layer1[2],gen_block_layer2[1],prop_block_layer1[2],gen_block_layer3[1]);//cout[4]
grey_box GB6(gen_block_layer2[2],gen_block_layer2[1],prop_block_layer2[2],gen_block_layer3[2]);//cout[5]
grey_box GB7(gen_block_layer2[3],gen_block_layer2[1],prop_block_layer2[3],gen_block_layer3[3]);//cout[6]

black_box BB14(gen[11], gen_block_layer2[5], prop[11] , prop_block_layer2[5], gen_block_layer3[4], prop_block_layer3[4]); //gen_prop[11:7]
black_box BB15(gen_block_layer1[6], gen_block_layer2[5], prop_block_layer1[6] , prop_block_layer2[5], gen_block_layer3[5], prop_block_layer3[5]); //gen_prop[12:7]
black_box BB16(gen_block_layer2[6], gen_block_layer2[5], prop_block_layer2[6] , prop_block_layer2[5], gen_block_layer3[6], prop_block_layer3[6]); //gen_prop[13:7]
black_box BB17(gen_block_layer2[7], gen_block_layer2[5], prop_block_layer2[7] , prop_block_layer2[5], gen_block_layer3[7], prop_block_layer3[7]); //gen_prop[14:7]

//layer 4
grey_box GB8(gen[7],gen_block_layer3[3],prop[7],gen_block_layer4[0]);//cout[7]
grey_box GB9(gen_block_layer1[4] ,gen_block_layer3[3],prop_block_layer1[4],gen_block_layer4[1]);//cout[8]
grey_box GB10(gen_block_layer2[4] , gen_block_layer3[3] , prop_block_layer2[4],gen_block_layer4[2]);//cout[9]
grey_box GB11(gen_block_layer2[5] , gen_block_layer3[3] , prop_block_layer2[5],gen_block_layer4[3]);//cout[10]
grey_box GB12(gen_block_layer3[4] , gen_block_layer3[3] , prop_block_layer3[4],gen_block_layer4[4]);//cout[11]
grey_box GB13(gen_block_layer3[5] , gen_block_layer3[3] , prop_block_layer3[5],gen_block_layer4[5]);//cout[12]
grey_box GB14(gen_block_layer3[6] , gen_block_layer3[3] , prop_block_layer3[6],gen_block_layer4[6]);//cout[13]
grey_box GB15(gen_block_layer3[7] , gen_block_layer3[3] , prop_block_layer3[7],gen_block_layer4[7]);//cout[14]

//sum
sum_prefix S0(prop[0],Cin,sum[0]);
sum_prefix S1(prop[1],gen_block_layer1[0],sum[1]);
sum_prefix S2(prop[2],gen_block_layer2[0],sum[2]);
sum_prefix S3(prop[3],gen_block_layer2[1],sum[3]);
sum_prefix S4(prop[4],gen_block_layer3[0],sum[4]);
sum_prefix S5(prop[5],gen_block_layer3[1],sum[5]);
sum_prefix S6(prop[6],gen_block_layer3[2],sum[6]);
sum_prefix S7(prop[7],gen_block_layer3[3],sum[7]);

sum_prefix S8(prop[8],gen_block_layer4[0],sum[8]);
sum_prefix S9(prop[9],gen_block_layer4[1],sum[9]);
sum_prefix S10(prop[10],gen_block_layer4[2],sum[10]);
sum_prefix S11(prop[11],gen_block_layer4[3],sum[11]);
sum_prefix S12(prop[12],gen_block_layer4[4],sum[12]);
sum_prefix S13(prop[13],gen_block_layer4[5],sum[13]);
sum_prefix S14(prop[14],gen_block_layer4[6],sum[14]);
sum_prefix S15(prop[15],gen_block_layer4[7],sum[15]);

assign carry_out= (A[15]&B[15])|(A[15]& gen_block_layer4[7])|(B[15]& gen_block_layer4[7]);


endmodule
