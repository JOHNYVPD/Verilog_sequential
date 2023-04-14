`timescale 1ns/1ps
module shift_reg_TB; 
reg clock,W; 
wire [3:0]Q; 
shift_reg fb(clock,W,Q);
initial
begin
clock=0;
end
always
#3 clock=~clock;

initial
begin
 W=0;
#6 W=1;
#6 W=0;
#6 W=1;
#6 W=0;
#6 W=1;
#6 $finish;
end
endmodule
