module alu_control(

input [6:0] opcode,

input [2:0] funct3,

input [6:0] funct7,

output reg [2:0] alu_ctrl

);

always @(*)

begin

case(opcode)

7'b0110011:

begin

case({funct7,funct3})

10'b0000000000:

alu_ctrl=3'b000;

// ADD


10'b0100000000:

alu_ctrl=3'b001;

// SUB


10'b0000000111:

alu_ctrl=3'b010;

// AND


10'b0000000110:

alu_ctrl=3'b011;

// OR


10'b0000000100:

alu_ctrl=3'b100;

// XOR


10'b0000000010:

alu_ctrl=3'b101;

// SLT


default:

alu_ctrl=3'b000;

endcase

end


default:

alu_ctrl=3'b000;

endcase

end

endmodule