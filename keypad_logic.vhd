library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity keypad_logic is
    port(
        clk     : in  std_logic;
        n_rst   : in  std_logic;
        key     : in  std_logic_vector(3 downto 0);
        strobe  : out std_logic_vector(3 downto 0);
        key_val : out std_logic_vector(3 downto 0);
        key_det : out std_logic
    );
end keypad_logic;

architecture Behavioral of keypad_logic is




end Behavioral;
