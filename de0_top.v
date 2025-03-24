module de0_top(
    input  clk,
    output [6:0] segments,
    output [3:0] anodes
);

reg [3:0] data = 4'hH; // Initial display value
reg [3:0] anode_sel = 4'h0; // Initial anode select

seven_segment_controller seg_controller(
    .data(data),
    .segments(segments)
);

always @(posedge clk) begin
    // Anode scanning (assuming 4-digit 7-segment display)
    case (anode_sel)
        4'h0: begin
            anodes = 4'b1110; // Enable digit 1
            data = 4'hH;
        end
        4'h1: begin
            anodes = 4'b1101; // Enable digit 2
            data = 4'hE;
        end
        4'h2: begin
            anodes = 4'b1011; // Enable digit 3
            data = 4'hL;
        end
        4'h3: begin
            anodes = 4'b0111; // Enable digit 4
            data = 4'hL;
        end
        default: begin
            anodes = 4'b1111; // Disable all digits
            data = 4'h0;
        end
    endcase
    
    // Anode select counter
    anode_sel <= anode_sel + 1;
    if (anode_sel == 4'h4) begin
        anode_sel <= 4'h0;
    end
end

endmodule