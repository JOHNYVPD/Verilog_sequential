module com(A,B,G,E,S); 
input [1:0]A,B; 
output reg G,E,S; 
always@* 
begin 
if (A>B) 
begin  
G=1'b1; 
E=1'b0; 
S=1'b0; 
end  
else if (A==B) 
begin  
G=1'b0; 
E=1'b1; 
S=1'b0; 
end  
else 
begin  
G=1'b0; 
E=1'b0; 
S=1'b1; 
end  
end 
endmodule

