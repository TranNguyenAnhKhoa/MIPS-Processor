library verilog;
use verilog.vl_types.all;
entity DataMemory is
    port(
        clk             : in     vl_logic;
        Address         : in     vl_logic_vector(31 downto 0);
        WriteData       : in     vl_logic_vector(31 downto 0);
        MemWrite        : in     vl_logic;
        ReadData        : out    vl_logic_vector(31 downto 0);
        MemRead         : in     vl_logic
    );
end DataMemory;
