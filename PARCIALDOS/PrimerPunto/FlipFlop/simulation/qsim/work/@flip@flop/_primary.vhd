library verilog;
use verilog.vl_types.all;
entity FlipFlop is
    port(
        Y               : out    vl_logic;
        X               : in     vl_logic;
        CLK             : in     vl_logic;
        Qjk             : out    vl_logic;
        QT              : out    vl_logic;
        QD              : out    vl_logic
    );
end FlipFlop;
