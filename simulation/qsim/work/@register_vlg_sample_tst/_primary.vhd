library verilog;
use verilog.vl_types.all;
entity Register_vlg_sample_tst is
    port(
        RR1             : in     vl_logic_vector(4 downto 0);
        RR2             : in     vl_logic_vector(4 downto 0);
        RegWrite        : in     vl_logic;
        WD              : in     vl_logic_vector(31 downto 0);
        WR              : in     vl_logic_vector(4 downto 0);
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Register_vlg_sample_tst;
