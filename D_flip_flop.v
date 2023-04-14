module D_flip_flop (D,clk,Q);
input D,clk;
output reg Q;
always @ (posedge clk)
Q<=D;
endmodule

