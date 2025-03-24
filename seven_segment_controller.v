module seven_segment_controller(
    input  [3:0] data,
    output [6:0] segments
);

// 7-segment display encoding for digits 0-9 and letters H, E, L, O
reg [6:0] segments_table [15:0];