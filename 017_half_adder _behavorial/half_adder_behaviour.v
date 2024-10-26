module half_adder_behaviour (
    input a,
    input b,
    output reg sum,
    output reg carry
    );

    always @(*) begin
        sum = a ^ b;
        carry = a & b;
    end

endmodule