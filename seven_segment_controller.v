always @(data) begin
    case (data)
        4'h0: segments = segments_table[8'h0];
        4'h1: segments = segments_table[8'h1];
        4'h2: segments = segments_table[8'h2];
        4'h3: segments = segments_table[8'h3];
        4'h4: segments = segments_table[8'h4];
        4'h5: segments = segments_table[8'h5];
        4'h6: segments = segments_table[8'h6];
        4'h7: segments = segments_table[8'h7];
        4'h8: segments = segments_table[8'h8];
        4'h9: segments = segments_table[8'h9];
        4'hH: segments = segments_table[8'hH];
        4'hE: segments = segments_table[8'hE];
        4'hL: segments = segments_table[8'hL];
        4'hO: segments = segments_table[8'hO];
        default: segments = 7'b0000000; // Default to blank display
    endcase
end

endmodule