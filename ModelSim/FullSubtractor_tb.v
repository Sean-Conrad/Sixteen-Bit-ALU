module FullSubtractor_tb();





















FullSubtractor FullSubtractor_inst
(
	.a(a_sig) ,	// input [3:0] a_sig
	.b(b_sig) ,	// input [3:0] b_sig
	.bin(bin_sig) ,	// input  bin_sig
	.Bout(Bout_sig) ,	// output  Bout_sig
	.Diff(Diff_sig) 	// output [3:0] Diff_sig
);
