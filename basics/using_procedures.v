module using_procedures();
    reg x = 1'b0; // 1 bit variable with the binary value of 0
    reg y = 1'b1; // 1 vaiebla witha binary value of 1
    reg z;

    // always @ blocks run whenever the parameter inside parenthesis changes
    always @(z) begin
        $display("x=%b, y=%b, z=%b", x, y, z);
    end

    // another procedure 
    initial begin
      	// specify the files to dump
        $dumpfile("dump.vcd"); // Create a dump file for the waveform
        $dumpvars(0, using_procedures); // Dump all variables in this module
      
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