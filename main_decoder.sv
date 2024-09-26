module main_decoder (input wire [6:0] op,output wire branch,resultsrc,memwrite,alursrc,regwrite,output wire [2:0] ALU_op,output wire [1:0]immsrc)

always@(*) begin
  case(op)
    7'b0000011:control_signals=10'b100101000;//lw instruction
    7'b0100011:control_signals=10'b00111x000;//sw instruction
    7'b0110011:control_signals=10'b1xx000010;//R type instruction
    7'b1100011:control_signals=10'b01000x101;//beq instruction
  endcase
end

  assign {regwrite,immsrc,alusrc,memwrite,resultsrc,branch,ALU_op} = control_signals;
endmodule
    
    
