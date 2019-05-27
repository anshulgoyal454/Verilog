module Random_counter(Q,clk,reset);
output [3:0]Q;
input clk,reset;
reg [3:0]Q;
always @(posedge clk or posedge reset)
begin
if(reset)
Q<=4'b0;
else
begin
case(Q)
4'd0:Q<=4'd4;
4'd4:Q<=4'd7;
4'd7:Q<=4'd2;
4'd2:Q<=4'd12;
4'd12:Q<=4'd8;
4'd8:Q<=4'd15;
4'd15:Q<=4'd0;
endcase
end
end
endmodule