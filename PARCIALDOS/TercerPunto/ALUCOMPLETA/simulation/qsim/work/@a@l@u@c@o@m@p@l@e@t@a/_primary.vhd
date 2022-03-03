library verilog;
use verilog.vl_types.all;
entity ALUCOMPLETA is
    port(
        K0              : out    vl_logic;
        S2              : in     vl_logic;
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        A2              : in     vl_logic;
        A3              : in     vl_logic;
        B0              : in     vl_logic;
        B1              : in     vl_logic;
        B2              : in     vl_logic;
        B3              : in     vl_logic;
        K1              : out    vl_logic;
        K2              : out    vl_logic;
        K3              : out    vl_logic;
        C4              : out    vl_logic
    );
end ALUCOMPLETA;
