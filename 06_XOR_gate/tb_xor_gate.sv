`timescale 1ns/1ps

module tb_xor_gate;

reg A,B;
wire Y;

xor_gate uut (
	.A(A),
	.B(B),
	.Y(Y)
);

initial begin 
	$dumpfile("xor_gate.vcd");
	$dumpvars(0, tb_xor_gate);
	
	A=0; B=0; #10;
	A=0; B=1; #10;
	A=1; B=0; #10;
	A=1; B=1; #10;

	$finish;
end

endmodule
