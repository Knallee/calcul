library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity keypad_top is
    port(
        clk     : in  std_logic;
        rst     : in  std_logic;
        col     : out std_logic_vector(3 downto 0);
        row     : in  std_logic_vector(3 downto 0);
        led     : out std_logic_vector(3 downto 0)
    );
end keypad_top;

architecture Behavioral of keypad_top is

--    signal n_rst    : std_logic;
--    signal row_d    : std_logic_vector(3 downto 0);
--    signal row_ded  : std_logic_vector(3 downto 0);
--
--    component debouncer is
--        port(
--            clk 		: in  std_logic;
--            n_rst 		: in  std_logic;
--            button_in 	: in  std_logic;
--            button_out 	: out std_logic
--        );
--    end component;
--
--    component edge_det is
--        port(
--            clk     : in  std_logic;
--            n_rst   : in  std_logic;
--            inp     : in  std_logic;
--            outp    : out std_logic
--        );
--    end component;


begin

    col <= "1000";
    led <= row;
    
--    n_rst <= not rst;
--
--   GEN_DEB:  
--   for I in 0 to 3 generate
--        DEBOUNCER_X : debouncer 
--        port map(
--            clk         => clk, 
--            n_rst       => n_rst, 
--            button_in   => row(I), 
--            button_out  => row_d(I)
--        );
--   end generate GEN_DEB;
--
--   GEN_EDGE_DET:  
--   for I in 0 to 3 generate
--        EDGE_DET_X : edge_det 
--        port map(
--            clk   => clk, 
--            n_rst => n_rst, 
--            inp   => row_d(I), 
--            outp  => row_ded(I)
--        );
--   end generate GEN_EDGE_DET;



end Behavioral;
