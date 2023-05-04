-------------------------------------------------------------------------------
--
-- MSX1 FPGA project
--
-- Copyright (c) 2016, Fabio Belavenuto (belavenuto@gmail.com)
--
-- All rights reserved
--
-- Redistribution and use in source and synthezised forms, with or without
-- modification, are permitted provided that the following conditions are met:
--
-- Redistributions of source code must retain the above copyright notice,
-- this list of conditions and the following disclaimer.
--
-- Redistributions in synthesized form must reproduce the above copyright
-- notice, this list of conditions and the following disclaimer in the
-- documentation and/or other materials provided with the distribution.
--
-- Neither the name of the author nor the names of other contributors may
-- be used to endorse or promote products derived from this software without
-- specific prior written permission.
--
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
-- AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
-- THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
-- PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE
-- LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
-- CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
-- SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
-- INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
-- CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
-- ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
-- POSSIBILITY OF SUCH DAMAGE.
--
-- Please report bugs to the author, but before you do so, please
-- make sure that this is not a derivative work and that
-- you have the latest version of this file.
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_misc.and_reduce;

entity exp_slot is
	port(
		reset_n_i		: in  	std_logic; -- reset slot selection register
		addr_i			: in  	std_logic_vector(15 downto 0); -- address selected
		slt_s_n_i		: in  	std_logic; -- select this slot
		rd_n_i			: in  	std_logic; -- read
		wr_n_i			: in  	std_logic; -- write

		has_data_o		: out std_logic; -- expose slot selection register
		exp_slt_s_n_o	: out std_logic_vector(3 downto 0); -- expanded slot selected with 0
		
		data_io			: inout std_logic_vector(7 downto 0) -- databus
	);
end entity;

architecture rtl of exp_slot is
	signal ffff_s: std_logic;
	signal exp_reg_s: std_logic_vector(7 downto 0);
	signal exp_slt_num_s: std_logic_vector(1 downto 0);
	signal exp_wr_s: std_logic;
	signal exp_rd_s: std_logic;

begin
	ffff_s		<= and_reduce(addr_i);
	exp_wr_s	<= not (slt_s_n_i or wr_n_i or not ffff_s);
	exp_rd_s	<= not (slt_s_n_i or rd_n_i or not ffff_s);

	-- write subslot register
	process(reset_n_i, exp_wr_s)
	begin
		if reset_n_i = '0' then
			exp_reg_s <= X"00";
		elsif exp_wr_s = '1' then
			exp_reg_s <= data_io;
		end if;
	end process;

	-- read subslot register
	has_data_o	<= exp_rd_s;
	data_io		<= (not exp_reg_s) when exp_rd_s = '1' else	(others => '1');

	-- determine what expanded subslot accessed
	with addr_i(15 downto 14) select exp_slt_num_s <=
		exp_reg_s(1 downto 0) when "00",
		exp_reg_s(3 downto 2) when "01",
		exp_reg_s(5 downto 4) when "10",
		exp_reg_s(7 downto 6) when others;

	-- select corresponding expanded subslot with 0 signal
	exp_slt_s_n_o <=
		"1111" when ffff_s = '1' or slt_s_n_i = '1' else
		"1110" when slt_s_n_i = '0' and exp_slt_num_s = "00" else
		"1101" when slt_s_n_i = '0' and exp_slt_num_s = "01" else
		"1011" when slt_s_n_i = '0' and exp_slt_num_s = "10" else "0111";

end architecture;
