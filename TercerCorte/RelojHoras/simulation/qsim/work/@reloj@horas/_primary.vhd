library verilog;
use verilog.vl_types.all;
entity RelojHoras is
    port(
        A0              : out    vl_logic;
        CLK             : in     vl_logic;
        A1              : out    vl_logic;
        A2              : out    vl_logic;
        A3              : out    vl_logic;
        A4              : out    vl_logic;
        A5              : out    vl_logic
    );
end RelojHoras;
