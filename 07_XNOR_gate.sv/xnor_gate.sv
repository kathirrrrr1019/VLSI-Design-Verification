module xnor_gate(
	input logic A,
	input logic B,
	output Y
);

assign Y=~(A^B);

endmodule
