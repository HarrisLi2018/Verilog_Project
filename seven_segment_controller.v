initial begin
    // Initialize the segments table
    segments_table[8'h0] = 7'b1111110; // 0
    segments_table[8'h1] = 7'b0110000; // 1
    segments_table[8'h2] = 7'b1101101; // 2
    segments_table[8'h3] = 7'b1111001; // 3
    segments_table[8'h4] = 7'b0110011; // 4
    segments_table[8'h5] = 7'b1011011; // 5
    segments_table[8'h6] = 7'b1011111; // 6
    segments_table[8'h7] = 7'b1110000; // 7
    segments_table[8'h8] = 7'b1111111; // 8
    segments_table[8'h9] = 7'b1111011; // 9
    segments_table[8'hH] = 7'b1110111; // H
    segments_table[8'hE] = 7'b1111111; // E
    segments_table[8'hL] = 7'b0111100; // L
    segments_table[8'hO] = 7'b1111110; // O
end