module state_machine(clk, reset, state_out);
	`include "next_state_logic.v"
	`include "output_logic.v"
	`include "globals.v"

	input reset;
	input clk;

	output [STATE_BITS-1: 0] state_out;

	reg [STATE_BITS-1 : 0] curr_state;
	wire [STATE_BITS-1 : 0] next_state;

	assign next_state = next_state_function(curr_state, reset); 
	assign state_out = output_function(curr_state);

	initial begin
	   curr_state = ZERO;
	end

	always @ (posedge clk) begin
		curr_state <= next_state;
		//$display("current state: %b", curr_state);
		//$display("output: %b", output_function(curr_state));
	end
endmodule