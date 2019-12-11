module PC(input wire clk, output reg [3:0] out);

	always @(negedge clk) begin
		if (out == 4'b0110)// se chegar no ultimo estado reseta
			out = 4'b0000;
		else
			out = out + 1;// se não, soma mais um à máquina de estado
	end

endmodule 
