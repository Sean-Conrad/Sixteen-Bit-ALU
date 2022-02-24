module FullSubtractor(a, b, bin, Bout, Diff);
	input  a;
	input  b;
	input bin;
	output Diff;
	output Bout;
	wire[5:0]W;
	assign W[0] = a^b;
	assign W[1] = b&bin;
	assign W[2] = bin^W[0]; // Diff
	assign W[3] = b|bin; 
	assign W[4] = !a&W[3]; 
	assign W[5] = W[1]|W[4]; //Bout
	assign Diff = W[2];
	assign Bout = W[5];
endmodule