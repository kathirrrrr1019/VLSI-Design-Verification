module tb_mux2to1;

logic A;
logic B;
logic S;
logic Y;

mux2to1 uut (
    .A(A),
    .B(B),
    .S(S),
    .Y(Y)
);

initial begin

    $dumpfile("mux2to1.vcd");
    $dumpvars(0, tb_mux2to1);

    A = 0; B = 0; S = 0;
    #10;

    A = 0; B = 1; S = 0;
    #10;

    A = 1; B = 0; S = 0;
    #10;

    A = 1; B = 1; S = 0;
    #10;

    A = 0; B = 0; S = 1;
    #10;

    A = 0; B = 1; S = 1;
    #10;

    A = 1; B = 0; S = 1;
    #10;

    A = 1; B = 1; S = 1;
    #10;

    $finish;

end

always #5 $display("Time=%0t A=%b B=%b S=%b Y=%b", $time, A, B, S, Y);

endmodule
