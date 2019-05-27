module up_down_counter(Q,clk,reset,up_down);
output [3:0]Q;
input clk,reset,up_down;
reg [3:0]Q;
always @(posedge clk or posedge reset)
begin
if(reset)
Q<=4'b0;
else if(up_down)
Q<=Q+1;
else
Q<=Q-1;
end
endmodule