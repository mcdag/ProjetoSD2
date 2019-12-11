library verilog;
use verilog.vl_types.all;
entity CPU_vlg_check_tst is
    port(
        memoryFunction  : in     vl_logic_vector(3 downto 0);
        memoryValue     : in     vl_logic_vector(3 downto 0);
        outPC           : in     vl_logic_vector(3 downto 0);
        outULA          : in     vl_logic_vector(3 downto 0);
        outX            : in     vl_logic_vector(3 downto 0);
        outY            : in     vl_logic_vector(3 downto 0);
        outZ            : in     vl_logic_vector(3 downto 0);
        tULA            : in     vl_logic;
        tX              : in     vl_logic_vector(1 downto 0);
        tY              : in     vl_logic_vector(1 downto 0);
        tZ              : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end CPU_vlg_check_tst;
