`timescale 1ns/1ps

module tb_nand_gate;

reg A, B;
wire Y;
nand_gate uut(
	.A(A),
	.B(B),
	.Y(Y)
);
initial begin
	$dumpfile("nand_gate.vcd");
	$dumpvars(0, tb_nand_gate);
	
	A= 0; B=0;
	#10
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
