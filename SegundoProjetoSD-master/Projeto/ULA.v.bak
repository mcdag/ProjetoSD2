module ULA(input wire func, input wire [3:0] inX, input wire [3:0] inY, output reg [3:0] out);
	
	parameter DC = 1'b0;
	parameter ADD = 1'b1;
	
	always begin
		case (func)
			DC:
				out <= 4'b0000;
			ADD:
				out <= (inX + inY);
		endcase
	end

endmodule
