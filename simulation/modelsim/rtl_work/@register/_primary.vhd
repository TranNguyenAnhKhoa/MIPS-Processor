library verilog;
use verilog.vl_types.all;
entity \Register\ is
    port(
        RR1             : in     vl_logic_vector(4 downto 0);
        RR2             : in     vl_logic_vector(4 downto 0);
        WR              : in     vl_logic_vector(4 downto 0);
        RegWrite        : in     vl_logic;
        clk             : in     vl_logic;
        WD              : in     vl_logic_vector(31 downto 0);
        RD1             : out    vl_logic_vector(31 downto 0);
        RD2             : out    vl_logic_vector(31 downto 0)
    );
end \Register\;
