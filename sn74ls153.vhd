library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sn74ls153 is
	port(
		a_i: in std_logic; -- select input a (bit 0)
		b_i: in std_logic; -- select input b (bit 1)
		c_i: in std_logic_vector(3 downto 0); -- data inputs c0,c1,c2,c3
		g_n_i: in std_logic; -- strobe input g
		
		y_o: out std_logic -- data output y
	);
end entity;

architecture rtl of sn74ls153 is
begin
	process(g_n_i, a_i, b_i)
	begin
		if g_n_i = '1' then
			y_o <= '0';

		elsif g_n_i= '0' and a_i = '0' and b_i = '0' then
			y_o <= c_i(0);

		elsif g_n_i= '0' and a_i = '1' and b_i = '0' then
			y_o <= c_i(1);

		elsif g_n_i= '0' and a_i = '0' and b_i = '1' then
			y_o <= c_i(2);

		elsif g_n_i= '0' and a_i = '1' and b_i = '1' then
			y_o <= c_i(3);
		end if;
	end process;
end architecture;
