library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sn74ls139 is
	port(
		a_i: in std_logic_vector(1 downto 0); -- input a0, a1
		e_n_i: in std_logic; -- enable input ~e 
		
		o_o: out std_logic_vector(3 downto 0) -- data outputs ~c0,~c1,~c2,~c3
	);
end entity;

architecture rtl of sn74ls139 is
begin
	process(e_n_i, a_i)
	begin
		if(e_n_i = '1') then
			o_o <= "1111";

		elsif e_n_i= '0' and a_i(1 downto 0) = "00" then
			o_o <= "1110";

		elsif e_n_i= '0' and a_i(1 downto 0) = "01" then
			o_o <= "1101";

		elsif e_n_i= '0' and a_i(1 downto 0) = "10" then
			o_o <= "1011";

		elsif e_n_i= '0' and a_i(1 downto 0) = "11" then
			o_o <= "0111";
		end if;
	end process;
end architecture;

