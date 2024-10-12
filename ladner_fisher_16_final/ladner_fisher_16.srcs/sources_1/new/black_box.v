module black_box(
input wire gen_L,gen_R,prop_L,prop_R,
output wire gen_block,prop_block);
    
reg gen_block_reg,prop_block_reg;

always@* begin
gen_block_reg=(prop_L&gen_R)|gen_L;
prop_block_reg=prop_R&prop_L;
end

assign gen_block=gen_block_reg;
assign prop_block=prop_block_reg;

endmodule
