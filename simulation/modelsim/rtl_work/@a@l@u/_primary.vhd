library verilog;
use verilog.vl_types.all;
entity ALU is
    generic(
        WIDTH           : integer := 32
    );
    port(
        a               : in     vl_logic_vector;
        b               : in     vl_logic_vector;
        sel             : in     vl_logic_vector(2 downto 0);
        ALU_result      : out    vl_logic_vector;
        z_flags         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end ALU;
