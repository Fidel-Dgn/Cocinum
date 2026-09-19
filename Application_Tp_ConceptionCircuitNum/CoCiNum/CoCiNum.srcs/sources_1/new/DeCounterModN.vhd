----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/08/2025 12:45:38 PM
-- Design Name: 
-- Module Name: DeCounterModN - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DeCounterModN is
--  Port ( );
 generic(
        N : positive
    );
    port(
        clk_i, reset_i, inc_i : in  std_logic;
        value_o               : out integer range 0 to N - 1;
        cycle_o               : out std_logic
    );
end DeCounterModN;

architecture Behavioral of DeCounterModN is
     signal value_reg, value_next : integer range 0 to N - 1;
begin
     p_value_reg : process(clk_i, reset_i)
    begin
        if reset_i = '1' then
            value_reg <= 0;
        elsif rising_edge(clk_i) then
            if inc_i = '1' then
                value_reg <= value_next;
            end if;
        end if;
    end process p_value_reg;

    value_next <=  N - 1 when value_reg =0 else value_reg- 1;

    value_o <= value_reg;
    cycle_o <= '1' when inc_i = '1' and value_reg = N - 1 else '0';

end Behavioral;
