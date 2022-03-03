library verilog;
use verilog.vl_types.all;
entity COMPRIMIDO is
    port(
        E3              : out    vl_logic;
        F3              : in     vl_logic;
        F2              : in     vl_logic;
        F1              : in     vl_logic;
        F0              : in     vl_logic;
        E4              : out    vl_logic
    );
end COMPRIMIDO;
