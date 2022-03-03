library verilog;
use verilog.vl_types.all;
entity COMPRIMIDO_vlg_sample_tst is
    port(
        F0              : in     vl_logic;
        F1              : in     vl_logic;
        F2              : in     vl_logic;
        F3              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end COMPRIMIDO_vlg_sample_tst;
