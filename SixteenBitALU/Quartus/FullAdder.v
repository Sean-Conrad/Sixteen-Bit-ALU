module FullAdder(a, b, cin, Cout, Sum);
	input a;
	input b;
	input cin;
	output Sum;
	output Cout;
	wire [4:0]W;
	assign W[0] = a^b;
	assign W[1] = a&b;
	assign W[2] = cin^W[0]; // Sum
	assign W[3] = cin&W[0]; // 
	assign W[4] = W[1]|W[3]; // Carry Out
	assign Sum = W[2];
	assign Cout = W[4];
endmodule	