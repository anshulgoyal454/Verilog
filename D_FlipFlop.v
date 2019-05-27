module D_FF(Q,D,clk,reset);
output Q;
input D,clk,reset;
reg Q;
always @(posedge clk or posedge reset)
begin
if(reset)
Q<=1'b0;
else begin
case(D)
1'b0:Q<=1'b0;
1'b1:Q<=1'b1;
endcase
end
end
endmodule