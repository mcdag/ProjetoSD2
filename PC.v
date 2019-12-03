module PC(input wire clk, output reg [2:0] out);

	always @(negedge clk)
	 begin
		if (out == 3'b110) // se chegar no ultimo estado reseta
			out = 3'b000;
		else
			out = out + 1; // se n�o, soma mais um � m�quina de estado
	end

endmodule 