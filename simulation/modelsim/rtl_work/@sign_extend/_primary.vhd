library verilog;
use verilog.vl_types.all;
entity Sign_extend is
    port(
        i               : in     vl_logic_vector(15 downto 0);
        o               : out    vl_logic_vector(31 downto 0)
    );
end Sign_extend;
