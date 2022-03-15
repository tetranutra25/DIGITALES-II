library verilog;
use verilog.vl_types.all;
entity ImplementacionRelojDigital is
    port(
        CLK1Hz          : out    vl_logic;
        CLk             : in     vl_logic
    );
end ImplementacionRelojDigital;
