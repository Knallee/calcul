library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity edge_det is
    port(
        clk     : in  std_logic;
        n_rst   : in  std_logic;
        inp     : in  std_logic;
        outp    : out std_logic
    );
end edge_det;

architecture Behavioral of edge_det is

    signal reg1 : std_logic;
    signal reg2 : std_logic;


begin

reg: process(clk)
begin
    if rising_edge(clk) then

        if n_rst = '1' then
            reg1 <= inp;
            reg2 <= reg1;
        else
            reg1 <= '0';
            reg2 <= '0';
        end if;

    end if;
end process reg;

    outp <= reg1 and not reg2;

end Behavioral;
