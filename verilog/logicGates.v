module logicGates
  (
   input wire[3:0] x,
   output wire f
   );

   wire [1:0]  partialProducts;
   assign partialProducts[0] = x[0] ^~ x[1];
   assign partialProducts[1] = x[2] ^~ x[3];
   assign f = partialProducts[0] ^~ partialProducts[1];
endmodule
     
