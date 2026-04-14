module tb_ALU;

    reg [7:0] a, b;      // 8-bit inputs
    reg [3:0] s;         // 4-bit select line
    reg clk, en;
    wire [15:0] y;       // 16-bit output
    wire carry, zero;

    // DUT instantiation
    ALU1 uut (
        .a(a),
        .b(b),
        .s(s),
        .en(en),
        .clk(clk),
        .y(y),
        .carry(carry),
        .zero(zero)
    );

    // Initial values
    initial begin
        a = 0;
        b = 0;
        s = 0;
        en = 1;
        clk = 0;
    end

    // Clock generation (10 time unit period)
    always begin
        #5 clk = ~clk;
    end

    // Test cases
    initial begin
        #50;
        a = 8'b11101110;
        b = 8'b11101110;

        s = 4'b0000; #30;
        s = 4'b0001; #30;
        s = 4'b0010; #30;
        s = 4'b0011; #30;
        s = 4'b0100; #30;
        s = 4'b0101; #30;
        s = 4'b0110; #30;
        s = 4'b0111; #30;
        s = 4'b1000; #30;
        s = 4'b1001; #30;
        s = 4'b1010; #30;
        s = 4'b1011; #30;
        s = 4'b1100; #30;
        s = 4'b1101; #30;
        s = 4'b1110; #30;
        s = 4'b1111; #30;

        en = 0; #30;

        $finish;
    end

    // Output display in terminal
    initial begin
        $monitor("time=%0t clk=%b en=%b a=%b b=%b s=%b y=%b carry=%b zero=%b",
                  $time, clk, en, a, b, s, y, carry, zero);
    end

    // Waveform dump
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_ALU);
    end

endmodule
