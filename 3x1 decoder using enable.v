module dec_8(Y,I);
input[2:0]I;
output[7:0]Y;
wire[2:0]IN;
not(IN[0],I[0]);
not(IN[1],I[1]);
not(IN[2],I[2]);
and(Y[0],IN[0],IN[1],IN[2]);
and(Y[1],IN[0],IN[1],I[2]);
and(Y[2],IN[0],I[1],IN[2]);
and(Y[3],IN[0],I[1],I[2]);
and(Y[4],I[0],IN[1],IN[2]);
and(Y[5],I[0],IN[1],I[2]);
and(Y[6],I[0],I[1],IN[2]);
and(Y[7],I[0],I[1],I[2]);
endmodule