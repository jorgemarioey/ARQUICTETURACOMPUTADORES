--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:34:29 09/05/2016
-- Design Name:   
-- Module Name:   C:/Users/Diego/Desktop/Documentos ING sistemas Mario/7 semestre/Arquictetura de computadores/flipflop/test.vhd
-- Project Name:  flipflop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: flipflop
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT flipflop
    PORT(
         reset : IN  std_logic;
         senal : IN  std_logic;
         clk : IN  std_logic;
         salida : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal senal : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal salida : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: flipflop PORT MAP (
          reset => reset,
          senal => senal,
          clk => clk,
          salida => salida
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset<='1';
		wait for 100 ns;	
		reset <='0';
		senal <='1';
		wait for  100 ns;
		senal <='0';
		wait for  100 ns;
		senal <='1';
      

      -- insert stimulus here 

      wait;
   end process;

END;
