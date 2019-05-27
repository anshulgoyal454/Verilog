module Priority1032(Y1,Y0,I3,I2,I1,I0);
output Y1,Y0;
input I3,I2,I1,I0;
assign Y1= (I2&~I1&~I0)|(I3&~I1&~I0);
assign Y0= (I3&~I0)|I1;
endmodule