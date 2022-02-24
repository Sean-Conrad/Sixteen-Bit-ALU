module SixteenBitAdder (a, b, cin, Cout, Sum);
	input [15:0] a;
	input [15:0] b;
	input cin;
	output [15:0] Sum;
	output Cout;
	wire [15:0] Z;
	wire [3:0] W;
	FourBitAdder FA0(.a(a[3:0]), .b(b[3:0]), .cin(cin), .Cout(W[0]), .Sum(Z[3:0]));
	FourBitAdder FA1(.a(a[7:4]), .b(b[7:4]), .cin(W[0]), .Cout(W[1]), .Sum(Z[7:4])); 
	FourBitAdder FA2(.a(a[11:8]), .b(b[11:8]), .cin(W[1]), .Cout(W[2]), .Sum(Z[11:8])); 
	FourBitAdder FA3(.a(a[15:12]), .b(b[15:12]), .cin(W[2]), .Cout(W[3]), .Sum(Z[15:12]));
	assign Sum[15:0] = Z[15:0];
	assign Cout = W[3];
endmodule
