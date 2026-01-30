module systolic_block #(parameter N=32) (
    input wire clk, 
    input wire rst,
    input wire [8*N-1:0] A_inputs,
    input wire [8*N-1:0] B_inputs,
    output wire [20*N-1:0] Sum_outputs
);
    // Internal Grid Wires
    wire [7:0] h_wires [(N+1)*(N+1)-1:0];
    wire [7:0] v_wires [(N+1)*(N+1)-1:0];
    wire [19:0] s_wires  [(N+1)*(N+1)-1:0];

    genvar i, j;
    generate
        // --- 1. Edge Driver ---
        for (i = 0; i < N; i = i + 1) begin : EDGES
            assign h_wires[i*(N+1)] = A_inputs[8*(i+1)-1 : 8*i]; // Left Feed
            assign v_wires[i]       = B_inputs[8*(i+1)-1 : 8*i]; // Top Feed
            assign s_wires[i]       = 20'b0;                     // Top Sum=0
        end

        // --- 2. PE Grid ---
        for (i = 0; i < N; i = i + 1) begin : ROW
            for (j = 0; j < N; j = j + 1) begin : COL
                localparam curr   = i*(N+1) + j;
                localparam right  = i*(N+1) + (j+1);
                localparam bottom = (i+1)*(N+1) + j;

                pe u_pe (
                    .clk(clk), .rst(rst),
                    .a_in  ( h_wires[curr] ),
                    .b_in  ( v_wires[curr] ),
                    .sum_in( s_wires[curr] ),
                    .a_out ( h_wires[right] ),  
                    .b_out ( v_wires[bottom] ), 
                    .sum_out( s_wires[bottom] ) 
                );
            end
        end
        
        // --- 3. Output Collection ---
        for (j = 0; j < N; j = j + 1) begin : OUT_ASSIGN
            // Capture Sums exiting the last row (Row 31)
            assign Sum_outputs[20*(j+1)-1 : 20*j] = s_wires[N*(N+1) + j];
        end
    endgenerate
endmodule
