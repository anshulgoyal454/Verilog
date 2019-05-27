module T_FF(Q,T,clk,reset);
output Q;
input T,clk,reset;
reg Q;
always @(posedge clk or posedge reset)
begin
if(reset)
Q<=1'b0;
else begin
case(T)
1'b0:Q<=Q;
1'b1:Q<=~Q;
endcase
end
end
endmodule