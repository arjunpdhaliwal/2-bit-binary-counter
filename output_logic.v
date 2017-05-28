function [STATE_BITS-1 : 0] output_function;
	input [STATE_BITS-1 : 0] curr_state;
	case (curr_state)
		ZERO: output_function = 3'b000;
		ONE: output_function = 3'b001;
		TWO: output_function = 3'b010;
		default: output_function = 3'b111;
	endcase	
endfunction