module core_datapath(input clk,reset,input [1:0] Result_src,input memwrite,input [2:0] alu_control,input alu_src,pc_src,input [1:0] imm_src,input regwrite,input [31:0] instr,output zero,
                     input [31:0] read_data,output [31:0] pc,output [31:0] aluresult,write_data);

  wire [31:0]pc_next,pc_plus4,immext,pc_target;
  wire [31:0] srca,srcb,immext;
  wire [31:0] result;
  wire [31:0] readdata;
  program_counter pc(.clk(clk),.reset(reset),.PC_next(pc_next),.PC(pc));

  pc_plus4 pc_4(.pc(pc),.pc_plus4(pc_plus4));
  
  pc_target PC_target(.pc(pc),.immext(immext),.pc_target(pc_target));
  
  pc_mux pc_mux_inst(.pc_src(pc_src),.pc_plus4(pc_plus4),.pc_target(pc_target),.pcnext(pc_next));
  
  reg_file reg_file_inst(.clk(clk),.we3(regwrite),.A1(instr[19:15]),.A2(instr[24:20]),.A3(instr[11:7]),.wd3(aluresult),.RD1(srca),.RD2(srcb));
  
  Extend extend_inst(.instr(instr[31:7]),.immsrc(imm_src),.immext(immext));
  
  alu_mux alu_mux_inst(.alusrc(alu_src),.rd2(srcb),.immext(immext),.srcb(srcb));
  
  alu alu_inst(.alu_control(alu_control),.srca(srca),.srcb(srcb),.zero(zero),.result(aluresult));
  
  result_mux result_mux_inst(.alu_result(result),.Result_src(resultsrc),.rd_data(readdata),.pc_plus4(pc_plus4),.wd3(write_data);
