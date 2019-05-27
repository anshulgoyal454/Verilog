module mux8_1(y,i,s);
output[7:0]y;
input i;
input[2:0]s;
wire w2,w1,w0;
not(w2,s[2]);
not(w1,s[1]);
not(w0,s[0]);
and(y[0],i,w2,w1,w0);
and(y[1],i,w2,w1,s[0]);
and(y[2],i,w2,s[1],w0);
and(y[3],i,w2,s[1],s[0]);
and(y[4],i,s[2],w1,w0);
and(y[5],i,s[2],w1,s[0]);
and(y[6],i,s[2],s[1],w0);
and(y[7],i,s[2],s[1],s[0]);
endmodule