library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CustomECBEncoder_v1_0_S00_AXIS is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- AXI4Stream sink: Data Width
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
	);
	port (
		-- Users to add ports here
		readEnabled  : in  std_logic;
        validData    : out std_logic;
        dataOut      : out std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);		
        byteEnable   : out std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
        lastWord     : out std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- AXI4Stream sink: Clock
		S_AXIS_ACLK	: in std_logic;
		-- AXI4Stream sink: Reset
		S_AXIS_ARESETN	: in std_logic;
		-- Ready to accept data in
		S_AXIS_TREADY	: out std_logic;
		-- Data in
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		-- Byte qualifier
		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		-- Indicates boundary of last packet
		S_AXIS_TLAST	: in std_logic;
		-- Data is in valid
		S_AXIS_TVALID	: in std_logic
	);
end CustomECBEncoder_v1_0_S00_AXIS;

architecture arch_imp of CustomECBEncoder_v1_0_S00_AXIS is

    component ECBEncoder is
    port( key : in std_logic_vector(15 downto 0);
            data_in : in std_logic_vector(31 downto 0);
            ciphered_text: out std_logic_vector(31 downto 0));
    end component ECBEncoder;

	signal s_ready    : std_logic;
    signal s_validOut : std_logic;
    signal s_dataOut  : std_logic_vector(31 downto 0); 
    signal s_cypher   : std_logic_vector(31 downto 0);
    

begin
    s_ready <= (not s_validOut) or readEnabled;
    
    ecbencoder_inst : ECBEncoder
    port map(
            key => x"abab",
            data_in => S_AXIS_TDATA,
            ciphered_text => s_cypher );
            
    process(S_AXIS_ACLK)
	begin
        if (rising_edge (S_AXIS_ACLK)) then
	        if (S_AXIS_ARESETN = '0') then
	           s_validOut <= '0';
	           s_dataOut  <= (others => '0');
       
            elsif (S_AXIS_TVALID = '1') then
	           if (s_ready = '1') then
                    s_validOut <= '1';
                    if (S_AXIS_TSTRB = "1111") then
	                   s_dataOut  <= s_cypher;
					end if;
					
					byteEnable(0) <= S_AXIS_TSTRB(0);
					byteEnable(1) <= S_AXIS_TSTRB(1);
					byteEnable(2) <= S_AXIS_TSTRB(2);
					byteEnable(3) <= S_AXIS_TSTRB(3);
                    lastWord <= S_AXIS_TLAST;
	           end if;
	      
	        elsif (readEnabled = '1') then
	           s_validOut <= '0';               
            end if;
        end if;
    end process;

	validData     <= s_validOut;
	dataOut       <= s_dataOut;
	S_AXIS_TREADY <= s_ready;	
end arch_imp;
