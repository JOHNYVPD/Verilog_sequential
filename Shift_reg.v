module Shift_reg(clock,W,Q); 
input clock,W; 
output reg[3:0]Q; 
always@(negedge clock) 
begin 
 Q[3]=W; 
 Q[2]=Q[3]; 
 Q[1]=Q[2]; 
 Q[0]=Q[1]; 
end 
endmodule
