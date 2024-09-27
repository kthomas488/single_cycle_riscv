module pc_target(input wire [31:0]pc,input wire [31:0]immext,output wire [31:0]pc_target);
  assign pc_target = pc +immext;
endmodule
