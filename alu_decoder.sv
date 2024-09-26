module alu_decoder(input wire [1:0] ALU_op,input wire [2:0] funct3,input wire op,funct7,output reg [2:0]alu_control);

  wire R_typesub;
  
  assign R_typesub = op & funct7; // for subtraction instruction
  always@(*) begin
    case(ALU_op)
      2'b00:alu_control<=3'b000;
      2'b01:alu_control<=3'b001;
      2'b10:case(funct3)
        3'b000:if(R_typesub)
          alu_control <= 3'b001;
        else
          alu_control <= 3'b000;
        3'b010:alu_control <= 3'b101;
        3'b110:alu_control <= 3'b011;
        3'b111:alu_control <= 3'b010;
      default:alu_control <= 3'bxxx;
   endcase
end
endmodule
      
      
