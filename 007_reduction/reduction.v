module reduction_operators(
    // no input here
    );

    reg[4:0] my_val1 = 5'b1_1111;
    reg[8:0] my_val2 = 9'b1_0101_1110;
    reg result;

    initial begin
        $monitor("MON my_val1=%b , my_val2=%b, result=%b", my_val1, my_val2, result);
    end

    initial begin
        result = &my_val1;
        #1;
        result = &my_val2;

        #1;
        result = ~&my_val2;
        #1;
        result = ~&my_val1;

        #1;
        result = ~|my_val2;
        
        #1;
        result = ^my_val1;

        #1;
        result = ~^my_val1; 
    end

endmodule