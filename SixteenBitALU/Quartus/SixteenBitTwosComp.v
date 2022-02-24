module SixteenBitTwosComp (a, cin, Cout, Sum);
	input [15:0] a;
	input cin;
	output [15:0] Sum;
	output Cout;
	wire [15:0] Z;
	wire [15:0] S;
	wire C;
	SixteenBitInverter I0(.a(a[15:0]), .Out(Z[15:0]));
	SixteenBitAdder A0(.a(Z[15:0]), .b(16'b1), .cin(cin), .Cout(C), .Sum(S[15:0]));
	assign Sum[15:0] = S[15:0];
	assign Cout = C;
endmodule
