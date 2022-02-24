module FourBitAdder (a, b, cin, Cout, Sum);
	input [3:0] a;
	input [3:0] b;
	input cin;
	output [3:0] Sum;
	output Cout;
	wire [3:0] Z;
	wire [3:0] W;
	FullAdder Fv0(.a(a[0]), .b(b[0]), .cin(cin), .Cout(W[0]), .Sum(Z[0]));
	FullAdder Fv1(.a(a[1]), .b(b[1]), .cin(W[0]), .Cout(W[1]), .Sum(Z[1])); 
	FullAdder Fv2(.a(a[2]), .b(b[2]), .cin(W[1]), .Cout(W[2]), .Sum(Z[2])); 
	FullAdder Fv3(.a(a[3]), .b(b[3]), .cin(W[2]), .Cout(W[3]), .Sum(Z[3]));
	assign Sum[3:0] = Z[3:0];
	assign Cout = W[3];
endmodule
