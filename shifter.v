module shifter (w,clk,q);
input w,clk;
output reg [3:0]q;
always @ (posedge clk)
begin
q[0]<=w;
q[1]<=q[0];
q[2]<=q[1];
q[3]<=q[2];
end
endmodule
