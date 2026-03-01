//sample demo 4 bit ALU
//For Tiny tapeout
/* verilator lint_off WIDTH */
module alu(
    input wire rst, clk,
    input wire [3:0] A,B,
    input wire [2:0] op,
    output reg [7:0] result
  );

  
  always @(posedge clk)
  begin
    if(rst)
      result <= 8'b0;
      else
    case(op)
      3'b000:
        result <= A+B; //add
      3'b001:
        result <= A-B; //sub
      3'b010:
        result <= A & B; //and
      3'b011:
        result <= A | B; //or
      3'b100:
        result <= A ^ B;
      3'b101:
        result <= A >> B; //right shift
      3'b110:
        result <= A << B; //left shift
      3'b111:
        result <= (A > B)? 8'b1: 8'b0;
    endcase
  end
endmodule




