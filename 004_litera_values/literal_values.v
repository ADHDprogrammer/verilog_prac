module literal_values();

    reg[7:0] my_var;

    initial begin
        my_var = 8'd137;
        $display("my_var = %d \n", my_var);

        my_var = 8'h09;
        $display("my_var = %x \n", my_var);

        my_var = 8'b1000_1001;
        $display("my_var = %b \n", my_var);

        my_var = 8'o211;
        $display("my_var = %o \n", my_var);

        my_var = 8'hZ1;
        $display("my_var = %b \n", my_var);
        
        my_var = 1'b1;
        $display("my_var = %b \n", my_var);

        my_var = 12'b1111_1111_0000;
        $display("my_var = %b \n", my_var);

    end

endmodule