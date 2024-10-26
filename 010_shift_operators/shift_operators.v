module lshift_operators(
    // no input here
    );

    reg[7:0] a = 12'b0101_1010_1101;
    reg[7:0] b;
    reg[7:0] result = 0;

    initial begin
        $monitor("MOn a=%12b b = %12b, a=%0d, b= %0d d = %b", a, b, a, b, d);    
    end


    initial begin
        b = a << 1;
        #1;
        b = 0;

        #1; b = a * 2;

        #1; b = a << 5;
        #1; b = b >> 2;
        #1; b = b >> 7;
        #1; b = b << 1;
        #1; b = (a << 1) >> 6;

        #1; d = 8'b1110_1010;
        #1;
        d = ^d;
        #1;
        a = 8'hCA;
        #1;
        b = 8'hFE;
        #1;
        result = {}
        

    end

endmodule