module chip_top (
    input wire clk,
    input wire rst_n,
    input wire [31:0] data_in_broad,  
    output wire [31:0] result
);
    wire rst_core = !rst_n;

    // --- MEMORY WIRES ---
    wire [31:0] mem0_rdata, mem1_rdata, mem2_rdata;
    
    // --- CONNECT MEMORY TO CORE INPUTS ---
    // (Replaces Lines 20-21 and 29 of your file)
   // wire [8*32-1:0] A_feed = {8{mem0_rdata}}; 
    // wire [8*32-1:0] B_feed = {8{mem1_rdata}};
    
    // --- CORE INSTANCE ---
    wire [20*32-1:0] matrix_out_raw;
    
    systolic_block #(.N(32)) u_core0 (
        .clk(clk), 
        .rst(rst_core), 
        .A_inputs(A_feed), 
        .B_inputs(B_feed), 
        .Sum_outputs(matrix_out_raw)
    );

    // --- MEMORY CONTROLS ---
    reg mem_csb_a, mem_csb_b, mem_csb_c;
    reg mem_web_a, mem_web_b, mem_web_c;
    reg [7:0] mem_addr;
    reg [31:0] mem_wdata_a, mem_wdata_b;
    // In chip_top.v, after memory read
	reg [31:0] mem0_rdata_q, mem1_rdata_q;

	always @(posedge clk) begin
	    mem0_rdata_q <= mem0_rdata;
	    mem1_rdata_q <= mem1_rdata;
	end

	wire [8*32-1:0] A_feed = {8{mem0_rdata_q}}; 
	wire [8*32-1:0] B_feed = {8{mem1_rdata_q}};
	wire dummy0 = 1'b0;
	wire dummy1 = 1'b1;
    // --- MACRO A (Input A) ---
    sky130_sram_1kbyte_1rw1r_32x256_8 u_mem_a (
    	`ifdef USE_POWER_PINS
    		.vccd1(VPWR),   // Connect to power supply net
   		    .vssd1(VGND)   // Connect to ground net
	    `endif
        .clk0(clk), .csb0(mem_csb_a), .web0(mem_web_a), .wmask0(4'hF),
        .addr0(mem_addr), .din0(mem_wdata_a), .dout0(mem0_rdata)
        
    );
    //,.clk1(dummy0),        // Tie Clock Low
    	//.csb1(dummy1),        // Tie Chip Select High (Disable)
    	//.addr1(8'h00)      // Tie Address to 0
    	//.dout1()

    // --- MACRO B (Input B) ---
    sky130_sram_1kbyte_1rw1r_32x256_8 u_mem_b (
    	`ifdef USE_POWER_PINS
    		.vccd1(VPWR),   // Connect to power supply net
   		.vssd1(VGND)   // Connect to ground net
	`endif
        .clk0(clk), .csb0(mem_csb_b), .web0(mem_web_b), .wmask0(4'hF),
        .addr0(mem_addr), .din0(mem_wdata_b), .dout0(mem1_rdata)
        
    );
    //,.clk1(dummy0),        // Tie Clock Low
    	//.csb1(dummy1),        // Tie Chip Select High (Disable)
    	//.addr1(8'h00)      // Tie Address to 0
    	//.dout1()

    // --- MACRO C (Result Storage) ---
    // Note: We are just taking the first 32 bits of result for this example
    wire [31:0] result_to_store = matrix_out_raw[31:0]; 

    sky130_sram_1kbyte_1rw1r_32x256_8 u_mem_c (
    	`ifdef USE_POWER_PINS
    		.vccd1(VPWR),   // Connect to power supply net
   		.vssd1(VGND)   // Connect to ground net
	    `endif
        .clk0(clk), .csb0(mem_csb_c), .web0(mem_web_c), .wmask0(4'hF),
        .addr0(mem_addr), 
        .din0(result_to_store), // Storing the core result!
        .dout0(mem2_rdata)
        
    );
    //,.clk1(dummy0),        // Tie Clock Low
    	//.csb1(dummy1),        // Tie Chip Select High (Disable)
    	//.addr1(8'h00)      // Tie Address to 0
    	//.dout1()

    // --- CONTROL LOGIC ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // Reset state
            mem_csb_a <= dummy1; mem_csb_b <= dummy1; mem_csb_c <= dummy1;
            mem_web_a <= dummy1; mem_web_b <= dummy1; mem_web_c <= dummy1;
            mem_addr <= 8'd0;
        end else begin
            // SIMPLE TEST MODE:
            // Write Inputs to A and B, Read Result from Core to C
            mem_csb_a <= dummy0; mem_web_a <=dummy0; // Write A
            mem_csb_b <= dummy0; mem_web_b <= dummy0; // Write B
            mem_csb_c <= dummy0; mem_web_c <= dummy0; // Write C (Result)
            
            mem_wdata_a <= data_in_broad;
            mem_wdata_b <= data_in_broad;
            mem_addr <= mem_addr + 1;
        end
    end

    assign result = mem2_rdata; // Output the data read from C
endmodule
