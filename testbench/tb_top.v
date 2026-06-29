`timescale 1ns / 1ps

module tb_top;

reg clk;

reg rst;

top uut(

.clk(clk),

.rst(rst)

);

always

begin

#5 clk = ~clk;

end

initial

begin

clk = 0;

rst = 1;

#20;

rst = 0;

#100;

$finish;

end

endmodule