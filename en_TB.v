`timescale 1ns/1ps
module en_TB; 
reg [3:0]D; 
wire [1:0]Y; 
wire V;
integer i;  
 en fb(D,Y,V);

initial
begin
$monitor ("D=%b,Y=%b,V=%b",D,Y,V);

for(i=0;i<=15;i=i+1)
begin
#5 D=i;
end
#5 $finish;
end
endmodule

 