module accu(in, acc, clk, reset); 
input [7:0] in; 
input clk, reset; 
output reg [7:0]acc; 
always @(negedge clk) 
begin 
 if (reset)  
 acc<=0; 
 else  
 acc<=acc+in; 
end 
endmodule
