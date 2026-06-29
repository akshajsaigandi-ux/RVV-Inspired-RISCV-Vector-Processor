module control_unit(

input [6:0] opcode,

output reg regwrite,

output reg memread,

output reg memwrite,

output reg [2:0] alu_control

);

always @(*)

begin

regwrite = 0;

memread = 0;

memwrite = 0;

alu_control = 3'b000;

case(opcode)

7'b0110011:     // R-type

begin

regwrite = 1;

alu_control = 3'b000;

end

7'b0000011:     // LW

begin

regwrite = 1;

memread = 1;

alu_control = 3'b000;

end

7'b0100011:     // SW

begin

memwrite = 1;

alu_control = 3'b000;

end

default:

begin

regwrite = 0;

memread = 0;

memwrite = 0;

alu_control = 3'b000;

end

endcase

end

endmodule
