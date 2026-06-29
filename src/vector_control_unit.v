module vector_control_unit(

input [6:0] opcode,

input [2:0] funct3,

output reg vector_we,

output reg [1:0] vector_op

);

always @(*)
begin

    vector_we = 0;

    vector_op = 2'b00;


    case(opcode)

        7'b1010111:
        begin

            vector_we = 1;

            case(funct3)

                3'b000:
                    vector_op = 2'b00;      // vadd

                3'b001:
                    vector_op = 2'b01;      // vsub

                3'b010:
                    vector_op = 2'b10;      // vand

                3'b011:
                    vector_op = 2'b11;      // vor

                default:
                    vector_op = 2'b00;

            endcase

        end


        default:
        begin

            vector_we = 0;

            vector_op = 2'b00;

        end

    endcase

end

endmodule