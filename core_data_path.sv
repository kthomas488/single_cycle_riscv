module core_datapath(input clk,reset,input [1:0] Result_src,input memwrite,input [2:0] alu_control,input alu_src,input [1:0] imm_src,input regwrite,input [31:0] instr,output zero,
                     input [31:0] read_data,output [31:0] pc,output [31:0] aluresult,write_data);

  wire [31:0]pc_next,pc_plus4;
  program_counter pc(.clk(clk),.reset(reset),.PC_next(pc_next),.PC(pc));

  pc_plus4 pc_4(.pc(pc),.pc_plus4(pc_plus4));
