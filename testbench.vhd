-- Praktikum EL3111 Arsitektur Sistem Komputer
-- Modul 			:	4
-- Percobaan 		:	5
-- Tanggal			:	21 November 2019
-- Kelompok			:	6
-- Rombongan		:	A
-- Nama (NIM) 1		:	Rafif Rahman Darmawan (13217015)
-- Nama (NIM) 2		:	Hafizha Novianingrum (13217005)
-- Nama File 		:	testbench.vhd

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_SIGNED.all;
USE IEEE.NUMERIC_STD.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE BEHAVIORAL OF testbench IS

COMPONENT top_level
    PORT(
        clock 		  : IN STD_LOGIC;
		reset 		  : IN STD_LOGIC;
		
		PCOUT 		  : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		INSTROUT 	  : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		SIGNOUT  	  : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		RDData1OUT    : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		RDData2OUT    : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		ALUOUT		  : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		DATAMEMORYOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		--CUOUT
		SigJmp		  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		SigBne		  : OUT STD_LOGIC;
		SigBranch	  : OUT STD_LOGIC;
		SigMemtoReg	  : OUT STD_LOGIC;
		SigMemRead	  : OUT STD_LOGIC;
		SigMemWrite	  : OUT STD_LOGIC;
		SigRegDest	  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		SigRegWrite	  : OUT STD_LOGIC;
		SigALUSrc	  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		SigALUCtrl	  : OUT STD_LOGIC
     );
END COMPONENT;

SIGNAL clockx 		  :  STD_LOGIC := '1';
SIGNAL resetx 		  :  STD_LOGIC := '1';
SIGNAL PCOUTx 		  :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL INSTROUTx 	  :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SIGNOUTx  	  :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RDData1OUTx    :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RDData2OUTx    :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ALUOUTx		  :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL DATAMEMORYOUTx :  STD_LOGIC_VECTOR(31 DOWNTO 0);

SIGNAL SigJmpx		  :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SigBnex		  :  STD_LOGIC;
SIGNAL SigBranchx	  :  STD_LOGIC;
SIGNAL SigMemtoRegx	  :  STD_LOGIC;
SIGNAL SigMemReadx	  :  STD_LOGIC;
SIGNAL SigMemWritex	  :  STD_LOGIC;
SIGNAL SigRegDestx	  :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SigRegWritex	  :  STD_LOGIC;
SIGNAL SigALUSrcx	  :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SigALUCtrlx	  :  STD_LOGIC;

BEGIN
	dut : top_level PORT MAP(
		clock => clockx,
		reset => resetx,
		PCOUT => PCOUTx,
		INSTROUT => INSTROUTx,
		SIGNOUT => SIGNOUTx,
		RDData1OUT => RDData2OUTx,
		RDData2OUT => RDData2OUTx,
		ALUOUT => ALUOUTx,
		DATAMEMORYOUT => DATAMEMORYOUTx,
		SigJmp => SigJmpx,
		SigBne => SigBnex,
		SigBranch => SigBranchx,
		SigMemtoReg => SigMemtoRegx,
		SigMemRead => SigMemReadx,
		SigMemWrite => SigMemWritex,
		SigRegDest => SigRegDestx,
		SigRegWrite => SigRegWritex,
		SigALUSrc => SigALUSrcx,
		SigALUCtrl => SigALUCtrlx
	);
	
	clk : PROCESS
	BEGIN
		WAIT FOR 100 ps; clockx <= NOT clockx;
	END PROCESS clk;
	
	rst : PROCESS
	BEGIN
		WAIT FOR 200 ps; resetx <= '0';
	END PROCESS rst;

END BEHAVIORAL;
