module tb_half_adder;

logic A;
logic B;
logic Sum;
logic Carry;

half_adder uut (
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin

    $dumpfile("half_adder.vcd");
    $dumpvars(0, tb_half_adder);

    A = 0; B = 0;
    #10;

    A = 0; B = 1;
    #10;

    A = 1; B = 0;
    #10;

    A = 1; B = 1;
    #10;

    $finish;

end

endmodule
