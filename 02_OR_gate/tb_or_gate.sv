`timescale 1ns/1ps

module tb_or_gate;

reg A, B;
wire Y;

or_gate uut (
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    $dumpfile("or_gate.vcd");
    $dumpvars(0, tb_or_gate);

    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;
end

endmodule
