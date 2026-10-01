module tb_and_gate;

    logic A;
    logic B;
    logic Y;

    and_gate dut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
        $dumpfile("and_gate.vcd");
        $dumpvars(0, tb_and_gate);

        A = 0; B = 0;
        #10;
        $display("A=%b B=%b Y=%b", A, B, Y);

        A = 0; B = 1;
        #10;
        $display("A=%b B=%b Y=%b", A, B, Y);

        A = 1; B = 0;
        #10;
        $display("A=%b B=%b Y=%b", A, B, Y);

        A = 1; B = 1;
        #10;
        $display("A=%b B=%b Y=%b", A, B, Y);

        $finish;

    end

endmodule