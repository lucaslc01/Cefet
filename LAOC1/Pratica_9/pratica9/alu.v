module alu (opA, opB, control, result);
  input	  [1:0] control;
  input	[15:0]  opA, opB;
  output	reg [15:0]  result;

  always @(opA, opB, control )
    case (control)
      2'b00: 		result <= opA + opB;
      2'b01: 		result <= opA | opB;
      2'b10: 		result <= opA & opB;	  	  
      2'b11: 		result <= ~(opA);
    endcase
endmodule