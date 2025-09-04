`timescale 1ns/10ps
`celldefine
module gf180mcu_osu_sc_gp9t3v3__dff_1 (A, B, S, Q, RN, CLK);
	output reg Q;
	input A, B, S, RN, CLK;

	// Function
	wire mux_out;

    assign mux_out = S ? A : B;
    always @(posedge CLK, negedge RN) begin
        if (RN == 1'b0) Q <= 1'b0;
        else Q <= mux_out;
    end
    
    /*
	// Timing
	specify
		(posedge CLK => (Q+:D)) = 0;
		(posedge CLK => (QN-:D)) = 0;
		$setuphold (posedge CLK, posedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$setuphold (posedge CLK, negedge D, 0, 0, notifier,,, delayed_CLK, delayed_D);
		$width (posedge CLK &&& D, 0, 0, notifier);
		$width (negedge CLK &&& D, 0, 0, notifier);
		$width (posedge CLK &&& ~D, 0, 0, notifier);
		$width (negedge CLK &&& ~D, 0, 0, notifier);
	endspecify
    */
endmodule
`endcelldefine