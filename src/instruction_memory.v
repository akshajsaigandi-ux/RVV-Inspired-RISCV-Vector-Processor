module instruction_memory(

input [31:0] addr,

output [31:0] instruction

);

reg [31:0] mem [0:255];

integer i;


initial
begin

    for(i=0;i<256;i=i+1)

        mem[i]=32'h00000013;



    // Scalar Instructions

    mem[0]=32'h00500093;

    mem[1]=32'h00A00113;

    mem[2]=32'h002081B3;



    // Vector Instructions

    // vadd

    mem[10]=32'h02008157;


    // vsub

    mem[11]=32'h02309257;


    // vand

    mem[12]=32'h0240A2D7;


    // vor

    mem[13]=32'h0250B357;

end


assign instruction = mem[addr[9:2]];

endmodule