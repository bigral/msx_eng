library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.std_logic_misc.and_reduce;
use work.exp_slot;
use work.sn74ls153;

entity msx_eng is
	port(
		reset_n_i:		in std_logic;
		addr_i:			in std_logic_vector(15 downto 0);
		ppi_port_a_i:	in std_logic_vector(7 downto 0);
		iorq_n_i:		in std_logic;
		m1_n_i:			in std_logic;
		mreq_n_i:		in std_logic;
		rfsh_n_i:		in std_logic;
		rd_n_i:			in std_logic;
		wr_n_i:			in std_logic;
		en_ascii16_n_i: in std_logic;
		
		ram_cs_n_o: 	out std_logic;
		rom_cs_n_o: 	out std_logic;
		rom_addr_o: 	out std_logic_vector(17 downto 14);
		ppi_cs_n_o:		out std_logic;
		vdp_cswr_n_o:	out std_logic;
		vdp_csrd_n_o:	out std_logic;
		psg_bdir_o:		out std_logic;
		psg_bc1_o:		out std_logic;
		
		data_io:		inout std_logic_vector(7 downto 0)
		);
end msx_eng;
 
architecture behavioral of msx_eng is
--	signal imem_s: std_logic := '0';
	
	-- mapper registers
	
	-- subslots of 3rd expanded slot
--	signal isub_slt30_s: std_logic := '1';
--	signal isub_slt31_s: std_logic := '0';
--	signal isub_slt32_s: std_logic := '0';
--	signal isub_slt33_s: std_logic := '0';
	
--	signal ippi_addr_s : std_logic := '0';
--	signal ippi_cs : std_logic := '0';
	
--	constant PPI_START_REG_RANGE : integer := 16#A8#;
--	constant PPI_END_REG_RANGE : integer := 16#AB#;

--	signal ivdp_addr_s : std_logic := '0';
--	signal ivdp_s : std_logic := '0';
--	constant VDP_START_REG_RANGE : integer := 16#98#;
--	constant VDP_END_REG_RANGE : integer := 16#9B#;

--	signal ipsg_addr_s: std_logic := '0';
--	constant PSG_START_REG_RANGE : integer := 16#A0#;
--	constant PSG_END_REG_RANGE : integer := 16#A3#;

--	signal iaddr_xxAx_s: std_logic := '0';
--	signal iaddr_xx9x_s: std_logic := '0';
--	signal iaddr_xxx8tillB_s: std_logic := '0';
--	signal iaddr_xxx0till3_s: std_logic := '0';

--	signal iaddr_bits_7to4: std_logic_vector(7 downto 4);
--	signal iaddr_bits_3to2: std_logic_vector(3 downto 2);
--	signal iaddr_bits_15to14: std_logic_vector(15 downto 14);
--	signal iaddr_bits_13to11: std_logic_vector(13 downto 11);
	
-- z80 memory	
	signal imemory_s: std_logic := '0'; -- z80 access memory
	signal imreq_rd_n_s: std_logic := '1'; -- z80 use ~mreq and ~rd (0 level joins by OR instead of AND for 1)
	signal imem_page_s: std_logic_vector(3 downto 0) := "0000"; --z80 access to memory page, selected with 1
--	signal iffff_s: std_logic := '0'; -- FFFF address appears on the bus 
-- z80 I/O	
	signal iio_s: std_logic := '0'; -- cpu access to ports
	signal iio_rd: 	std_logic := '0'; -- cpu reads ports
	signal iio_wr: 	std_logic := '0'; -- cpu writes ports
-- VDP
	signal ivdp_addr_s: std_logic := '0'; -- vdp address selected
-- PSG	
	signal ipsg_addr_s: std_logic := '0'; -- psg address selected
	signal ipsg_s: std_logic := '0'; -- psg io selected
-- PPI
	signal ippi_addr_s: std_logic := '0'; -- ppi address selected
	signal ippi_s: std_logic := '0'; -- ppi chip access
-- primary msx1 slots
	signal islot_en: std_logic := '0'; -- enable msx1 slot architecture operation
	signal iprim_slot_n_s: std_logic_vector(3 downto 0) := "1111"; -- primary slot selected with 0
	signal iprim_slot_num_s: std_logic_vector(1 downto 0) := "00"; -- primary slot accessed
-- msx2 mapper
	signal imapper_s: std_logic := '0'; -- MSX2 Mapper => FC-FF suest
	signal imap_bank0_s: std_logic_vector(7 downto 0) := "00000011";
	signal imap_bank1_s: std_logic_vector(7 downto 0) := "00000010";
	signal imap_bank2_s: std_logic_vector(7 downto 0) := "00000001";
	signal imap_bank3_s: std_logic_vector(7 downto 0) := "00000000";
-- msx2 expanded slot3	
	signal exp3_has_data: std_logic := '0'; -- expanded primary slot3 expose slot selection register
	signal exp3_slt_s_n_o: std_logic_vector(3 downto 0); -- expanded primary slot3 expose subslot selected with 0
-- ascii16 mapper regs
	-- 6000h (mirrors: 6001h~67FFh)
	signal iascii_mapper_reg0: std_logic_vector(7 downto 0) := "00000000"; 
	-- 7000h (mirrors: 7001h~77FFh)
	signal iascii_mapper_reg1: std_logic_vector(7 downto 0) := "00000000"; 
	
	signal idata_exp3_o: std_logic_vector(7 downto 0) := "00000000"; 
	signal idata_exp3_i: std_logic_vector(7 downto 0) := "00000000";
begin
-- msx1 I/O
	iio_s		<= '1' when iorq_n_i = '0' and m1_n_i = '1' else '0';
	iio_rd		<= '1' when iio_s = '1' and rd_n_i = '0' else '0';
	iio_wr		<= '1' when iio_s = '1' and wr_n_i = '0' else '0';

-- VDP chip select read/write
	ivdp_addr_s		<= '1' when addr_i(7 downto 2) = "100110" else '0'; -- VDP address 98-9B selected
	vdp_cswr_n_o	<= '0' when iio_wr = '1' and ivdp_addr_s = '1' else 'Z'; -- VDP write (open drain)
	vdp_csrd_n_o	<= '0' when iio_rd = '1' and ivdp_addr_s = '1' else 'Z'; -- VDP read (open drain)
	
-- PSG
	ipsg_addr_s <= '1' when addr_i(7 downto 2) = "101000" else '0'; -- PSG address A0-A3 selected
	ipsg_s		<= '1' when iio_s = '1' and ipsg_addr_s = '1' else '0'; -- PSG io selected
	psg_bdir_o	<= 'Z' when iio_s = '1' and wr_n_i = '0' else '0'; -- PSG bdir contorol (open drain)
	psg_bc1_o	<= 'Z' when ipsg_s = '1' and addr_i(0) = '0' else '0'; -- PSG bc1 control (open drain)

-- PPI
	ippi_addr_s <= '1' when addr_i(7 downto 2) = "101010" else '0'; -- PPI address A8-AB selected
	ippi_s		<= '1' when iio_s = '1' and ippi_addr_s = '1' else '0'; -- PPI chip select internal signal
	ppi_cs_n_o	<= '0' when ippi_s = '1' else 'Z'; -- PPI chip select (open drain)

-- z80 memory access
	imemory_s		<= '1' when mreq_n_i = '0' and rfsh_n_i = '1' else '0';
	imreq_rd_n_s	<= '0' when mreq_n_i = '0' and rd_n_i = '0' else '1';
--	iffff_s			<= and_reduce(addr_i);

-- enable msx1 slots architecture
	process(reset_n_i, ippi_s, islot_en)
	begin
		if(reset_n_i = '0') then
			islot_en <= '0';
			
		elsif(ippi_s = '1') then
			islot_en <= '1';
				
		end if;
	end process;

-- msx1 primary slot number decoder
	lobyte_ppi_a: entity work.sn74ls153
	port map (
		a_i => addr_i(14),
		b_i => addr_i(15),
		c_i => ppi_port_a_i(6) & ppi_port_a_i(4) & ppi_port_a_i(2) & ppi_port_a_i(0),
		g_n_i => not islot_en,
		
		y_o => iprim_slot_num_s(0)
	);
	
	hibyte_ppi_a: entity work.sn74ls153
	port map (
		a_i => addr_i(14),
		b_i => addr_i(15),
		c_i => ppi_port_a_i(7) & ppi_port_a_i(5) & ppi_port_a_i(3) & ppi_port_a_i(1),
		g_n_i => not islot_en,
		
		y_o => iprim_slot_num_s(1)
	);
	
	pri_slot_num: entity work.sn74ls139
	port map (
		a_i => iprim_slot_num_s,
		e_n_i => not imemory_s,
		
		o_o => iprim_slot_n_s
	);

-- z80 page access
	process (addr_i(15), addr_i(14), imemory_s)
	begin
		if imemory_s = '0' then
			imem_page_s <= "0000";
			
		elsif addr_i(15) = '0' and addr_i(14) = '0' and imemory_s = '1' then
			imem_page_s <= "0001";

		elsif addr_i(15) = '0' and addr_i(14) = '1' and imemory_s = '1' then
			imem_page_s <= "0010";

		elsif addr_i(15) = '1' and addr_i(14) = '0' and imemory_s = '1' then
			imem_page_s <= "0100";

		elsif addr_i(15) = '1' and addr_i(14) = '1' and imemory_s = '1' then
			imem_page_s <= "1000";

		end if;
	end process;

-- msx2 slot expander in primary slot 3
	slot3_exp: entity work.exp_slot
	port map (
		reset_i		=> not reset_n_i,
		ipl_en_i		=> '0',
		addr_i		=> addr_i,
		sltsl_n_i	=> iprim_slot_n_s(3),
		rd_n_i		=> rd_n_i,
		wr_n_i		=> wr_n_i,
		data_i		=> idata_exp3_i,
		
		has_data_o		=> exp3_has_data,
		expsltsl_n_o	=> exp3_slt_s_n_o,
		
		data_o			=> idata_exp3_o
	);
	
	process(idata_exp3_o, rd_n_i, exp3_has_data, iprim_slot_n_s)
	begin
		if exp3_has_data = '1' and rd_n_i = '0' and iprim_slot_n_s(3) = '0' then
			data_io <= idata_exp3_o;
			
		elsif wr_n_i = '0' and iprim_slot_n_s(3) = '0' then
			idata_exp3_i <= data_io;
			
		end if;
	end process;
	
-- msx2 mapper
	imapper_s	<= '1' when iio_s = '1' and addr_i(7 downto 2) = "111111" else '0'; -- MSX2 Mapper => FC-FF
	
	process(reset_n_i, imapper_s, wr_n_i)
	begin
		if reset_n_i = '0' then
			imap_bank0_s <= "00000011";
			imap_bank1_s <= "00000010";
			imap_bank2_s <= "00000001";
			imap_bank3_s <= "00000000";
		elsif imapper_s = '1' and wr_n_i = '0' then
			case addr_i(1 downto 0) is
				when "00"   => imap_bank0_s <= data_io;
				when "01"   => imap_bank1_s <= data_io;
				when "10"   => imap_bank2_s <= data_io;
				when others => imap_bank3_s <= data_io;
			end case;
		end if;
	end process;

-- ascii16 mapper registers in slot2
	process(wr_n_i, iprim_slot_n_s(1), imem_page_s(1), addr_i(13 downto 11))
	begin
		if iprim_slot_n_s(1) = '0' and wr_n_i = '0' and imem_page_s(1) = '1' then
			-- address 0x6000 - 0x67ff
			if addr_i(13 downto 11) = "100" then
				iascii_mapper_reg0 <= data_io;
			
			-- address 0x7000 - 0x77ff	
			elsif addr_i(13 downto 11) = "110" then
				iascii_mapper_reg1 <= data_io;
			
			end if;
		end if;
	end process;
	
-- msx2 rom for this particular zanac gaming machine with 27020 rom (256kb)
-- in this zanac game machine roms located as:
-- 00000..07fff (32kb) msx2.rom (main msx2 rom)
-- 08000..0bfff (16kb) msx2ex.rom (extended msx2 rom)
-- 0c000..0ffff (16kb) ? unknown, may be beer ide (sd card support...)
-- 10000..1ffff (64kb) not used
-- 20000..3ffff (128kb) zanac2 msx2 mega game ascii16 mapper game

--	rom_addr_o(17) <= '0'; -- TODO: replace with ascii16 mapper value, use zanac game, address range 20000-3ffff
--	rom_addr_o(16) <= '0'; -- upper 64kb rom in first 128kb also not used, address range 10000-1ffff

-- produce following msx2 rom-in-slots configuration
-- slot0, page0 and page1 - msx2.rom, page2 and page3 are EMPTY
-- slot1 and slot2 (supposed to be cartridge slots), TODO: put zanac game here
-- slot3-0, page0 - msx2ex.rom, page1 and page2 and psge3 are EMPTY
-- slot3-1, all pages are EMPTY
-- slot3-2, all pages are RAM
-- slot3-3, all pages are EMPTY
	process (imreq_rd_n_s, iprim_slot_n_s, exp3_slt_s_n_o, imem_page_s, addr_i(14), addr_i(15))
	begin
		-- msx2rom in slot0
		if iprim_slot_n_s(0) = '0' and (imem_page_s(0) = '1' or imem_page_s(1) = '1') then
			rom_addr_o(15) <= '0';
			if addr_i(14) = '1' then rom_addr_o(14) <= 'Z'; else rom_addr_o(14) <= '0'; end if;
--			rom_addr_o(14) <= 'Z' when addr_i(14) = '1' else (others => '0');
			rom_cs_n_o <= '0';
			ram_cs_n_o <= 'Z';
		-- msx2ext.rom in slot3-0
		elsif exp3_slt_s_n_o(0) = '0' and imem_page_s(0) = '1' then
			rom_addr_o(15) <= 'Z';
			if addr_i(14) = '1' then rom_addr_o(14) <= 'Z'; else rom_addr_o(14) <= '0'; end if;
			rom_cs_n_o <= '0';
			ram_cs_n_o <= 'Z';
		-- msx2 mapped ram in slot3-2
		elsif exp3_slt_s_n_o(2) = '0' and imem_page_s(0) = '1' then
			if imap_bank0_s(1) = '1' then rom_addr_o(15) <= 'Z'; else rom_addr_o(15) <= '0'; end if;
			if imap_bank0_s(0) = '1' then rom_addr_o(14) <= 'Z'; else rom_addr_o(14) <= '0'; end if;
			rom_cs_n_o <= 'Z';
			ram_cs_n_o <= '0';
		elsif exp3_slt_s_n_o(2) = '0' and imem_page_s(1) = '1' then
			if imap_bank1_s(1) = '1' then rom_addr_o(15) <= 'Z'; else rom_addr_o(15) <= '0'; end if;
			if imap_bank1_s(0) = '1' then rom_addr_o(14) <= 'Z'; else rom_addr_o(14) <= '0'; end if;
			rom_cs_n_o <= 'Z';
			ram_cs_n_o <= '0';
		elsif exp3_slt_s_n_o(2) = '0' and imem_page_s(2) = '1' then
			if imap_bank2_s(1) = '1' then rom_addr_o(15) <= 'Z'; else rom_addr_o(15) <= '0'; end if;
			if imap_bank2_s(0) = '1' then rom_addr_o(14) <= 'Z'; else rom_addr_o(14) <= '0'; end if;
			rom_cs_n_o <= 'Z';
			ram_cs_n_o <= '0';
		elsif exp3_slt_s_n_o(2) = '0' and imem_page_s(3) = '1' then
			if imap_bank3_s(1) = '1' then rom_addr_o(15) <= 'Z'; else rom_addr_o(15) <= '0'; end if;
			if imap_bank3_s(0) = '1' then rom_addr_o(14) <= 'Z'; else rom_addr_o(14) <= '0'; end if;
			rom_cs_n_o <= 'Z';
			ram_cs_n_o <= '0';
			
		-- ascii16 mapper in slot1
		elsif en_ascii16_n_i = '0' and imreq_rd_n_s = '0' and iprim_slot_n_s(1) = '0'
			and (imem_page_s(1) = '1' or imem_page_s(3) = '1') then
			
			rom_addr_o(17) <= 'Z';
			if iascii_mapper_reg0(2) = '1' then rom_addr_o(16) <= 'Z'; else rom_addr_o(16) <= '0'; end if;
			if iascii_mapper_reg0(1) = '1' then rom_addr_o(15) <= 'Z'; else rom_addr_o(15) <= '0'; end if;
			if iascii_mapper_reg0(0) = '1' then rom_addr_o(14) <= 'Z'; else rom_addr_o(14) <= '0'; end if;
			rom_cs_n_o <= '0';
			ram_cs_n_o <= 'Z';

		elsif en_ascii16_n_i = '0' and imreq_rd_n_s = '0' and iprim_slot_n_s(1) = '0'
			and (imem_page_s(0) = '1' or imem_page_s(2) = '1') then
			
			rom_addr_o(17) <= 'Z';
			if iascii_mapper_reg1(2) = '1' then rom_addr_o(16) <= 'Z'; else rom_addr_o(16) <= '0'; end if;
			if iascii_mapper_reg1(1) = '1' then rom_addr_o(15) <= 'Z'; else rom_addr_o(15) <= '0'; end if;
			if iascii_mapper_reg1(0) = '1' then rom_addr_o(14) <= 'Z'; else rom_addr_o(14) <= '0'; end if;
			rom_cs_n_o <= '0';
			ram_cs_n_o <= 'Z';
		
		-- no rom/ram slot/page selected
		else
			rom_addr_o(15) <= 'Z';
			rom_addr_o(14) <= 'Z';
			rom_cs_n_o <= 'Z';
			ram_cs_n_o <= 'Z';
	
		end if;

	end process;
	
	-- form address for eeprom
	--	put msx2.rom into primary slot 0, msx2ext.rom into slot 1
	--	1mbit cartridge and beer ide rom in slot 2 (selected by no_mapper_n signal)
--	process(iprim_slt_s, addr_i14, no_mapper_n, ipage1_s,
--		ipage2_s, imapper_reg0, imapper_reg1)
--	begin
	-- default values (equal to iprim_slt_s = "00") for rom_addr
	--	because otherwise they became inferring latches
--			rom_addr17 <= '0';
--			rom_addr16 <= '0';
--			rom_addr15 <= '0';
--			rom_addr14 <= addr_i14; -- 32kB msx2.rom

--		if iprim_slt_s = "00" then
--			rom_addr17 <= '0';
--			rom_addr16 <= '0';
--			rom_addr15 <= '0';
--			rom_addr14 <= addr_i14; -- 32kB msx2.rom
--		els

--		if iprim_slt_s = "01" then
--			rom_addr17 <= '0';
--			rom_addr16 <= '0';
--			rom_addr15 <= '1';
--			rom_addr14 <= '0'; -- 16kB msx2ext.rom
--		elsif iprim_slt_s = "10" then
--			if no_mapper_n = '0' then
--				-- mapper disabled so insert beer ide rom into slot 2
--				rom_addr17 <= '0';
--				rom_addr16 <= '0';
--				rom_addr15 <= '1';
--				rom_addr14 <= '1'; -- 16kB beer ide rom
	--		else
			-- ascii16 mapper enabled in slot 2 use last 128kB of eeprom
--				rom_addr17 <= '1';
	--			if ipage1_s = '1' then
		--			rom_addr16 <= imapper_reg0(2);
			--		rom_addr15 <= imapper_reg0(1);
--					rom_addr14 <= imapper_reg0(0);
-- 				elsif ipage2_s = '1' then
--					rom_addr16 <= imapper_reg1(2);
--					rom_addr15 <= imapper_reg1(1);
					--rom_addr14 <= imapper_reg1(0);
--				end if;
	--		end if;
--		end if;
--	end process;

	-- put slot0,1,2 into eeprom (256kb) use also direct cpu's /rd to rom's /oe signal
--	rom_cs_n <= '0' when
--		(islot_en = '0' and imem_s = '1' and (ipage0_s = '1' or ipage1_s = '1')) or
--		(islt0_s = '1' and (ipage0_s = '1' or ipage1_s = '1')) or
--		(islt1_s = '1' and ipage0_s = '1') or
--		(islt2_s = '1' and no_mapper_n = '1' and (ipage1_s = '1' or ipage2_s = '1')) or
--		(islt2_s = '1' and no_mapper_n = '0' and ipage1_s = '1') else '1';

	-- put 64Kb sram into primary slot 3 (no mapper)	
--	ram_cs_n <= '0' when slot_sel3 = '1' else '1';
	
end behavioral;
