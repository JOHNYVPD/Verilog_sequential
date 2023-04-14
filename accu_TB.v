`timescale 1ns/1ps
module accu_TB; 
reg [7:0] in; 
reg clk, reset; 
wire [7:0]acc; 
integer i;

 accu fb(in, acc, clk, reset);
 initial
begin
clk=0;
 reset=0;
 end
 always
 #5 clk =~clk;

 initial
begin

$monitor( "in=%d, acc=%d, clk=%b, reset=%b",in, acc, clk, reset);
#5 reset=1;
#5 reset=0;
#15 reset=1;
#10 reset=0;
for(i=0;i<=128;i=i+1)
begin
#5 in=i;
end
#5 $finish;
end
endmodule
