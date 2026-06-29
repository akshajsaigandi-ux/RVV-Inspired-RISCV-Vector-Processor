module imm_gen(

input [31:0] instruction,

output reg [31:0] imm

);

always @(*)

begin

case(instruction[6:0])

// I-type (ADDI, LW)

7'b0010011,

7'b0000011:

imm = {{20{instruction[31]}},

instruction[31:20]};


// S-type (SW)

7'b0100011:

imm = {{20{instruction[31]}},

instruction[31:25],

instruction[11:7]};


default:

imm = 32'd0;

endcase

end

endmodule