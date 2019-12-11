library verilog;
use verilog.vl_types.all;
entity CPU is
    port(
        clk             : in     vl_logic;
        outX            : out    vl_logic_vector(3 downto 0);
        outY            : out    vl_logic_vector(3 downto 0);
        outZ            : out    vl_logic_vector(3 downto 0);
        outULA          : out    vl_logic_vector(3 downto 0);
        tX              : out    vl_logic_vector(1 downto 0);
        tY              : out    vl_logic_vector(1 downto 0);
        tZ              : out    vl_logic_vector(1 downto 0);
        tULA            : out    vl_logic;
        outPC           : out    vl_logic_vector(3 downto 0);
        memoryValue     : out    vl_logic_vector(3 downto 0);
        memoryFunction  : out    vl_logic_vector(3 downto 0)
    );
end CPU;
