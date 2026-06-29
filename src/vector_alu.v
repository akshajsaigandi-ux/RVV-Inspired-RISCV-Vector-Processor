module vector_alu(

input [127:0] A,
input [127:0] B,

input [1:0] op,

output reg [127:0] result

);

integer i;

always @(*)
begin

for(i=0;i<4;i=i+1)
begin

case(op)

2'b00:
result[i*32 +: 32]
=
A[i*32 +: 32]
+
B[i*32 +: 32];

2'b01:
result[i*32 +: 32]
=
A[i*32 +: 32]
-
B[i*32 +: 32];

2'b10:
result[i*32 +: 32]
=
A[i*32 +: 32]
&
B[i*32 +: 32];

2'b11:
result[i*32 +: 32]
=
A[i*32 +: 32]
|
B[i*32 +: 32];

endcase

end

end

endmodule