module result_mux(input wire [1:0]resultsrc,input wire [31:0] alu_result,input wire [31:0] rd_data,input wire [31:0] pc_plus4,output reg [31:0]wd3);
  always@(*) begin
    case(resultsrc)
      2'b00:wd3<=alu_result;
      2'b01:wd3<=rd_data;
      2'b10:wd3<=pc_plus4;
      default:wd3<=32'b0;
    endcase
  end
endmodule
