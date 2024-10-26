module logical_operators_usage(
    // no input here
    );

    reg[2:0] my_val1 = 3'b001;
    reg[3:0] my_val2 = 4'b0001;

    initial begin
        #1;
        if (!my_val1) begin
            $display("graet my_val1=%b", my_val1);
        end else begin
            $display("i expected my_val1= 0 but myval1=%b", my_val1);
        end

        #1;
        if (!my_val2) begin
            $display("graet my_val2=%b", my_val2);
        end else begin
            $display("i expected my_val1= 0 but myval1=%b", my_val2);
        end

        #1;
        if (my_val1 && (!my_val2)) begin
            $display("graet my_val1=%b myval2=%b", my_val1, my_val2);
        end else begin
            $display("i expected my_val1!=0 and my_val2=0 but myval1=%b and my_val2=%b", my_val1, my_val2);
        end

        #1;
        while (my_val2 < 3) begin
            $display("while loop myval2=%d", my_val2);
            my_val2 = my_val2 + 1;
        end

    end

endmodule