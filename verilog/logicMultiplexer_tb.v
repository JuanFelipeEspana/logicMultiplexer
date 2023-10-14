`timescale 1 ns/ 10 ps
module logicMultiplexer_tb();
   reg[3:0] x_tb;
   wire     f_tb;

   logicMultiplexer DUT (.x(x_tb),.f(fMultiplexer_tb));
   logicGates       DUT2 (.x(x_tb),.f(fGates_tb));

   initial
     begin
	x_tb = 4'b0000;
	# 200;
	x_tb = 4'b0001;
	# 200;
	x_tb = 4'b0010;
	# 200;
	x_tb = 4'b0011;
	# 200;
	x_tb = 4'b0100;
	# 200;
	x_tb = 4'b0101;
	# 200;
	x_tb = 4'b0110;
	# 200;
	x_tb = 4'b0111;
	# 200;
	x_tb = 4'b1000;
	# 200;
	x_tb = 4'b1001;
	# 200;
	x_tb = 4'b1010;
	# 200;
	x_tb = 4'b1011;
	# 200;
	x_tb = 4'b1100;
	# 200;
	x_tb = 4'b1101;
	# 200;
	x_tb = 4'b1110;
	# 200;
	x_tb = 4'b1111;
	# 200;
	$stop
      end // initial begin
endmodule
