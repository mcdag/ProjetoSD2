module (input wire clk, input wire [1:0] func, input wire [3:0] in, output reg [3:0] out);

	parameter HOLD = 2'b00;
	parameter LOAD = 2'b01;
	parameter SHIFTR = 2'b10;
	parameter RESET = 2'b11;

	always @(posedge clk) begin
		case (func)
			HOLD:
				out <= in;
			LOAD:
				out <= in;
			SHIFTR:
				out <= (out >> 1);
			RESET:
				out <= 4'b0000;
		endcase
	end

endmodule
