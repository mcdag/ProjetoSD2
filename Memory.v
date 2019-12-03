module Memory(input wire [2:0] selector, output reg [2:0] func, output reg [3:0] value);
	
	parameter A = 4;
	parameter B = 2;
	
	parameter CLR = 3'b000;
	parameter LD1 = 3'b001;
	parameter LD2 = 3'b010;
	parameter LD3 = 3'b011;
	parameter DIV = 3'b100;
	parameter RES = 3'b101;
	parameter DIS = 3'b110;

	always
	 begin
		case(selector)
		
			3'b000:
			begin
				func <= CLR;
				value <= 0;
			end
			
			3'b001:
			begin
				func <= LD1;
				value <= A;
			end
			
			3'b010:
			begin
				func <= LD2;
				value <= B;
			end
			
			3'b011:
			begin
				func <= LD3;
				value <= 0;
			end
			
			3'b100:
			begin
				func <= DIV;
				value <= 0;
			end
			
			3'b101:
			begin
				func <= RES;
				value <= 0;
			end
			
			3'b110:
			begin
				func <= DIS;
				value <= 0;
			end
		endcase
	end

endmodule
