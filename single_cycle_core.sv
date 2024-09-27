module single_cycle_core(input wire clk,reset,input wire [31:0] instr,
                         input wire [31:0] read_data,
                         output wire [31:0] PC,
			                   output wire 	    MemWrite,
			                   output wire [31:0] ALUResult,WriteData
			 );

  wire result_src,memwrite,alusrc,regwrite,pcsrc,immsrc;
  wire [2:0] alu_control;
  core_datapath coredatapath_inst(.clk(clk),.Result_src(result_src),.alu_control(alu_control),.alu_src(alusrc),.pc_src(pcsrc),.immsrc(immsrc),.regwwrite(regwrite),
                                  .instr(instr),.zero(zero),.read_data(read_data),.pc(pc),.aluresult(aluresult),.write_data(write_data));
  

  
