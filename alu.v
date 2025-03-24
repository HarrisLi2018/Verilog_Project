module fp_accumulator(
    input  clk,
    input  rst_n,
    input  [31:0] fp_a,
    input  [31:0] fp_b,
    output [31:0] fp_result
);

reg [31:0] result_reg;
wire [31:0] fp_sum;

// Floating-point adder (simplified, assumes IEEE 754 single precision)
assign fp_sum = fp_a + fp_b;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        result_reg <= 0;
    end else begin
        result_reg <= fp_sum;
    end
end

assign fp_result = result_reg;

endmodule