module FourBitSubtractor (a, b, bin, Bout, Diff);
	input [3:0] a;
	input [3:0] b;
	input bin;
	output [3:0] Diff;
	output Bout;
	wire [3:0] Z;
	wire [3:0] W;
	FullSubtractor Fs0(.a(a[0]), .b(b[0]), .bin(bin), .Bout(W[0]), .Diff(Z[0]));
	FullSubtractor Fs1(.a(a[1]), .b(b[1]), .bin(W[0]), .Bout(W[1]), .Diff(Z[1])); 
	FullSubtractor Fs2(.a(a[2]), .b(b[2]), .bin(W[1]), .Bout(W[2]), .Diff(Z[2])); 
	FullSubtractor Fs3(.a(a[3]), .b(b[3]), .bin(W[2]), .Bout(W[3]), .Diff(Z[3]));
	assign Diff[3:0] = Z[3:0];
	assign Bout = W[3];
endmodule
