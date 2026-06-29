module vector_alu_tb();

reg [127:0] A;
reg [127:0] B;

reg [1:0] op;

wire [127:0] result;

vector_alu uut(

.A(A),
.B(B),

.op(op),

.result(result)

);

initial
begin

A = {32'd4,32'd3,32'd2,32'd1};

B = {32'd40,32'd30,32'd20,32'd10};

op = 2'b00;

#20;

op = 2'b01;

#20;

op = 2'b10;

#20;

op = 2'b11;

#20;

$finish;

end

endmodule