library verilog;
use verilog.vl_types.all;
entity MIPS_datapath is
    port(
        WD              : in     vl_logic_vector(31 downto 0);
        rs              : in     vl_logic_vector(4 downto 0);
        rt              : in     vl_logic_vector(4 downto 0);
        rd              : in     vl_logic_vector(4 downto 0);
        imm             : in     vl_logic_vector(15 downto 0);
        RegWrite        : in     vl_logic;
        RegDst          : in     vl_logic;
        MemRead         : in     vl_logic;
        MemWrite        : in     vl_logic;
        MemToReg        : in     vl_logic;
        ALUSrc          : in     vl_logic;
        clk             : in     vl_logic;
        ALUcontrol      : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0);
        isZero          : out    vl_logic;
        RD1             : out    vl_logic_vector(31 downto 0);
        RD2             : out    vl_logic_vector(31 downto 0)
    );
end MIPS_datapath;
