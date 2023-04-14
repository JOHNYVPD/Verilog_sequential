module D_latch (D,CLK,Q);
input D,CLK;
output reg Q;
always @ (*)
begin
if (CLK)
Q<=D;
end
endmodule

