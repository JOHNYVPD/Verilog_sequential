`timescale 1ns/1ps
module com_TB; 
reg [1:0]A,B; 
wire G,E,S; 
com fb(A,B,G,E,S); 
initial
begin
$monitor ("A=%b,B=%b,G=%b,E=%b,S=%b",A,B,G,E,S);

A=2'b00;B=2'b00;
#5 B=2'b01;
#5 A=2'b01;B=2'b00;
#5 A=2'b11;B=2'b11;

#5 $finish;
end
endmodule
