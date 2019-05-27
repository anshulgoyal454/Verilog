module adder(output sum,input Ci,a,b,inout Co);
assign sum=a^b^Ci;
assign Co=(a&b)|(a&Ci)|(b&Ci);
endmodule
module add4(Cin,A,B,Cout,S);
output Cout;
output [3:0]S;
input Cin;
input [3:0]A,B;
wire c0,c1,c2;
adder a0(S[0],Cin,A[0],B[0],c0);
adder a1(S[1],c0,A[1],B[1],c1);
adder a2(S[2],c1,A[2],B[2],c2);
adder a3(S[3],c2,A[3],B[3],Cout);
endmodule