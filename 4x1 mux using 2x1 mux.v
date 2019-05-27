module mux2(out,a,b,s);
input a,b,s;
output out;
wire a1,a2,sc;
not(sc,s);
and(a1,a,sc);
and(a2,b,s);
or(out,a1,a2);
endmodule
module mux4(OP,i0,i1,i2,i3,s1,s0);
input i0,i1,i2,i3,s1,s0;
output OP;
wire m1,m2;
mux2 mux_1(m1,i0,i1,s0);
mux2 mux_2(m2,i2,i3,s0);
mux2 mux_3(OP,m1,m2,s1);
endmodule