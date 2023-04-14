module jk_f(j,k,clk,q,qb);
input j,k,clk;
output reg q,qb;
always @(posedge clk)
begin
case ({j,k})
2'b00 :
begin 
q<=q;
qb<=qb;
end
2'b01 : 
begin
q<=0;
qb<=0;
end
2'b10 : 
begin
q<=0;
qb<=1;
end
2'b11 : 
begin
q<=~q;
qb<=~qb;
end
endcase
end
endmodule
