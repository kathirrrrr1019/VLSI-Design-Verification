module mux2to1(
    input logic A,
    input logic B,
    input logic S,
    output logic Y
);

assign Y = (~S & A) | (S & B);

endmodule
