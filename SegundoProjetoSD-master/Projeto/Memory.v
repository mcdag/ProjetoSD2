module Memory(input wire [3:0] selector, output reg [2:0] func, output reg [3:0] value);
	
	parameter A = 4;
	parameter B = 2;
	
	parameter CLR = 4'b0000;
	parameter LD1 = 4'b0001;
	parameter LD2 = 4'b0010;
	parameter LD3 = 4'b0011;
	parameter DIV = 4'b0100;
	parameter RES = 4'b0101;
	parameter DIS = 4'b0110;

	always begin
		#2
		case(selector)
			4'b0000:
			begin
				func <= CLR;
				value <= 0;
			end
			4'b0001:
			begin
				func <= LD1;
				value <= A;
			end
			4'b0010:
			begin
				func <= LD2;
				value <= B;
			end
			4'b0011:
			begin
				func <= LD3;
				value <= 0;
			end
			4'b0100:
			begin
				func <= DIV;
				value <= 0;
			end
			4'b0101:
			begin
				func <= RES;
				value <= 0;
			end
			4'b0110:
			begin
				func <= DIS;
				value <= 0;
			end
		endcase
	end

endmodule
