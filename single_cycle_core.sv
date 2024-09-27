module single_cycle_core(input wire clk,reset,input wire [31:0] instr,
                         input wire [31:0] read_data,
                         output wire [31:0] PC,
			 output wire memWrite,
			 output wire [31:0] aluresult,writeData
			 );

  wire result_src,alusrc,regwrite,pcsrc,immsrc;
  wire [2:0] alu_control;
  core_datapath coredatapath_inst(.clk(clk),.Result_src(result_src),.alu_control(alu_control),.alu_src(alusrc),.pc_src(pcsrc),.immsrc(immsrc),.regwwrite(regwrite),
                                  .instr(instr),.zero(zero),.read_data(read_data),.pc(pc),.aluresult(aluresult),.write_data(write_data));

  control_unit control_unit_inst(.op(instr[6:0]),.funct3(instr[14:12]),.funct7(instr[30]),.pcsrc(pcsrc),.resultsrc(result_src),.memwrite(memwrite),.alusrc(alusrc),.regwrite(regwrite),
				 .immsrc(immsrc),.alu_control(alu_control));
endmodule
  

  
