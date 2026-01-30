module pe (
    input wire clk, 
    input wire rst,
    input wire [7:0]  a_in,
    input wire [7:0]  b_in,
    input wire [19:0] sum_in,
    output reg [7:0]  a_out,
    output reg [7:0]  b_out,
    output reg [19:0] sum_out
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            a_out   <= 8'b0;
            b_out   <= 8'b0;
            sum_out <= 20'b0;
        end else begin
            // 1. Data Pass-through (Pipeline Registers)
            a_out   <= a_in;
            b_out   <= b_in;
            
            // 2. MAC Operation
            // We explicitly truncate to 20 bits to match hardware reality.
            // (a_in * b_in) is 16 bits. sum_in is 20 bits. Result wraps on overflow.
            sum_out <= sum_in + (a_in * b_in);
        end
    end

endmodule
