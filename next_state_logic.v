function [STATE_BITS-1 : 0] next_state_function;
	input [STATE_BITS-1 : 0] curr_state;
	input reset;
	case (curr_state)
		ZERO : next_state_function = ONE;
		ONE : next_state_function = TWO;
		TWO : next_state_function = ZERO;
	endcase	
endfunction