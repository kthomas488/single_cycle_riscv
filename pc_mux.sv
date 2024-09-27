module pc_mux(input wire pc_src,input wire [31:0]pc_plus4,input wire [31:0]pc_target,output reg [31:0]pcnext);
  always@(*) begin
    case(pc_src)
      1'b0:pcnext<=pc_plus4;
      1'b1:pcnext<=pc_target;
    endcase
  end
endmodule
