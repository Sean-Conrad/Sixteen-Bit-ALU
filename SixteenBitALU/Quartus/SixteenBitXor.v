module SixteenBitXor (a, b, Out);
	input [15:0] a;
	input [15:0] b;
	output [15:0] Out;
	wire [15:0] Z;
	wire [3:0] W;
	FourBitXor FX0(.a(a[3:0]), .b(b[3:0]), .Out(Z[3:0]));
	FourBitXor FX1(.a(a[7:4]), .b(b[3:0]), .Out(Z[7:4])); 
	FourBitXor FX2(.a(a[11:8]), .b(b[3:0]), .Out(Z[11:8])); 
	FourBitXor FX3(.a(a[15:12]), .b(b[3:0]), .Out(Z[15:12]));
	assign Out[15:0] = Z[15:0];
endmodule
