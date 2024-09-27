module program_counter(input wire clk,reset,input wire [31:0] PC_next,output wire [31:0] PC);

  reg [31:0] pc_reg;
  always@(posedge clk or reset)
    begin
      if(reset)
        pc_reg <= 32'b0;
      else
        pc_reg <= PC_next;
    end

  assign PC = pc_reg;

endmodule

  
