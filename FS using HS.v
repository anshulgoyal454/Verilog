module hs(diff,borrow,a,b);
output diff,borrow;
input a,b;
wire an;
not(an,a);
xor(diff,a,b);
and(borrow,an,b);
endmodule
module fs(D,Bout,A,B,BI);
output D,Bout;
input A,B,BI;
wire w1,w2,w3;
hs h1(w1,w2,A,B);
hs h2(D,w3,w1,BI);
or(Bout,w2,w3);
endmodule