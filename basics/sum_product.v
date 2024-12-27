// find the sum and product of two integers
module sum_product();
    // this is how u define an integer in verilog
    integer a, b;
    integer sum_int;

    // we used real here standing for real numbers which can be negative, float whatever
    real x, y;
    real prod_real;

    // this is used to execute code once at the start of simulation
    // it is ideal for initializing variables and what not, or for simple display
    // statements like the one we're using here.
    initial begin
        a = 3;
        b = 9;
        sum_int = a + b;
        $display("a = %0d, b = %0d, sum = %0d", a, b, sum_int);

        x = 99.67;
        y = -33.41;
        prod_real = x * y;
        $display("x = %0.2f, y = %0.2f, prod_real = %0.2f", x, y, prod_real);
    end
endmodule