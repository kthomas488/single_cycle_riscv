module alu_mux(input wire alusrc,input wire [31:0]rd2,input wire [31:0]immext,output wire [31:0] srcb);
  assign srcb = (alusrc == 1'b0)?rd2:immext;
endmodule
