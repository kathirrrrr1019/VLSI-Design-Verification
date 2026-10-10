module half_adder(
    input logic A,
    input logic B,
    output logic Sum,
    output logic Carry
);

assign Sum = A ^ B;
assign Carry = A & B;

endmodule
