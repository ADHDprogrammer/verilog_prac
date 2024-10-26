module bitwise_operator(
    //no inputs here
    );

    reg[5:0] x = 0;
    reg[5:0] y = 0;
    reg[5:0] result = 0;

    initial begin
        $monitor("MON x=%b, y=%b, result=%b \n", x, y, result);
    end

    initial begin
        #1;
        x = 6'b00_0101;
        y = 6'b11_0001;
        result = x & y;

        #1;
        result=~(x & y);

        #1;
        x = 6'b10_1001;
        y = 6'b00_1011;
        result= x | y;

        #1;
        result= ~(x | y);

        #1
        result= x ^ y;

        #1
        result = x ~^ y;

        #1
        result = ~(x ^ y);
    end
endmodule