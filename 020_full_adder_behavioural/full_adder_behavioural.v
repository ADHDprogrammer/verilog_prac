module full_adder_behavioural (
    input a,     // always wire
    input b,
	input carry_in,
    output reg sum,  // default wire but can be changed to reg
    output reg carry_out
    );

    always @(a or b or carry_in) begin
        sum = a ^ b ^ carry_in;
        carry_out = (a & b) | (carry_in | (a ^b))
    end
  
endmodule


module testbench();
  
    // Declare variables and nets for module ports
    reg a;
    reg b;
    reg cin;
    wire sum;
    wire cout;  
  
    // Instantiate the module
    full_adder_dataflow FULL_ADD(
        .a(a),
        .b(b),
        .carry_in(cin),
        .sum(sum),
        .carry_out(cout)
        );
  
    // Generate stimulus and monitor module ports
    initial begin
      $monitor("a=%b, b=%b, carry_in=%0b, sum=%b, carry_out=%b", a, b, cin, sum, cout);
    end  
  
    initial begin
        #1; a = 0; b = 0; cin = 0;
        #1; a = 0; b = 0; cin = 1;
        #1; a = 0; b = 1; cin = 0;
        #1; a = 0; b = 1; cin = 1;
        #1; a = 1; b = 0; cin = 0;
        #1; a = 1; b = 0; cin = 1;
        #1; a = 1; b = 1; cin = 0;
        #1; a = 1; b = 1; cin = 1;
    end
  
endmodule