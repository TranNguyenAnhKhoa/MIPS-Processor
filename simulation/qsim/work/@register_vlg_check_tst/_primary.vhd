library verilog;
use verilog.vl_types.all;
entity Register_vlg_check_tst is
    port(
        RD1             : in     vl_logic_vector(31 downto 0);
        RD2             : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end Register_vlg_check_tst;
