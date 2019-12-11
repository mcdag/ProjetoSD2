module CPU(
	input wire clk,
	output wire [3:0] outX,
	output wire [3:0] outY,
	output wire [3:0] outZ,
	output wire [3:0] outULA,
	output wire [1:0] tX,
	output wire [1:0] tY,
	output wire [1:0] tZ,
	output wire tULA,
	output wire [3:0] outPC,
	output wire [3:0] memoryValue,
	output wire [3:0] memoryFunction
);
	
	Register regX(clk, tX, memoryValue, outX);
	Register regY(clk, tY, outULA, outY);
	Register regZ(clk, tZ, outY, outZ);
	
	ULA blockULA(tULA, outX, outY, outULA);
	UC blockUC(memoryFunction, tX, tY, tZ, tULA);
	PC blockPC(clk, outPC);
	Memory blockMemory(outPC, memoryFunction, memoryValue);

endmodule
