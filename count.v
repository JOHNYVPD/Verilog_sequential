module count (D,clk,q,reset);
input D,clk,reset;
output reg [3:0]q;
always @ (posedge clk, negedge reset)
begin
if (reset==0)
q<=0;
else if(D==1)
q<=q+1;
else
q<=0;
end
endmodule
