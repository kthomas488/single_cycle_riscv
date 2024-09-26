module instruction_mem(input [31:0] A,output [31:0] RD);

  reg [31:0] mem [63:0];
  
  initial begin
    $readmemh("instructions.txt",mem);
  end

  assign RD = mem[31:2];
endmodule
