module control_unit(input wire [6:0] op,input wire [2:0]funct3,input wire funct7,
                    output wire pcsrc,resultsrc,memwrite,alusrc,regwrite,
                    output wire [1:0]immsrc,output wire [2:0]alu_control);

  wire [2:0] ALU_op;
  Main_decoder main_decoder(.op(op),.pcsrc(pcsrc),.resultsrc(resultsrc),.memwrite(memwrite),.alusrc(alusrc),.immsrc(immsrc),.regwrite(regwrite),.ALU_op(ALU_op));
  ALU_decoder alu_decoder(.op(op),.funct3(funct3),.funct7(funct7),.ALU_op(ALU_op),.alu_control(alu_control));

  endmodule
                          
