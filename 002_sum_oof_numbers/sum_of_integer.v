module sum_of_numbers ();

    integer a, b;
    integer sum_product;

    real x, y;
    real prod_real;

    initial begin
        a = 1;
        b = 2;
        sum_product = a + b;
        $display("\n sum of nums a =%0d, b = %0d, sum = %0d", a, b, sum_product);

        x = 22.49;
        y = -33.89;
        prod_real = x * y;
        $display("\n prod of nums x =%0.2f, y = %0.2f, prod = %0.2f", x, y, prod_real);
    end


endmodule