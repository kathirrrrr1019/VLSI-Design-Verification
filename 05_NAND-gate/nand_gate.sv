module nand_gate(
	input logic A,
	input logic B,
	output logic Y
);

assign Y= ~(A & B);

endmodule
