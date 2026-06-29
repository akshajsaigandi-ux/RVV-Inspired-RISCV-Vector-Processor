module top(

input clk,

input rst,

output [31:0] pc_out,

output [31:0] instruction_out,

output [31:0] alu_result_out

);

wire [31:0] pc;
wire [31:0] instruction;

wire [4:0] rs1;
wire [4:0] rs2;
wire [4:0] rd;

wire [31:0] read_data1;
wire [31:0] read_data2;

wire [31:0] alu_result;

wire [31:0] imm;

wire [31:0] mem_data;

wire zero;

wire [2:0] alu_ctrl;

wire regwrite;
wire memread;
wire memwrite;

wire [2:0] alu_control;

assign rs1 = instruction[19:15];

assign rs2 = instruction[24:20];

assign rd = instruction[11:7];


program_counter PC(

.clk(clk),

.rst(rst),

.pc(pc)

);


instruction_memory IM(

.addr(pc),

.instruction(instruction)

);

imm_gen IMM(

.instruction(instruction),

.imm(imm)

);


control_unit CU(

.opcode(instruction[6:0]),

.regwrite(regwrite),

.memread(memread),

.memwrite(memwrite),

.alu_control(alu_control)

);

alu_control ALUCTRL(

.opcode(instruction[6:0]),

.funct3(instruction[14:12]),

.funct7(instruction[31:25]),

.alu_ctrl(alu_ctrl)

);


register_file RF(

.clk(clk),

.we(regwrite),

.rs1(rs1),

.rs2(rs2),

.rd(rd),

.write_data(alu_result),

.read_data1(read_data1),

.read_data2(read_data2)

);


alu ALU(

.a(read_data1),

.b(read_data2),

.alu_control(alu_ctrl),

.result(alu_result),

.zero(zero)

);

data_memory DM(

.clk(clk),

.we(memwrite),

.addr(alu_result),

.write_data(read_data2),

.read_data(mem_data)

);

assign pc_out = pc;

assign instruction_out = instruction;

assign alu_result_out = alu_result;

endmodule
