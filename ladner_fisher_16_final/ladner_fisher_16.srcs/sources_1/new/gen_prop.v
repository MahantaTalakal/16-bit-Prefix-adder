module gen_prop (
input wire a,b,
output wire gen,prop);
    
reg gen_reg,prop_reg;

always@* begin
gen_reg=a&b;
prop_reg=a^b;
end

assign gen=gen_reg;
assign prop=prop_reg;

endmodule
