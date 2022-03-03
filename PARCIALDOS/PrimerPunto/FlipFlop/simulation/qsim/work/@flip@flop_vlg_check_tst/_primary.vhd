library verilog;
use verilog.vl_types.all;
entity FlipFlop_vlg_check_tst is
    port(
        QD              : in     vl_logic;
        Qjk             : in     vl_logic;
        QT              : in     vl_logic;
        Y               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end FlipFlop_vlg_check_tst;
