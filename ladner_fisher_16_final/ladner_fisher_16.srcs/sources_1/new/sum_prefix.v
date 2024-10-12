module sum_prefix(
input wire prop_A_B,gen,
output wire sum);

reg sum_reg;

always@* sum_reg=prop_A_B^gen;

assign sum=sum_reg;

endmodule

