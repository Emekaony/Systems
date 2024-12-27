module using_procedures();
    reg x = 1'b0; // 1 bit variable with the binary value of 0
    reg y = 1'b1; // 1 vaiebla witha binary value of 1
    reg z;

    // procedure example
    always @(z) begin
        $display("x=%b, y=%b, z=%b", x, y, z);
    end

    // another procedure 
    initial begin
        #2; // wait 2 time units
        z = x ^ y; // bitwise XOR
        #10; // wait 10 time units 
        y = 0;
        z = x | y;
        #10;
        z = ~z; // bitwise NOT
        #10;
    end

endmodule