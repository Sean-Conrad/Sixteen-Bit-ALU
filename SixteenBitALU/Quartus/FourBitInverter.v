module FourBitInverter(a, Out);
	input [3:0] a;
	output [3:0] Out;
	assign Out[0] = !a[0];
	assign Out[1] = !a[1];
	assign Out[2] = !a[2];
	assign Out[3] = !a[3];
endmodule