----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:59:06 09/05/2016 
-- Design Name: 
-- Module Name:    flipflop - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flipflop is
    Port ( reset : in  STD_LOGIC;
           senal : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           salida : out  STD_LOGIC);
end flipflop;

architecture Behavioral of flipflop is

begin
--funcion  y mando mis parametros de entradas
process(clk,reset,senal)
--siempre pongo  esto para las funciones
begin


   if (reset='1') then
	 --asigno 0 a salida
      salida<='0';
	else
	--veo si el reloj  esta en subida
		if rising_edge(clk) then
			salida<=senal;
   
		end if;
	end if;
end process;

end Behavioral;

