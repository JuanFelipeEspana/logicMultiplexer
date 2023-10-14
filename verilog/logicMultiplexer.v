module logicMultiplexer
  (
   input wire[3:0] x,
   output wire f
   );

   assign f = (x[0]==x[1])&(x[2]==x[3]) ? 1'b1  :
	      1'b0;
endmodule
