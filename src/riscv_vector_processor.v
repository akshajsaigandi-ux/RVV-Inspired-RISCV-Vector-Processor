module riscv_vector_processor(

input clk,
input rst,

output [31:0] pc_out,
output [31:0] instruction_out,
output [31:0] alu_result_out

);


// Scalar signals

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


// Vector signals

wire vector_we;

wire [1:0] vector_op;

wire [127:0] vector_read1;
wire [127:0] vector_read2;

wire [127:0] vector_result;

wire [2:0] vrs1;

wire [2:0] vrs2;

wire [2:0] vrd;


// Register address extraction

assign rs1 = instruction[19:15];

assign rs2 = instruction[24:20];

assign rd = instruction[11:7];

assign vrs1 = instruction[19:17];

assign vrs2 = instruction[24:22];

assign vrd = instruction[11:9];



// ==================================================
// Scalar Processor Modules
// ==================================================


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



// ==================================================
// Vector Processor Modules
// ==================================================


vector_control_unit VCU(

.opcode(instruction[6:0]),

.funct3(instruction[14:12]),

.vector_we(vector_we),

.vector_op(vector_op)

);


vector_register_file VRF(

.clk(clk),

.we(vector_we),

.rs1(vrs1),

.rs2(vrs2),

.rd(vrd),

.write_data(vector_result),

.read_data1(vector_read1),

.read_data2(vector_read2)

);

vector_alu VALU(

.A(vector_read1),

.B(vector_read2),

.op(vector_op),

.result(vector_result)

);



// ==================================================
// Outputs
// ==================================================

assign pc_out = pc;

assign instruction_out = instruction;

assign alu_result_out = alu_result;


endmodule