module UC(input wire [3:0] func, output reg [1:0] tX, output reg [1:0] tY, output reg [1:0] tZ, output reg tULA);
	
	parameter CLR = 3'b00;
	parameter LD1 = 3'b001;
	parameter LD2 = 3'b010;
	parameter LD3 = 3'b011;
	parameter DIV = 3'b100;
	parameter DIS = 3'b101;
	parameter RES = 3'b110;
	
	parameter HOLD = 2'b00;
	parameter LOAD = 2'b01;
	parameter SHIFTR = 2'b10;
	parameter RESET = 2'b11;
	
	parameter DC = 1'b0;
	parameter ADD = 1'b1;
	
	always begin
		case (func)
			CLR:
				begin
					tX <= RESET;
					tY <= RESET;
					tZ <= RESET;
					tULA <= DC;
				end
			LD1:
				begin
					tX <= LOAD;
					tY <= HOLD;
					tZ <= HOLD;
					tULA <= DC;
				end
			LD2:
				begin
					tX <= LOAD;
					tY <= LOAD;
					tZ <= HOLD;
					tULA <= ADD;
				end
			LD3:
				begin
					tX <= HOLD;
					tY <= LOAD;
					tZ <= HOLD;
					tULA <= ADD;
				end
			DIV:
				begin
					tX <= HOLD;
					tY <= SHIFTR;
					tZ <= HOLD;
					tULA <= DC;
				end
			DIS:
				begin
					tX <= HOLD;
					tY <= HOLD;
					tZ <= LOAD;
					tULA <= DC;
				end
			RES:
				begin
					tX <= HOLD;
					tY <= HOLD;
					tZ <= HOLD;
					tULA <= DC;
				end
		endcase
	end

endmodule
