`timescale 1ns/1ps

module tb_nor_gate;

reg A, B;
wire Y;

nor_gate uut (
    .A(A),
    .B(B),
    .Y(Y)
);
initial begin

    $dumpfile("nor_gate.vcd");
    $dumpvars(0, tb_nor_gate);

    $monitor("Time=%0t A=%b B=%b Y=%b", $time, A, B, Y);
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
    $finish;

end

endmodule
