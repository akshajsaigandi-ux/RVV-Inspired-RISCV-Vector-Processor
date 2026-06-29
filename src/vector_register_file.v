module vector_register_file(

input clk,
input we,

input [2:0] rs1,
input [2:0] rs2,
input [2:0] rd,

input [127:0] write_data,

output [127:0] read_data1,
output [127:0] read_data2

);

reg [127:0] vreg [0:7];


// Initial values for simulation

initial
begin

    vreg[0] = 128'd0;

    // v1 = [1,2,3,4]

    vreg[1] = {32'd4,32'd3,32'd2,32'd1};

    // v2 = [10,20,30,40]

    vreg[2] = {32'd40,32'd30,32'd20,32'd10};

    vreg[3] = 128'd0;

    vreg[4] = 128'd0;

    vreg[5] = 128'd0;

    vreg[6] = 128'd0;

    vreg[7] = 128'd0;

end


assign read_data1 = vreg[rs1];

assign read_data2 = vreg[rs2];


always @(posedge clk)
begin

    if(we)

        vreg[rd] <= write_data;

end

endmodule