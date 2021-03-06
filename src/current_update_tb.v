// Current Update Testbench
module current_update_tb();

reg in_clk, in_asyn_reset, in_swap, in_i_next_write_en, in_i_read_tag, in_i_next_read_tag, in_i_next_write_tag;
reg [16:0] in_i_next_write_value;
wire [16:0] out_i_next_read_value, out_i_read_value;

//create an FSM instance.
current_update U1 (.clk (in_clk),
		.asyn_reset (in_asyn_reset),
		.swap (in_swap),
		.i_next_write_en (in_i_next_write_en),
		.i_read_tag (in_i_read_tag),
		.i_next_read_tag (in_i_next_read_tag),
		.i_next_write_tag (in_i_next_write_tag),
		.i_next_write_value (in_i_next_write_value),
		.i_next_read_value (out_i_next_read_value),
		.i_read_value (out_i_read_value));

initial
begin

// cycle 0
in_asyn_reset = 1'b1;
in_swap = 1'b0;
in_i_next_write_en = 1'b0;
in_i_read_tag = 1'b0;
in_i_next_read_tag = 1'b0;
in_i_next_write_tag = 1'b0;
in_i_next_write_value = 17'b0_1000_0000_0000_0000;
in_clk = 1'b1;
#5
in_clk = 1'b0;
#5

// cycle 1
in_asyn_reset = 1'b0;
in_swap = 1'b0;
in_i_next_write_en = 1'b1;
in_i_read_tag = 1'b0;
in_i_next_read_tag = 1'b0;
in_i_next_write_tag = 1'b0;
in_i_next_write_value = 17'b0_1000_0000_0000_0000;
in_clk = 1'b1;
#5
in_clk = 1'b0;
#5

// cycle 2
in_asyn_reset = 1'b0;
in_swap = 1'b0;
in_i_next_write_en = 1'b1;
in_i_read_tag = 1'b0;
in_i_next_read_tag = 1'b0;
in_i_next_write_tag = 1'b1;
in_i_next_write_value = 17'b0_0100_0000_0000_0000;
in_clk = 1'b1;
#5
in_clk = 1'b0;
#5

// cycle 3
in_asyn_reset = 1'b0;
in_swap = 1'b1;
in_i_next_write_en = 1'b0;
in_i_read_tag = 1'b0;
in_i_next_read_tag = 1'b0;
in_i_next_write_tag = 1'b0;
in_i_next_write_value = 17'b0_0000_0000_0000_0000;
in_clk = 1'b1;
#5
in_clk = 1'b0;
#5

// cycle 4
in_asyn_reset = 1'b0;
in_swap = 1'b0;
in_i_next_write_en = 1'b0;
in_i_read_tag = 1'b1;
in_i_next_read_tag = 1'b1;
in_i_next_write_tag = 1'b0;
in_i_next_write_value = 17'b0_0000_0000_0000_0000;
in_clk = 1'b1;
#5
in_clk = 1'b0;
#5

// cycle 5
in_asyn_reset = 1'b0;
in_swap = 1'b1;
in_i_next_write_en = 1'b0;
in_i_read_tag = 1'b0;
in_i_next_read_tag = 1'b0;
in_i_next_write_tag = 1'b0;
in_i_next_write_value = 17'b0_0000_0000_0000_0000;
in_clk = 1'b1;
#5
in_clk = 1'b0;
#5

// cycle 6
in_asyn_reset = 1'b0;
in_swap = 1'b0;
in_i_next_write_en = 1'b0;
in_i_read_tag = 1'b1;
in_i_next_read_tag = 1'b1;
in_i_next_write_tag = 1'b0;
in_i_next_write_value = 17'b0_0000_0000_0000_0000;
in_clk = 1'b1;
#5
in_clk = 1'b0;
#5

$display ("clk, \t in_asyn_reset, \t in_swap, \t in_i_next_write_en, \t in_i_read_tag, \t in_i_next_read_tag, \t in_i_next_write_tag, \t in_i_next_write_value, \t out_i_next_read_value, \t out_i_read_value");
$stop;

end 

endmodule