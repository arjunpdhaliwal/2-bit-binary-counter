module test;
	reg reset = 0;
	reg clk = 0;
	wire [2:0] state_out;

  initial begin
    	#100 $stop;
  end

  always begin
  		#5 clk = !clk;
 	end

	state_machine fsm (clk, reset, state_out);

	initial begin
   		$monitor("Time: %t, state_out: %b, reset: %d",
               $time,     state_out,     reset);
  end
endmodule