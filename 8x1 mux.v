module 8x1(out, s0, s1, s2, a, b, c, d, e, f, g, h);
input s0, s1, s2, a, b, c, d, e, f, g, h;
output out;
assign out = (~s0 & ~s1 & ~s2 & a) | (s0 & ~s1 & ~s2 & b) | (~s0 & s1 & ~s2 & c) | (s0 & s1 & ~s2 & d) | (~s0 & ~s1 & s2 & e) | (s0 & ~s1 & s2 & f) | (~s0 & s1 & s2 & g) | (s0 & s1 & s2 & h);