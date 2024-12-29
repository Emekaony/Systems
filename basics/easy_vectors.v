module easy_vectors();
    reg [7:0] a = 0;
    reg [6:0] b = 0;
    reg [7:0] d = 0;

    // difference between a wire and a reg
    wire [1:0] c; // 2 bit net 

    // continuous assignment between a net and register
    // c[1] = a[3];
    // c[0] = a[2];

    // this is a continuous assignment which means 
    // it is always updated
    assign c[1:0] = a[3:2]; // this is called bit slicing 

    initial begin 
        $monitor("Proc a=%b, b=%b, c=%b, d=%b", a, b, c, d);
    end

    initial begin
        // change only the value of 'a' to see the effect on 'c'
        #1 a = 1;
        #1 a = 8'b1111_0101;
        #1 a = 8'b1111_1000;
        #1 a = 8'b0000_1000;
        #1 a = 8'b0;

        #1 b = 7'b111_1111; // change the value of b
        #1 d[3:0] = a[3:0]; // change the value of d
        #1 d[7:4] = b[6:3];

        #1 a = 8'b0000_1110; // change the value of a
        #1 d = {a[3:0], b[3:0]}; // concatenation
        #1 d = {b[3:0], a[7:4]}; // concatenation
    end
    
endmodule