module data_mem(input wire clk,we,input wire [31:0] alu_result,write_data,output wire [31:0]read_data);

  reg [31:0] mem [63:0];

  assign read_data = mem[alu_result[31:2]];

  always@(posedge clk) begin
    if(WE)
      mem[alu_result[31:2]]<= write_data;
  end

endmodule

  
