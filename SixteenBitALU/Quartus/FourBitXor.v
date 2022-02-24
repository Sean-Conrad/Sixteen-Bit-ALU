module FourBitXor (a, b, Out);
	input [3:0] a;
	input [3:0] b;
	output [3:0] Out;
	wire [3:0] Z;
	wire [3:0] W;
	wire N = 1;
	wire [3:0] A;
	xor(Out[0], a[0], b[0]);
	xor(Out[1], a[1], b[1]);
	xor(Out[2], a[2], b[2]);	
	xor(Out[3], a[3], b[3]);
endmodule