module siso(so,si,clk,reset);
output so;
input si,clk,reset;
reg [3:0]Q;
always @(posedge clk or posedge reset)
begin
if(reset)
Q<=4'b0000;
else
Q<={si,Q[3:1]};
end
assign so=Q[0];
endmodule