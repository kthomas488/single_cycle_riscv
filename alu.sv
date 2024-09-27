module alu(input wire [2:0]alu_control,input wirep[ 31:0] srca,srcb,output reg [31:0] aluresult,output wire zero);

  wire slt;
  assign slt = (srca[31] == srcb[31])?(srca<srcb) : srca[31];
  always@(*)
    begin
      case(alu_control)
        3'b000:aluresult <= srca + srcb;
        3'b001:aluresult <= srca + ~srcb;
        3'b010:aluresult <= srca & srcb;
        3'b011:aluresult <= srca | srcb;
        3'b101:aluresult <= slt;
        default:aluresult <= 32'bx;
      endcase
    end
  assign zero = (aluresult == 32'b0)
endmodule
    
