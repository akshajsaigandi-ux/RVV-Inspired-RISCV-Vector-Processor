module riscv_vector_processor_tb();

reg clk;
reg rst;

wire [31:0] pc_out;
wire [31:0] instruction_out;
wire [31:0] alu_result_out;


riscv_vector_processor uut(

    .clk(clk),

    .rst(rst),

    .pc_out(pc_out),

    .instruction_out(instruction_out),

    .alu_result_out(alu_result_out)

);


// Clock generation

always #5 clk = ~clk;


// Test sequence

initial
begin

    clk = 0;

    rst = 1;

    #20;

    rst = 0;

    #200;

    $finish;

end

endmodule