module SixteenBitInverter (a, Out);
	input [15:0] a;
	output [15:0] Out;
	wire [15:0]W;
	FourBitInverter I0 (.a(a[3:0]), .Out(W[3:0]));
	FourBitInverter I1 (.a(a[7:4]), .Out(W[7:4]));
	FourBitInverter I2 (.a(a[11:8]), .Out(W[11:8]));
	FourBitInverter I3 (.a(a[15:12]), .Out(W[15:12]));
	assign Out[15:0] = W[15:0];
endmodule

