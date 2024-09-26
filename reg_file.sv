module reg_file(input wire clk,we3,input wire [4:0]A1,A2,A3,input [31:0] wd3,output wire [31:0]RD1,RD2);
  always@(posedge clk)begin
    if(we3)
      reg_block[A3]<= wd3;//writes the wd3 value to the corresponding address A3
  end

  assign RD1 = reg_block[A1];//assigns the value corresponding to the address A1
  assign RD2 = reg_block[A2];//assigns the value corresponding to the address A2
endmodule
