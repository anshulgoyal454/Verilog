module parallel_load(Q,clk,reset,load,i,up_down);
output [3:0]Q;
output [3:0]i;
input clk,reset,load,up_down;
reg [3:0]Q;
always @(posedge clk or posedge reset)
begin
if(reset)
Q<=4'b0;
else if(load)
Q<=i;
else if(up_down)
Q<=Q+1;
else
Q<=Q-1;
end
endmodule