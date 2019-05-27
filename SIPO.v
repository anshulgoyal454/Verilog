module sipo(a,clk,rst,q);
input clk,rst;
input a;
output [3:0]q;
wire [3:0]q;
reg [3:0]temp;
always@(posedge clk,posedge rst)
begin
if(rst==1'b1)
temp<=4'b0000;
else
begin
temp<=temp<<1'b1;
temp[0]<=a;
end
end
assign q=temp;
endmodule