module SixteenBitSubtractor (a, b, bin, Bout, Diff);
	input [15:0] a;
	input [15:0] b;
	input bin;
	output [15:0] Diff;
	output Bout;
	wire [15:0] Z;
	wire [3:0] W;
	FourBitSubtractor FS0(.a(a[3:0]), .b(b[3:0]), .bin(bin), .Bout(W[0]), .Diff(Z[3:0]));
	FourBitSubtractor FS1(.a(a[7:4]), .b(b[7:4]), .bin(W[0]), .Bout(W[1]), .Diff(Z[7:4])); 
	FourBitSubtractor FS2(.a(a[11:8]), .b(b[11:8]), .bin(W[1]), .Bout(W[2]), .Diff(Z[11:8])); 
	FourBitSubtractor FS3(.a(a[15:12]), .b(b[15:12]), .bin(W[2]), .Bout(W[3]), .Diff(Z[15:12]));
	assign Diff[15:0] = Z[15:0];
	assign Bout = W[3];	
endmodule
