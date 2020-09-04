--------------------------------------------------------------------------------
--                     SmallMultTableP3x3r6XuYu_F300_uid8
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
library work;
entity SmallMultTableP3x3r6XuYu_F300_uid8 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(5 downto 0);
          Y : out  std_logic_vector(5 downto 0)   );
end entity;

architecture arch of SmallMultTableP3x3r6XuYu_F300_uid8 is
signal TableOut :  std_logic_vector(5 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
  with X select TableOut <= 
   "000000" when "000000",
   "000000" when "000001",
   "000000" when "000010",
   "000000" when "000011",
   "000000" when "000100",
   "000000" when "000101",
   "000000" when "000110",
   "000000" when "000111",
   "000000" when "001000",
   "000001" when "001001",
   "000010" when "001010",
   "000011" when "001011",
   "000100" when "001100",
   "000101" when "001101",
   "000110" when "001110",
   "000111" when "001111",
   "000000" when "010000",
   "000010" when "010001",
   "000100" when "010010",
   "000110" when "010011",
   "001000" when "010100",
   "001010" when "010101",
   "001100" when "010110",
   "001110" when "010111",
   "000000" when "011000",
   "000011" when "011001",
   "000110" when "011010",
   "001001" when "011011",
   "001100" when "011100",
   "001111" when "011101",
   "010010" when "011110",
   "010101" when "011111",
   "000000" when "100000",
   "000100" when "100001",
   "001000" when "100010",
   "001100" when "100011",
   "010000" when "100100",
   "010100" when "100101",
   "011000" when "100110",
   "011100" when "100111",
   "000000" when "101000",
   "000101" when "101001",
   "001010" when "101010",
   "001111" when "101011",
   "010100" when "101100",
   "011001" when "101101",
   "011110" when "101110",
   "100011" when "101111",
   "000000" when "110000",
   "000110" when "110001",
   "001100" when "110010",
   "010010" when "110011",
   "011000" when "110100",
   "011110" when "110101",
   "100100" when "110110",
   "101010" when "110111",
   "000000" when "111000",
   "000111" when "111001",
   "001110" when "111010",
   "010101" when "111011",
   "011100" when "111100",
   "100011" when "111101",
   "101010" when "111110",
   "110001" when "111111",
   "------" when others;
    Y <= TableOut;
end architecture;

--------------------------------------------------------------------------------
--                               Compressor_6_3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_6_3 is
   port ( X0 : in  std_logic_vector(5 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_6_3 is
signal X :  std_logic_vector(5 downto 0);
begin
   X <=X0 ;
   with X select R <= 
      "000" when "000000", 
      "001" when "000001", 
      "001" when "000010", 
      "010" when "000011", 
      "001" when "000100", 
      "010" when "000101", 
      "010" when "000110", 
      "011" when "000111", 
      "001" when "001000", 
      "010" when "001001", 
      "010" when "001010", 
      "011" when "001011", 
      "010" when "001100", 
      "011" when "001101", 
      "011" when "001110", 
      "100" when "001111", 
      "001" when "010000", 
      "010" when "010001", 
      "010" when "010010", 
      "011" when "010011", 
      "010" when "010100", 
      "011" when "010101", 
      "011" when "010110", 
      "100" when "010111", 
      "010" when "011000", 
      "011" when "011001", 
      "011" when "011010", 
      "100" when "011011", 
      "011" when "011100", 
      "100" when "011101", 
      "100" when "011110", 
      "101" when "011111", 
      "001" when "100000", 
      "010" when "100001", 
      "010" when "100010", 
      "011" when "100011", 
      "010" when "100100", 
      "011" when "100101", 
      "011" when "100110", 
      "100" when "100111", 
      "010" when "101000", 
      "011" when "101001", 
      "011" when "101010", 
      "100" when "101011", 
      "011" when "101100", 
      "100" when "101101", 
      "100" when "101110", 
      "101" when "101111", 
      "010" when "110000", 
      "011" when "110001", 
      "011" when "110010", 
      "100" when "110011", 
      "011" when "110100", 
      "100" when "110101", 
      "100" when "110110", 
      "101" when "110111", 
      "011" when "111000", 
      "100" when "111001", 
      "100" when "111010", 
      "101" when "111011", 
      "100" when "111100", 
      "101" when "111101", 
      "101" when "111110", 
      "110" when "111111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                              Compressor_14_3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_14_3 is
   port ( X0 : in  std_logic_vector(3 downto 0);
          X1 : in  std_logic_vector(0 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_14_3 is
signal X :  std_logic_vector(4 downto 0);
begin
   X <=X1 & X0 ;
   with X select R <= 
      "000" when "00000", 
      "001" when "00001", 
      "001" when "00010", 
      "010" when "00011", 
      "001" when "00100", 
      "010" when "00101", 
      "010" when "00110", 
      "011" when "00111", 
      "001" when "01000", 
      "010" when "01001", 
      "010" when "01010", 
      "011" when "01011", 
      "010" when "01100", 
      "011" when "01101", 
      "011" when "01110", 
      "100" when "01111", 
      "010" when "10000", 
      "011" when "10001", 
      "011" when "10010", 
      "100" when "10011", 
      "011" when "10100", 
      "100" when "10101", 
      "100" when "10110", 
      "101" when "10111", 
      "011" when "11000", 
      "100" when "11001", 
      "100" when "11010", 
      "101" when "11011", 
      "100" when "11100", 
      "101" when "11101", 
      "101" when "11110", 
      "110" when "11111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                               Compressor_4_3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_4_3 is
   port ( X0 : in  std_logic_vector(3 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_4_3 is
signal X :  std_logic_vector(3 downto 0);
begin
   X <=X0 ;
   with X select R <= 
      "000" when "0000", 
      "001" when "0001", 
      "001" when "0010", 
      "010" when "0011", 
      "001" when "0100", 
      "010" when "0101", 
      "010" when "0110", 
      "011" when "0111", 
      "001" when "1000", 
      "010" when "1001", 
      "010" when "1010", 
      "011" when "1011", 
      "010" when "1100", 
      "011" when "1101", 
      "011" when "1110", 
      "100" when "1111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                              Compressor_23_3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_23_3 is
   port ( X0 : in  std_logic_vector(2 downto 0);
          X1 : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_23_3 is
signal X :  std_logic_vector(4 downto 0);
begin
   X <=X1 & X0 ;
   with X select R <= 
      "000" when "00000", 
      "001" when "00001", 
      "001" when "00010", 
      "010" when "00011", 
      "001" when "00100", 
      "010" when "00101", 
      "010" when "00110", 
      "011" when "00111", 
      "010" when "01000", 
      "011" when "01001", 
      "011" when "01010", 
      "100" when "01011", 
      "011" when "01100", 
      "100" when "01101", 
      "100" when "01110", 
      "101" when "01111", 
      "010" when "10000", 
      "011" when "10001", 
      "011" when "10010", 
      "100" when "10011", 
      "011" when "10100", 
      "100" when "10101", 
      "100" when "10110", 
      "101" when "10111", 
      "100" when "11000", 
      "101" when "11001", 
      "101" when "11010", 
      "110" when "11011", 
      "101" when "11100", 
      "110" when "11101", 
      "110" when "11110", 
      "111" when "11111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                              Compressor_13_3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_13_3 is
   port ( X0 : in  std_logic_vector(2 downto 0);
          X1 : in  std_logic_vector(0 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_13_3 is
signal X :  std_logic_vector(3 downto 0);
begin
   X <=X1 & X0 ;
   with X select R <= 
      "000" when "0000", 
      "001" when "0001", 
      "001" when "0010", 
      "010" when "0011", 
      "001" when "0100", 
      "010" when "0101", 
      "010" when "0110", 
      "011" when "0111", 
      "010" when "1000", 
      "011" when "1001", 
      "011" when "1010", 
      "100" when "1011", 
      "011" when "1100", 
      "100" when "1101", 
      "100" when "1110", 
      "101" when "1111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                               Compressor_3_2
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_3_2 is
   port ( X0 : in  std_logic_vector(2 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of Compressor_3_2 is
signal X :  std_logic_vector(2 downto 0);
begin
   X <=X0 ;
   with X select R <= 
      "00" when "000", 
      "01" when "001", 
      "01" when "010", 
      "10" when "011", 
      "01" when "100", 
      "10" when "101", 
      "10" when "110", 
      "11" when "111", 
      "--" when others;

end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_45_f300_uid405
--                     (IntAdderClassical_45_F300_uid407)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_45_f300_uid405 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(44 downto 0);
          Y : in  std_logic_vector(44 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(44 downto 0)   );
end entity;

architecture arch of IntAdder_45_f300_uid405 is
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   --Classical
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--            IntMultiplier_LogicOnly_24_24_48_unsigned_F300_uid4
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Kinga Illyes, Bogdan Popa, Bogdan Pasca, 2012
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity IntMultiplier_LogicOnly_24_24_48_unsigned_F300_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          Y : in  std_logic_vector(23 downto 0);
          R : out  std_logic_vector(47 downto 0)   );
end entity;

architecture arch of IntMultiplier_LogicOnly_24_24_48_unsigned_F300_uid4 is
   component IntAdder_45_f300_uid405 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(44 downto 0);
             Y : in  std_logic_vector(44 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(44 downto 0)   );
   end component;

   component SmallMultTableP3x3r6XuYu_F300_uid8 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(5 downto 0);
             Y : out  std_logic_vector(5 downto 0)   );
   end component;

   component Compressor_6_3 is
      port ( X0 : in  std_logic_vector(5 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_14_3 is
      port ( X0 : in  std_logic_vector(3 downto 0);
             X1 : in  std_logic_vector(0 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_4_3 is
      port ( X0 : in  std_logic_vector(3 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_23_3 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             X1 : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_13_3 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             X1 : in  std_logic_vector(0 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_3_2 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

signal XX_m5 :  std_logic_vector(23 downto 0);
signal YY_m5 :  std_logic_vector(23 downto 0);
signal Xp_m5b0 :  std_logic_vector(23 downto 0);
signal Yp_m5b0 :  std_logic_vector(23 downto 0);
signal x_m5b0_0 :  std_logic_vector(2 downto 0);
signal x_m5b0_1 :  std_logic_vector(2 downto 0);
signal x_m5b0_2 :  std_logic_vector(2 downto 0);
signal x_m5b0_3 :  std_logic_vector(2 downto 0);
signal x_m5b0_4 :  std_logic_vector(2 downto 0);
signal x_m5b0_5 :  std_logic_vector(2 downto 0);
signal x_m5b0_6 :  std_logic_vector(2 downto 0);
signal x_m5b0_7 :  std_logic_vector(2 downto 0);
signal y_m5b0_0 :  std_logic_vector(2 downto 0);
signal y_m5b0_1 :  std_logic_vector(2 downto 0);
signal y_m5b0_2 :  std_logic_vector(2 downto 0);
signal y_m5b0_3 :  std_logic_vector(2 downto 0);
signal y_m5b0_4 :  std_logic_vector(2 downto 0);
signal y_m5b0_5 :  std_logic_vector(2 downto 0);
signal y_m5b0_6 :  std_logic_vector(2 downto 0);
signal y_m5b0_7 :  std_logic_vector(2 downto 0);
signal Y0X0_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X0Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w0_0 :  std_logic;
signal heap_bh6_w1_0 :  std_logic;
signal heap_bh6_w2_0 :  std_logic;
signal heap_bh6_w3_0 :  std_logic;
signal heap_bh6_w4_0, heap_bh6_w4_0_d1 :  std_logic;
signal heap_bh6_w5_0 :  std_logic;
signal Y0X1_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X1Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w3_1 :  std_logic;
signal heap_bh6_w4_1 :  std_logic;
signal heap_bh6_w5_1 :  std_logic;
signal heap_bh6_w6_0 :  std_logic;
signal heap_bh6_w7_0 :  std_logic;
signal heap_bh6_w8_0 :  std_logic;
signal Y0X2_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X2Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w6_1 :  std_logic;
signal heap_bh6_w7_1 :  std_logic;
signal heap_bh6_w8_1 :  std_logic;
signal heap_bh6_w9_0 :  std_logic;
signal heap_bh6_w10_0 :  std_logic;
signal heap_bh6_w11_0 :  std_logic;
signal Y0X3_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X3Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w9_1 :  std_logic;
signal heap_bh6_w10_1 :  std_logic;
signal heap_bh6_w11_1 :  std_logic;
signal heap_bh6_w12_0 :  std_logic;
signal heap_bh6_w13_0 :  std_logic;
signal heap_bh6_w14_0 :  std_logic;
signal Y0X4_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X4Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w12_1 :  std_logic;
signal heap_bh6_w13_1 :  std_logic;
signal heap_bh6_w14_1 :  std_logic;
signal heap_bh6_w15_0 :  std_logic;
signal heap_bh6_w16_0 :  std_logic;
signal heap_bh6_w17_0 :  std_logic;
signal Y0X5_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X5Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w15_1 :  std_logic;
signal heap_bh6_w16_1 :  std_logic;
signal heap_bh6_w17_1 :  std_logic;
signal heap_bh6_w18_0 :  std_logic;
signal heap_bh6_w19_0 :  std_logic;
signal heap_bh6_w20_0 :  std_logic;
signal Y0X6_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X6Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w18_1 :  std_logic;
signal heap_bh6_w19_1 :  std_logic;
signal heap_bh6_w20_1 :  std_logic;
signal heap_bh6_w21_0 :  std_logic;
signal heap_bh6_w22_0 :  std_logic;
signal heap_bh6_w23_0 :  std_logic;
signal Y0X7_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X7Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w21_1 :  std_logic;
signal heap_bh6_w22_1 :  std_logic;
signal heap_bh6_w23_1 :  std_logic;
signal heap_bh6_w24_0 :  std_logic;
signal heap_bh6_w25_0 :  std_logic;
signal heap_bh6_w26_0 :  std_logic;
signal Y1X0_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X0Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w3_2 :  std_logic;
signal heap_bh6_w4_2 :  std_logic;
signal heap_bh6_w5_2 :  std_logic;
signal heap_bh6_w6_2 :  std_logic;
signal heap_bh6_w7_2 :  std_logic;
signal heap_bh6_w8_2 :  std_logic;
signal Y1X1_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X1Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w6_3 :  std_logic;
signal heap_bh6_w7_3 :  std_logic;
signal heap_bh6_w8_3 :  std_logic;
signal heap_bh6_w9_2 :  std_logic;
signal heap_bh6_w10_2 :  std_logic;
signal heap_bh6_w11_2 :  std_logic;
signal Y1X2_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X2Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w9_3 :  std_logic;
signal heap_bh6_w10_3 :  std_logic;
signal heap_bh6_w11_3 :  std_logic;
signal heap_bh6_w12_2 :  std_logic;
signal heap_bh6_w13_2 :  std_logic;
signal heap_bh6_w14_2 :  std_logic;
signal Y1X3_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X3Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w12_3 :  std_logic;
signal heap_bh6_w13_3 :  std_logic;
signal heap_bh6_w14_3 :  std_logic;
signal heap_bh6_w15_2 :  std_logic;
signal heap_bh6_w16_2 :  std_logic;
signal heap_bh6_w17_2 :  std_logic;
signal Y1X4_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X4Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w15_3 :  std_logic;
signal heap_bh6_w16_3 :  std_logic;
signal heap_bh6_w17_3 :  std_logic;
signal heap_bh6_w18_2 :  std_logic;
signal heap_bh6_w19_2 :  std_logic;
signal heap_bh6_w20_2 :  std_logic;
signal Y1X5_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X5Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w18_3 :  std_logic;
signal heap_bh6_w19_3 :  std_logic;
signal heap_bh6_w20_3 :  std_logic;
signal heap_bh6_w21_2 :  std_logic;
signal heap_bh6_w22_2 :  std_logic;
signal heap_bh6_w23_2 :  std_logic;
signal Y1X6_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X6Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w21_3 :  std_logic;
signal heap_bh6_w22_3 :  std_logic;
signal heap_bh6_w23_3 :  std_logic;
signal heap_bh6_w24_1 :  std_logic;
signal heap_bh6_w25_1 :  std_logic;
signal heap_bh6_w26_1 :  std_logic;
signal Y1X7_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X7Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w24_2 :  std_logic;
signal heap_bh6_w25_2 :  std_logic;
signal heap_bh6_w26_2 :  std_logic;
signal heap_bh6_w27_0 :  std_logic;
signal heap_bh6_w28_0 :  std_logic;
signal heap_bh6_w29_0 :  std_logic;
signal Y2X0_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X0Y2_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w6_4 :  std_logic;
signal heap_bh6_w7_4 :  std_logic;
signal heap_bh6_w8_4 :  std_logic;
signal heap_bh6_w9_4 :  std_logic;
signal heap_bh6_w10_4 :  std_logic;
signal heap_bh6_w11_4 :  std_logic;
signal Y2X1_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X1Y2_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w9_5 :  std_logic;
signal heap_bh6_w10_5 :  std_logic;
signal heap_bh6_w11_5 :  std_logic;
signal heap_bh6_w12_4 :  std_logic;
signal heap_bh6_w13_4 :  std_logic;
signal heap_bh6_w14_4 :  std_logic;
signal Y2X2_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X2Y2_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w12_5 :  std_logic;
signal heap_bh6_w13_5 :  std_logic;
signal heap_bh6_w14_5 :  std_logic;
signal heap_bh6_w15_4 :  std_logic;
signal heap_bh6_w16_4 :  std_logic;
signal heap_bh6_w17_4 :  std_logic;
signal Y2X3_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X3Y2_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w15_5 :  std_logic;
signal heap_bh6_w16_5 :  std_logic;
signal heap_bh6_w17_5 :  std_logic;
signal heap_bh6_w18_4 :  std_logic;
signal heap_bh6_w19_4 :  std_logic;
signal heap_bh6_w20_4 :  std_logic;
signal Y2X4_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X4Y2_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w18_5 :  std_logic;
signal heap_bh6_w19_5 :  std_logic;
signal heap_bh6_w20_5 :  std_logic;
signal heap_bh6_w21_4 :  std_logic;
signal heap_bh6_w22_4 :  std_logic;
signal heap_bh6_w23_4 :  std_logic;
signal Y2X5_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X5Y2_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w21_5 :  std_logic;
signal heap_bh6_w22_5 :  std_logic;
signal heap_bh6_w23_5 :  std_logic;
signal heap_bh6_w24_3 :  std_logic;
signal heap_bh6_w25_3 :  std_logic;
signal heap_bh6_w26_3 :  std_logic;
signal Y2X6_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X6Y2_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w24_4 :  std_logic;
signal heap_bh6_w25_4 :  std_logic;
signal heap_bh6_w26_4 :  std_logic;
signal heap_bh6_w27_1 :  std_logic;
signal heap_bh6_w28_1 :  std_logic;
signal heap_bh6_w29_1 :  std_logic;
signal Y2X7_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X7Y2_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w27_2 :  std_logic;
signal heap_bh6_w28_2 :  std_logic;
signal heap_bh6_w29_2 :  std_logic;
signal heap_bh6_w30_0 :  std_logic;
signal heap_bh6_w31_0 :  std_logic;
signal heap_bh6_w32_0 :  std_logic;
signal Y3X0_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X0Y3_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w9_6 :  std_logic;
signal heap_bh6_w10_6 :  std_logic;
signal heap_bh6_w11_6 :  std_logic;
signal heap_bh6_w12_6 :  std_logic;
signal heap_bh6_w13_6 :  std_logic;
signal heap_bh6_w14_6 :  std_logic;
signal Y3X1_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X1Y3_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w12_7 :  std_logic;
signal heap_bh6_w13_7 :  std_logic;
signal heap_bh6_w14_7 :  std_logic;
signal heap_bh6_w15_6 :  std_logic;
signal heap_bh6_w16_6 :  std_logic;
signal heap_bh6_w17_6 :  std_logic;
signal Y3X2_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X2Y3_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w15_7 :  std_logic;
signal heap_bh6_w16_7 :  std_logic;
signal heap_bh6_w17_7 :  std_logic;
signal heap_bh6_w18_6 :  std_logic;
signal heap_bh6_w19_6 :  std_logic;
signal heap_bh6_w20_6 :  std_logic;
signal Y3X3_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X3Y3_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w18_7 :  std_logic;
signal heap_bh6_w19_7 :  std_logic;
signal heap_bh6_w20_7 :  std_logic;
signal heap_bh6_w21_6 :  std_logic;
signal heap_bh6_w22_6 :  std_logic;
signal heap_bh6_w23_6 :  std_logic;
signal Y3X4_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X4Y3_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w21_7 :  std_logic;
signal heap_bh6_w22_7 :  std_logic;
signal heap_bh6_w23_7 :  std_logic;
signal heap_bh6_w24_5 :  std_logic;
signal heap_bh6_w25_5 :  std_logic;
signal heap_bh6_w26_5 :  std_logic;
signal Y3X5_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X5Y3_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w24_6 :  std_logic;
signal heap_bh6_w25_6 :  std_logic;
signal heap_bh6_w26_6 :  std_logic;
signal heap_bh6_w27_3 :  std_logic;
signal heap_bh6_w28_3 :  std_logic;
signal heap_bh6_w29_3 :  std_logic;
signal Y3X6_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X6Y3_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w27_4 :  std_logic;
signal heap_bh6_w28_4 :  std_logic;
signal heap_bh6_w29_4 :  std_logic;
signal heap_bh6_w30_1 :  std_logic;
signal heap_bh6_w31_1 :  std_logic;
signal heap_bh6_w32_1 :  std_logic;
signal Y3X7_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X7Y3_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w30_2 :  std_logic;
signal heap_bh6_w31_2 :  std_logic;
signal heap_bh6_w32_2 :  std_logic;
signal heap_bh6_w33_0 :  std_logic;
signal heap_bh6_w34_0 :  std_logic;
signal heap_bh6_w35_0 :  std_logic;
signal Y4X0_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X0Y4_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w12_8 :  std_logic;
signal heap_bh6_w13_8 :  std_logic;
signal heap_bh6_w14_8 :  std_logic;
signal heap_bh6_w15_8 :  std_logic;
signal heap_bh6_w16_8 :  std_logic;
signal heap_bh6_w17_8 :  std_logic;
signal Y4X1_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X1Y4_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w15_9 :  std_logic;
signal heap_bh6_w16_9 :  std_logic;
signal heap_bh6_w17_9 :  std_logic;
signal heap_bh6_w18_8 :  std_logic;
signal heap_bh6_w19_8 :  std_logic;
signal heap_bh6_w20_8 :  std_logic;
signal Y4X2_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X2Y4_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w18_9 :  std_logic;
signal heap_bh6_w19_9 :  std_logic;
signal heap_bh6_w20_9 :  std_logic;
signal heap_bh6_w21_8 :  std_logic;
signal heap_bh6_w22_8 :  std_logic;
signal heap_bh6_w23_8 :  std_logic;
signal Y4X3_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X3Y4_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w21_9 :  std_logic;
signal heap_bh6_w22_9 :  std_logic;
signal heap_bh6_w23_9 :  std_logic;
signal heap_bh6_w24_7 :  std_logic;
signal heap_bh6_w25_7 :  std_logic;
signal heap_bh6_w26_7 :  std_logic;
signal Y4X4_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X4Y4_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w24_8 :  std_logic;
signal heap_bh6_w25_8 :  std_logic;
signal heap_bh6_w26_8 :  std_logic;
signal heap_bh6_w27_5 :  std_logic;
signal heap_bh6_w28_5 :  std_logic;
signal heap_bh6_w29_5 :  std_logic;
signal Y4X5_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X5Y4_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w27_6 :  std_logic;
signal heap_bh6_w28_6 :  std_logic;
signal heap_bh6_w29_6 :  std_logic;
signal heap_bh6_w30_3 :  std_logic;
signal heap_bh6_w31_3 :  std_logic;
signal heap_bh6_w32_3 :  std_logic;
signal Y4X6_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X6Y4_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w30_4 :  std_logic;
signal heap_bh6_w31_4 :  std_logic;
signal heap_bh6_w32_4 :  std_logic;
signal heap_bh6_w33_1 :  std_logic;
signal heap_bh6_w34_1 :  std_logic;
signal heap_bh6_w35_1 :  std_logic;
signal Y4X7_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X7Y4_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w33_2 :  std_logic;
signal heap_bh6_w34_2 :  std_logic;
signal heap_bh6_w35_2 :  std_logic;
signal heap_bh6_w36_0 :  std_logic;
signal heap_bh6_w37_0 :  std_logic;
signal heap_bh6_w38_0 :  std_logic;
signal Y5X0_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X0Y5_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w15_10 :  std_logic;
signal heap_bh6_w16_10 :  std_logic;
signal heap_bh6_w17_10 :  std_logic;
signal heap_bh6_w18_10 :  std_logic;
signal heap_bh6_w19_10 :  std_logic;
signal heap_bh6_w20_10 :  std_logic;
signal Y5X1_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X1Y5_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w18_11 :  std_logic;
signal heap_bh6_w19_11 :  std_logic;
signal heap_bh6_w20_11 :  std_logic;
signal heap_bh6_w21_10 :  std_logic;
signal heap_bh6_w22_10 :  std_logic;
signal heap_bh6_w23_10 :  std_logic;
signal Y5X2_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X2Y5_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w21_11 :  std_logic;
signal heap_bh6_w22_11 :  std_logic;
signal heap_bh6_w23_11 :  std_logic;
signal heap_bh6_w24_9 :  std_logic;
signal heap_bh6_w25_9 :  std_logic;
signal heap_bh6_w26_9 :  std_logic;
signal Y5X3_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X3Y5_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w24_10 :  std_logic;
signal heap_bh6_w25_10 :  std_logic;
signal heap_bh6_w26_10 :  std_logic;
signal heap_bh6_w27_7 :  std_logic;
signal heap_bh6_w28_7 :  std_logic;
signal heap_bh6_w29_7 :  std_logic;
signal Y5X4_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X4Y5_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w27_8 :  std_logic;
signal heap_bh6_w28_8 :  std_logic;
signal heap_bh6_w29_8 :  std_logic;
signal heap_bh6_w30_5 :  std_logic;
signal heap_bh6_w31_5 :  std_logic;
signal heap_bh6_w32_5 :  std_logic;
signal Y5X5_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X5Y5_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w30_6 :  std_logic;
signal heap_bh6_w31_6 :  std_logic;
signal heap_bh6_w32_6 :  std_logic;
signal heap_bh6_w33_3 :  std_logic;
signal heap_bh6_w34_3 :  std_logic;
signal heap_bh6_w35_3 :  std_logic;
signal Y5X6_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X6Y5_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w33_4 :  std_logic;
signal heap_bh6_w34_4 :  std_logic;
signal heap_bh6_w35_4 :  std_logic;
signal heap_bh6_w36_1 :  std_logic;
signal heap_bh6_w37_1 :  std_logic;
signal heap_bh6_w38_1 :  std_logic;
signal Y5X7_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X7Y5_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w36_2 :  std_logic;
signal heap_bh6_w37_2 :  std_logic;
signal heap_bh6_w38_2 :  std_logic;
signal heap_bh6_w39_0 :  std_logic;
signal heap_bh6_w40_0 :  std_logic;
signal heap_bh6_w41_0 :  std_logic;
signal Y6X0_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X0Y6_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w18_12 :  std_logic;
signal heap_bh6_w19_12 :  std_logic;
signal heap_bh6_w20_12 :  std_logic;
signal heap_bh6_w21_12 :  std_logic;
signal heap_bh6_w22_12 :  std_logic;
signal heap_bh6_w23_12 :  std_logic;
signal Y6X1_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X1Y6_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w21_13 :  std_logic;
signal heap_bh6_w22_13 :  std_logic;
signal heap_bh6_w23_13 :  std_logic;
signal heap_bh6_w24_11 :  std_logic;
signal heap_bh6_w25_11 :  std_logic;
signal heap_bh6_w26_11 :  std_logic;
signal Y6X2_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X2Y6_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w24_12 :  std_logic;
signal heap_bh6_w25_12 :  std_logic;
signal heap_bh6_w26_12 :  std_logic;
signal heap_bh6_w27_9 :  std_logic;
signal heap_bh6_w28_9 :  std_logic;
signal heap_bh6_w29_9 :  std_logic;
signal Y6X3_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X3Y6_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w27_10 :  std_logic;
signal heap_bh6_w28_10 :  std_logic;
signal heap_bh6_w29_10 :  std_logic;
signal heap_bh6_w30_7 :  std_logic;
signal heap_bh6_w31_7 :  std_logic;
signal heap_bh6_w32_7 :  std_logic;
signal Y6X4_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X4Y6_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w30_8 :  std_logic;
signal heap_bh6_w31_8 :  std_logic;
signal heap_bh6_w32_8 :  std_logic;
signal heap_bh6_w33_5 :  std_logic;
signal heap_bh6_w34_5 :  std_logic;
signal heap_bh6_w35_5 :  std_logic;
signal Y6X5_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X5Y6_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w33_6 :  std_logic;
signal heap_bh6_w34_6 :  std_logic;
signal heap_bh6_w35_6 :  std_logic;
signal heap_bh6_w36_3 :  std_logic;
signal heap_bh6_w37_3 :  std_logic;
signal heap_bh6_w38_3 :  std_logic;
signal Y6X6_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X6Y6_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w36_4 :  std_logic;
signal heap_bh6_w37_4 :  std_logic;
signal heap_bh6_w38_4 :  std_logic;
signal heap_bh6_w39_1 :  std_logic;
signal heap_bh6_w40_1 :  std_logic;
signal heap_bh6_w41_1 :  std_logic;
signal Y6X7_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X7Y6_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w39_2 :  std_logic;
signal heap_bh6_w40_2 :  std_logic;
signal heap_bh6_w41_2 :  std_logic;
signal heap_bh6_w42_0 :  std_logic;
signal heap_bh6_w43_0 :  std_logic;
signal heap_bh6_w44_0 :  std_logic;
signal Y7X0_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X0Y7_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w21_14 :  std_logic;
signal heap_bh6_w22_14 :  std_logic;
signal heap_bh6_w23_14 :  std_logic;
signal heap_bh6_w24_13 :  std_logic;
signal heap_bh6_w25_13 :  std_logic;
signal heap_bh6_w26_13 :  std_logic;
signal Y7X1_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X1Y7_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w24_14 :  std_logic;
signal heap_bh6_w25_14 :  std_logic;
signal heap_bh6_w26_14 :  std_logic;
signal heap_bh6_w27_11 :  std_logic;
signal heap_bh6_w28_11 :  std_logic;
signal heap_bh6_w29_11 :  std_logic;
signal Y7X2_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X2Y7_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w27_12 :  std_logic;
signal heap_bh6_w28_12 :  std_logic;
signal heap_bh6_w29_12 :  std_logic;
signal heap_bh6_w30_9 :  std_logic;
signal heap_bh6_w31_9 :  std_logic;
signal heap_bh6_w32_9 :  std_logic;
signal Y7X3_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X3Y7_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w30_10 :  std_logic;
signal heap_bh6_w31_10 :  std_logic;
signal heap_bh6_w32_10 :  std_logic;
signal heap_bh6_w33_7 :  std_logic;
signal heap_bh6_w34_7 :  std_logic;
signal heap_bh6_w35_7 :  std_logic;
signal Y7X4_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X4Y7_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w33_8 :  std_logic;
signal heap_bh6_w34_8 :  std_logic;
signal heap_bh6_w35_8 :  std_logic;
signal heap_bh6_w36_5 :  std_logic;
signal heap_bh6_w37_5 :  std_logic;
signal heap_bh6_w38_5 :  std_logic;
signal Y7X5_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X5Y7_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w36_6 :  std_logic;
signal heap_bh6_w37_6 :  std_logic;
signal heap_bh6_w38_6 :  std_logic;
signal heap_bh6_w39_3 :  std_logic;
signal heap_bh6_w40_3 :  std_logic;
signal heap_bh6_w41_3 :  std_logic;
signal Y7X6_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X6Y7_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w39_4 :  std_logic;
signal heap_bh6_w40_4 :  std_logic;
signal heap_bh6_w41_4 :  std_logic;
signal heap_bh6_w42_1 :  std_logic;
signal heap_bh6_w43_1 :  std_logic;
signal heap_bh6_w44_1 :  std_logic;
signal Y7X7_0_m5 :  std_logic_vector(5 downto 0);
signal PP0X7Y7_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w42_2 :  std_logic;
signal heap_bh6_w43_2 :  std_logic;
signal heap_bh6_w44_2 :  std_logic;
signal heap_bh6_w45_0 :  std_logic;
signal heap_bh6_w46_0, heap_bh6_w46_0_d1 :  std_logic;
signal heap_bh6_w47_0, heap_bh6_w47_0_d1 :  std_logic;
signal tempR_bh6_0, tempR_bh6_0_d1 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_0_0 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_0_0 :  std_logic_vector(2 downto 0);
signal heap_bh6_w9_7 :  std_logic;
signal heap_bh6_w10_7 :  std_logic;
signal heap_bh6_w11_7 :  std_logic;
signal CompressorIn_bh6_1_1 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_1_1 :  std_logic_vector(2 downto 0);
signal heap_bh6_w10_8 :  std_logic;
signal heap_bh6_w11_8 :  std_logic;
signal heap_bh6_w12_9 :  std_logic;
signal CompressorIn_bh6_2_2 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_2_2 :  std_logic_vector(2 downto 0);
signal heap_bh6_w11_9 :  std_logic;
signal heap_bh6_w12_10 :  std_logic;
signal heap_bh6_w13_9 :  std_logic;
signal CompressorIn_bh6_3_3 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_3_3 :  std_logic_vector(2 downto 0);
signal heap_bh6_w12_11 :  std_logic;
signal heap_bh6_w13_10 :  std_logic;
signal heap_bh6_w14_9 :  std_logic;
signal CompressorIn_bh6_4_4 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_4_4 :  std_logic_vector(2 downto 0);
signal heap_bh6_w13_11 :  std_logic;
signal heap_bh6_w14_10 :  std_logic;
signal heap_bh6_w15_11 :  std_logic;
signal CompressorIn_bh6_5_5 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_5_5 :  std_logic_vector(2 downto 0);
signal heap_bh6_w14_11 :  std_logic;
signal heap_bh6_w15_12 :  std_logic;
signal heap_bh6_w16_11 :  std_logic;
signal CompressorIn_bh6_6_6 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_6_6 :  std_logic_vector(2 downto 0);
signal heap_bh6_w15_13 :  std_logic;
signal heap_bh6_w16_12 :  std_logic;
signal heap_bh6_w17_11 :  std_logic;
signal CompressorIn_bh6_7_7 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_7_7 :  std_logic_vector(2 downto 0);
signal heap_bh6_w16_13 :  std_logic;
signal heap_bh6_w17_12 :  std_logic;
signal heap_bh6_w18_13 :  std_logic;
signal CompressorIn_bh6_8_8 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_8_8 :  std_logic_vector(2 downto 0);
signal heap_bh6_w17_13 :  std_logic;
signal heap_bh6_w18_14 :  std_logic;
signal heap_bh6_w19_13 :  std_logic;
signal CompressorIn_bh6_9_9 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_9_9 :  std_logic_vector(2 downto 0);
signal heap_bh6_w18_15 :  std_logic;
signal heap_bh6_w19_14 :  std_logic;
signal heap_bh6_w20_13 :  std_logic;
signal CompressorIn_bh6_10_10 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_10_10 :  std_logic_vector(2 downto 0);
signal heap_bh6_w18_16 :  std_logic;
signal heap_bh6_w19_15 :  std_logic;
signal heap_bh6_w20_14 :  std_logic;
signal CompressorIn_bh6_11_11 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_11_11 :  std_logic_vector(2 downto 0);
signal heap_bh6_w19_16 :  std_logic;
signal heap_bh6_w20_15 :  std_logic;
signal heap_bh6_w21_15 :  std_logic;
signal CompressorIn_bh6_12_12 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_12_12 :  std_logic_vector(2 downto 0);
signal heap_bh6_w19_17 :  std_logic;
signal heap_bh6_w20_16 :  std_logic;
signal heap_bh6_w21_16 :  std_logic;
signal CompressorIn_bh6_13_13 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_13_13 :  std_logic_vector(2 downto 0);
signal heap_bh6_w20_17 :  std_logic;
signal heap_bh6_w21_17 :  std_logic;
signal heap_bh6_w22_15 :  std_logic;
signal CompressorIn_bh6_14_14 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_14_14 :  std_logic_vector(2 downto 0);
signal heap_bh6_w20_18 :  std_logic;
signal heap_bh6_w21_18 :  std_logic;
signal heap_bh6_w22_16 :  std_logic;
signal CompressorIn_bh6_15_15 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_15_15 :  std_logic_vector(2 downto 0);
signal heap_bh6_w21_19 :  std_logic;
signal heap_bh6_w22_17 :  std_logic;
signal heap_bh6_w23_15 :  std_logic;
signal CompressorIn_bh6_16_16 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_16_16 :  std_logic_vector(2 downto 0);
signal heap_bh6_w21_20 :  std_logic;
signal heap_bh6_w22_18 :  std_logic;
signal heap_bh6_w23_16 :  std_logic;
signal CompressorIn_bh6_17_17 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_17_17 :  std_logic_vector(2 downto 0);
signal heap_bh6_w22_19 :  std_logic;
signal heap_bh6_w23_17 :  std_logic;
signal heap_bh6_w24_15 :  std_logic;
signal CompressorIn_bh6_18_18 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_18_18 :  std_logic_vector(2 downto 0);
signal heap_bh6_w22_20 :  std_logic;
signal heap_bh6_w23_18 :  std_logic;
signal heap_bh6_w24_16 :  std_logic;
signal CompressorIn_bh6_19_19 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_19_19 :  std_logic_vector(2 downto 0);
signal heap_bh6_w23_19 :  std_logic;
signal heap_bh6_w24_17 :  std_logic;
signal heap_bh6_w25_15 :  std_logic;
signal CompressorIn_bh6_20_20 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_20_20 :  std_logic_vector(2 downto 0);
signal heap_bh6_w23_20 :  std_logic;
signal heap_bh6_w24_18 :  std_logic;
signal heap_bh6_w25_16 :  std_logic;
signal CompressorIn_bh6_21_21 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_21_21 :  std_logic_vector(2 downto 0);
signal heap_bh6_w24_19 :  std_logic;
signal heap_bh6_w25_17 :  std_logic;
signal heap_bh6_w26_15 :  std_logic;
signal CompressorIn_bh6_22_22 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_22_22 :  std_logic_vector(2 downto 0);
signal heap_bh6_w24_20 :  std_logic;
signal heap_bh6_w25_18 :  std_logic;
signal heap_bh6_w26_16 :  std_logic;
signal CompressorIn_bh6_23_23 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_23_23 :  std_logic_vector(2 downto 0);
signal heap_bh6_w25_19 :  std_logic;
signal heap_bh6_w26_17 :  std_logic;
signal heap_bh6_w27_13 :  std_logic;
signal CompressorIn_bh6_24_24 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_24_24 :  std_logic_vector(2 downto 0);
signal heap_bh6_w25_20 :  std_logic;
signal heap_bh6_w26_18 :  std_logic;
signal heap_bh6_w27_14 :  std_logic;
signal CompressorIn_bh6_25_25 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_25_25 :  std_logic_vector(2 downto 0);
signal heap_bh6_w26_19 :  std_logic;
signal heap_bh6_w27_15 :  std_logic;
signal heap_bh6_w28_13 :  std_logic;
signal CompressorIn_bh6_26_26 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_26_26 :  std_logic_vector(2 downto 0);
signal heap_bh6_w26_20 :  std_logic;
signal heap_bh6_w27_16 :  std_logic;
signal heap_bh6_w28_14 :  std_logic;
signal CompressorIn_bh6_27_27 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_27_27 :  std_logic_vector(2 downto 0);
signal heap_bh6_w27_17 :  std_logic;
signal heap_bh6_w28_15 :  std_logic;
signal heap_bh6_w29_13 :  std_logic;
signal CompressorIn_bh6_28_28 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_28_28 :  std_logic_vector(2 downto 0);
signal heap_bh6_w27_18 :  std_logic;
signal heap_bh6_w28_16 :  std_logic;
signal heap_bh6_w29_14 :  std_logic;
signal CompressorIn_bh6_29_29 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_29_29 :  std_logic_vector(2 downto 0);
signal heap_bh6_w28_17 :  std_logic;
signal heap_bh6_w29_15 :  std_logic;
signal heap_bh6_w30_11 :  std_logic;
signal CompressorIn_bh6_30_30 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_30_30 :  std_logic_vector(2 downto 0);
signal heap_bh6_w28_18 :  std_logic;
signal heap_bh6_w29_16 :  std_logic;
signal heap_bh6_w30_12 :  std_logic;
signal CompressorIn_bh6_31_31 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_31_31 :  std_logic_vector(2 downto 0);
signal heap_bh6_w29_17 :  std_logic;
signal heap_bh6_w30_13 :  std_logic;
signal heap_bh6_w31_11 :  std_logic;
signal CompressorIn_bh6_32_32 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_32_32 :  std_logic_vector(2 downto 0);
signal heap_bh6_w29_18 :  std_logic;
signal heap_bh6_w30_14 :  std_logic;
signal heap_bh6_w31_12 :  std_logic;
signal CompressorIn_bh6_33_33 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_33_33 :  std_logic_vector(2 downto 0);
signal heap_bh6_w30_15 :  std_logic;
signal heap_bh6_w31_13 :  std_logic;
signal heap_bh6_w32_11 :  std_logic;
signal CompressorIn_bh6_34_34 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_34_34 :  std_logic_vector(2 downto 0);
signal heap_bh6_w31_14 :  std_logic;
signal heap_bh6_w32_12 :  std_logic;
signal heap_bh6_w33_9 :  std_logic;
signal CompressorIn_bh6_35_35 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_35_35 :  std_logic_vector(2 downto 0);
signal heap_bh6_w32_13 :  std_logic;
signal heap_bh6_w33_10 :  std_logic;
signal heap_bh6_w34_9 :  std_logic;
signal CompressorIn_bh6_36_36 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_36_36 :  std_logic_vector(2 downto 0);
signal heap_bh6_w33_11 :  std_logic;
signal heap_bh6_w34_10 :  std_logic;
signal heap_bh6_w35_9 :  std_logic;
signal CompressorIn_bh6_37_37 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_37_37 :  std_logic_vector(2 downto 0);
signal heap_bh6_w34_11 :  std_logic;
signal heap_bh6_w35_10 :  std_logic;
signal heap_bh6_w36_7 :  std_logic;
signal CompressorIn_bh6_38_38 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_38_38 :  std_logic_vector(2 downto 0);
signal heap_bh6_w35_11 :  std_logic;
signal heap_bh6_w36_8 :  std_logic;
signal heap_bh6_w37_7 :  std_logic;
signal CompressorIn_bh6_39_39 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_39_39 :  std_logic_vector(2 downto 0);
signal heap_bh6_w36_9 :  std_logic;
signal heap_bh6_w37_8 :  std_logic;
signal heap_bh6_w38_7 :  std_logic;
signal CompressorIn_bh6_40_40 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_40_40 :  std_logic_vector(2 downto 0);
signal heap_bh6_w37_9 :  std_logic;
signal heap_bh6_w38_8 :  std_logic;
signal heap_bh6_w39_5 :  std_logic;
signal CompressorIn_bh6_41_41 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_41_41 :  std_logic_vector(2 downto 0);
signal heap_bh6_w38_9 :  std_logic;
signal heap_bh6_w39_6 :  std_logic;
signal heap_bh6_w40_5 :  std_logic;
signal CompressorIn_bh6_42_42 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_42_43 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_42_42 :  std_logic_vector(2 downto 0);
signal heap_bh6_w6_5, heap_bh6_w6_5_d1 :  std_logic;
signal heap_bh6_w7_5 :  std_logic;
signal heap_bh6_w8_5, heap_bh6_w8_5_d1 :  std_logic;
signal CompressorIn_bh6_43_44 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_43_45 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_43_43 :  std_logic_vector(2 downto 0);
signal heap_bh6_w7_6 :  std_logic;
signal heap_bh6_w8_6 :  std_logic;
signal heap_bh6_w9_8 :  std_logic;
signal CompressorIn_bh6_44_46 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_44_47 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_44_44 :  std_logic_vector(2 downto 0);
signal heap_bh6_w8_7 :  std_logic;
signal heap_bh6_w9_9 :  std_logic;
signal heap_bh6_w10_9 :  std_logic;
signal CompressorIn_bh6_45_48 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_45_49 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_45_45 :  std_logic_vector(2 downto 0);
signal heap_bh6_w15_14 :  std_logic;
signal heap_bh6_w16_14 :  std_logic;
signal heap_bh6_w17_14 :  std_logic;
signal CompressorIn_bh6_46_50 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_46_51 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_46_46 :  std_logic_vector(2 downto 0);
signal heap_bh6_w16_15 :  std_logic;
signal heap_bh6_w17_15 :  std_logic;
signal heap_bh6_w18_17 :  std_logic;
signal CompressorIn_bh6_47_52 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_47_53 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_47_47 :  std_logic_vector(2 downto 0);
signal heap_bh6_w17_16 :  std_logic;
signal heap_bh6_w18_18 :  std_logic;
signal heap_bh6_w19_18 :  std_logic;
signal CompressorIn_bh6_48_54 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_48_55 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_48_48 :  std_logic_vector(2 downto 0);
signal heap_bh6_w30_16 :  std_logic;
signal heap_bh6_w31_15 :  std_logic;
signal heap_bh6_w32_14 :  std_logic;
signal CompressorIn_bh6_49_56 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_49_57 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_49_49 :  std_logic_vector(2 downto 0);
signal heap_bh6_w31_16 :  std_logic;
signal heap_bh6_w32_15 :  std_logic;
signal heap_bh6_w33_12 :  std_logic;
signal CompressorIn_bh6_50_58 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_50_59 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_50_50 :  std_logic_vector(2 downto 0);
signal heap_bh6_w32_16 :  std_logic;
signal heap_bh6_w33_13 :  std_logic;
signal heap_bh6_w34_12 :  std_logic;
signal CompressorIn_bh6_51_60 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_51_61 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_51_51 :  std_logic_vector(2 downto 0);
signal heap_bh6_w39_7 :  std_logic;
signal heap_bh6_w40_6 :  std_logic;
signal heap_bh6_w41_5 :  std_logic;
signal CompressorIn_bh6_52_62 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_52_63 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_52_52 :  std_logic_vector(2 downto 0);
signal heap_bh6_w40_7 :  std_logic;
signal heap_bh6_w41_6 :  std_logic;
signal heap_bh6_w42_3 :  std_logic;
signal CompressorIn_bh6_53_64 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_53_65 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_53_53 :  std_logic_vector(2 downto 0);
signal heap_bh6_w41_7 :  std_logic;
signal heap_bh6_w42_4 :  std_logic;
signal heap_bh6_w43_3 :  std_logic;
signal CompressorIn_bh6_54_66 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_54_67 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_54_54 :  std_logic_vector(2 downto 0);
signal heap_bh6_w3_3 :  std_logic;
signal heap_bh6_w4_3, heap_bh6_w4_3_d1 :  std_logic;
signal heap_bh6_w5_3, heap_bh6_w5_3_d1 :  std_logic;
signal CompressorIn_bh6_55_68 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_55_69 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_55_55 :  std_logic_vector(2 downto 0);
signal heap_bh6_w12_12 :  std_logic;
signal heap_bh6_w13_12 :  std_logic;
signal heap_bh6_w14_12 :  std_logic;
signal CompressorIn_bh6_56_70 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_56_71 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_56_56 :  std_logic_vector(2 downto 0);
signal heap_bh6_w21_21 :  std_logic;
signal heap_bh6_w22_21 :  std_logic;
signal heap_bh6_w23_21 :  std_logic;
signal CompressorIn_bh6_57_72 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_57_73 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_57_57 :  std_logic_vector(2 downto 0);
signal heap_bh6_w23_22 :  std_logic;
signal heap_bh6_w24_21 :  std_logic;
signal heap_bh6_w25_21 :  std_logic;
signal CompressorIn_bh6_58_74 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_58_75 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_58_58 :  std_logic_vector(2 downto 0);
signal heap_bh6_w25_22 :  std_logic;
signal heap_bh6_w26_21 :  std_logic;
signal heap_bh6_w27_19 :  std_logic;
signal CompressorIn_bh6_59_76 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_59_77 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_59_59 :  std_logic_vector(2 downto 0);
signal heap_bh6_w34_13 :  std_logic;
signal heap_bh6_w35_12 :  std_logic;
signal heap_bh6_w36_10 :  std_logic;
signal CompressorIn_bh6_60_78 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_60_79 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_60_60 :  std_logic_vector(2 downto 0);
signal heap_bh6_w43_4 :  std_logic;
signal heap_bh6_w44_3 :  std_logic;
signal heap_bh6_w45_1 :  std_logic;
signal CompressorIn_bh6_61_80 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_61_81 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_61_61 :  std_logic_vector(2 downto 0);
signal heap_bh6_w5_4, heap_bh6_w5_4_d1 :  std_logic;
signal heap_bh6_w6_6, heap_bh6_w6_6_d1 :  std_logic;
signal heap_bh6_w7_7 :  std_logic;
signal CompressorIn_bh6_62_82 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_62_83 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_62_62 :  std_logic_vector(2 downto 0);
signal heap_bh6_w14_13 :  std_logic;
signal heap_bh6_w15_15 :  std_logic;
signal heap_bh6_w16_16 :  std_logic;
signal tempR_bh6_1, tempR_bh6_1_d1 :  std_logic;
signal CompressorIn_bh6_63_84 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_63_63 :  std_logic_vector(2 downto 0);
signal heap_bh6_w16_17 :  std_logic;
signal heap_bh6_w17_17, heap_bh6_w17_17_d1 :  std_logic;
signal heap_bh6_w18_19 :  std_logic;
signal CompressorIn_bh6_64_85 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_64_64 :  std_logic_vector(2 downto 0);
signal heap_bh6_w17_18 :  std_logic;
signal heap_bh6_w18_20 :  std_logic;
signal heap_bh6_w19_19 :  std_logic;
signal CompressorIn_bh6_65_86 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_65_65 :  std_logic_vector(2 downto 0);
signal heap_bh6_w18_21 :  std_logic;
signal heap_bh6_w19_20 :  std_logic;
signal heap_bh6_w20_19 :  std_logic;
signal CompressorIn_bh6_66_87 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_66_66 :  std_logic_vector(2 downto 0);
signal heap_bh6_w19_21 :  std_logic;
signal heap_bh6_w20_20 :  std_logic;
signal heap_bh6_w21_22 :  std_logic;
signal CompressorIn_bh6_67_88 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_67_67 :  std_logic_vector(2 downto 0);
signal heap_bh6_w20_21 :  std_logic;
signal heap_bh6_w21_23 :  std_logic;
signal heap_bh6_w22_22 :  std_logic;
signal CompressorIn_bh6_68_89 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_68_68 :  std_logic_vector(2 downto 0);
signal heap_bh6_w21_24 :  std_logic;
signal heap_bh6_w22_23 :  std_logic;
signal heap_bh6_w23_23 :  std_logic;
signal CompressorIn_bh6_69_90 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_69_69 :  std_logic_vector(2 downto 0);
signal heap_bh6_w22_24 :  std_logic;
signal heap_bh6_w23_24 :  std_logic;
signal heap_bh6_w24_22 :  std_logic;
signal CompressorIn_bh6_70_91 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_70_70 :  std_logic_vector(2 downto 0);
signal heap_bh6_w23_25 :  std_logic;
signal heap_bh6_w24_23 :  std_logic;
signal heap_bh6_w25_23 :  std_logic;
signal CompressorIn_bh6_71_92 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_71_71 :  std_logic_vector(2 downto 0);
signal heap_bh6_w24_24 :  std_logic;
signal heap_bh6_w25_24 :  std_logic;
signal heap_bh6_w26_22 :  std_logic;
signal CompressorIn_bh6_72_93 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_72_72 :  std_logic_vector(2 downto 0);
signal heap_bh6_w25_25 :  std_logic;
signal heap_bh6_w26_23 :  std_logic;
signal heap_bh6_w27_20 :  std_logic;
signal CompressorIn_bh6_73_94 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_73_73 :  std_logic_vector(2 downto 0);
signal heap_bh6_w26_24 :  std_logic;
signal heap_bh6_w27_21 :  std_logic;
signal heap_bh6_w28_19 :  std_logic;
signal CompressorIn_bh6_74_95 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_74_74 :  std_logic_vector(2 downto 0);
signal heap_bh6_w27_22 :  std_logic;
signal heap_bh6_w28_20 :  std_logic;
signal heap_bh6_w29_19 :  std_logic;
signal CompressorIn_bh6_75_96 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_75_75 :  std_logic_vector(2 downto 0);
signal heap_bh6_w28_21 :  std_logic;
signal heap_bh6_w29_20 :  std_logic;
signal heap_bh6_w30_17 :  std_logic;
signal CompressorIn_bh6_76_97 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_76_76 :  std_logic_vector(2 downto 0);
signal heap_bh6_w29_21 :  std_logic;
signal heap_bh6_w30_18 :  std_logic;
signal heap_bh6_w31_17 :  std_logic;
signal CompressorIn_bh6_77_98 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_77_77 :  std_logic_vector(2 downto 0);
signal heap_bh6_w30_19 :  std_logic;
signal heap_bh6_w31_18 :  std_logic;
signal heap_bh6_w32_17 :  std_logic;
signal CompressorIn_bh6_78_99 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_78_78 :  std_logic_vector(2 downto 0);
signal heap_bh6_w31_19 :  std_logic;
signal heap_bh6_w32_18 :  std_logic;
signal heap_bh6_w33_14 :  std_logic;
signal CompressorIn_bh6_79_100 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_79_79 :  std_logic_vector(2 downto 0);
signal heap_bh6_w32_19 :  std_logic;
signal heap_bh6_w33_15 :  std_logic;
signal heap_bh6_w34_14 :  std_logic;
signal CompressorIn_bh6_80_101 :  std_logic_vector(5 downto 0);
signal CompressorOut_bh6_80_80 :  std_logic_vector(2 downto 0);
signal heap_bh6_w33_16 :  std_logic;
signal heap_bh6_w34_15 :  std_logic;
signal heap_bh6_w35_13 :  std_logic;
signal CompressorIn_bh6_81_102 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_81_103 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_81_81 :  std_logic_vector(2 downto 0);
signal heap_bh6_w10_10, heap_bh6_w10_10_d1 :  std_logic;
signal heap_bh6_w11_10, heap_bh6_w11_10_d1 :  std_logic;
signal heap_bh6_w12_13 :  std_logic;
signal CompressorIn_bh6_82_104 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_82_105 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_82_82 :  std_logic_vector(2 downto 0);
signal heap_bh6_w12_14 :  std_logic;
signal heap_bh6_w13_13 :  std_logic;
signal heap_bh6_w14_14 :  std_logic;
signal CompressorIn_bh6_83_106 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_83_107 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_83_83 :  std_logic_vector(2 downto 0);
signal heap_bh6_w13_14 :  std_logic;
signal heap_bh6_w14_15 :  std_logic;
signal heap_bh6_w15_16, heap_bh6_w15_16_d1 :  std_logic;
signal CompressorIn_bh6_84_108 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_84_109 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_84_84 :  std_logic_vector(2 downto 0);
signal heap_bh6_w14_16 :  std_logic;
signal heap_bh6_w15_17 :  std_logic;
signal heap_bh6_w16_18 :  std_logic;
signal CompressorIn_bh6_85_110 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_85_111 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_85_85 :  std_logic_vector(2 downto 0);
signal heap_bh6_w34_16 :  std_logic;
signal heap_bh6_w35_14 :  std_logic;
signal heap_bh6_w36_11 :  std_logic;
signal CompressorIn_bh6_86_112 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_86_113 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_86_86 :  std_logic_vector(2 downto 0);
signal heap_bh6_w35_15 :  std_logic;
signal heap_bh6_w36_12 :  std_logic;
signal heap_bh6_w37_10, heap_bh6_w37_10_d1 :  std_logic;
signal CompressorIn_bh6_87_114 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_87_115 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_87_87 :  std_logic_vector(2 downto 0);
signal heap_bh6_w36_13 :  std_logic;
signal heap_bh6_w37_11 :  std_logic;
signal heap_bh6_w38_10 :  std_logic;
signal CompressorIn_bh6_88_116 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_88_117 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_88_88 :  std_logic_vector(2 downto 0);
signal heap_bh6_w38_11 :  std_logic;
signal heap_bh6_w39_8 :  std_logic;
signal heap_bh6_w40_8 :  std_logic;
signal CompressorIn_bh6_89_118 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_89_119 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_89_89 :  std_logic_vector(2 downto 0);
signal heap_bh6_w42_5 :  std_logic;
signal heap_bh6_w43_5 :  std_logic;
signal heap_bh6_w44_4 :  std_logic;
signal CompressorIn_bh6_90_120 :  std_logic_vector(3 downto 0);
signal CompressorOut_bh6_90_90 :  std_logic_vector(2 downto 0);
signal heap_bh6_w15_18 :  std_logic;
signal heap_bh6_w16_19 :  std_logic;
signal heap_bh6_w17_19 :  std_logic;
signal CompressorIn_bh6_91_121 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_91_122 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_91_91 :  std_logic_vector(2 downto 0);
signal heap_bh6_w7_8, heap_bh6_w7_8_d1 :  std_logic;
signal heap_bh6_w8_8, heap_bh6_w8_8_d1 :  std_logic;
signal heap_bh6_w9_10, heap_bh6_w9_10_d1 :  std_logic;
signal CompressorIn_bh6_92_123 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_92_124 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_92_92 :  std_logic_vector(2 downto 0);
signal heap_bh6_w39_9 :  std_logic;
signal heap_bh6_w40_9 :  std_logic;
signal heap_bh6_w41_8 :  std_logic;
signal CompressorIn_bh6_93_125 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_93_93 :  std_logic_vector(1 downto 0);
signal heap_bh6_w9_11, heap_bh6_w9_11_d1 :  std_logic;
signal heap_bh6_w10_11, heap_bh6_w10_11_d1 :  std_logic;
signal CompressorIn_bh6_94_126 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_94_94 :  std_logic_vector(1 downto 0);
signal heap_bh6_w11_11, heap_bh6_w11_11_d1 :  std_logic;
signal heap_bh6_w12_15 :  std_logic;
signal CompressorIn_bh6_95_127 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_95_95 :  std_logic_vector(1 downto 0);
signal heap_bh6_w37_12 :  std_logic;
signal heap_bh6_w38_12 :  std_logic;
signal CompressorIn_bh6_96_128 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_96_96 :  std_logic_vector(1 downto 0);
signal heap_bh6_w41_9 :  std_logic;
signal heap_bh6_w42_6 :  std_logic;
signal CompressorIn_bh6_97_129 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_97_130 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_97_97 :  std_logic_vector(2 downto 0);
signal heap_bh6_w19_22, heap_bh6_w19_22_d1 :  std_logic;
signal heap_bh6_w20_22, heap_bh6_w20_22_d1 :  std_logic;
signal heap_bh6_w21_25 :  std_logic;
signal CompressorIn_bh6_98_131 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_98_132 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_98_98 :  std_logic_vector(2 downto 0);
signal heap_bh6_w21_26 :  std_logic;
signal heap_bh6_w22_25 :  std_logic;
signal heap_bh6_w23_26 :  std_logic;
signal CompressorIn_bh6_99_133 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_99_134 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_99_99 :  std_logic_vector(2 downto 0);
signal heap_bh6_w22_26 :  std_logic;
signal heap_bh6_w23_27 :  std_logic;
signal heap_bh6_w24_25, heap_bh6_w24_25_d1 :  std_logic;
signal CompressorIn_bh6_100_135 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_100_136 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_100_100 :  std_logic_vector(2 downto 0);
signal heap_bh6_w23_28 :  std_logic;
signal heap_bh6_w24_26 :  std_logic;
signal heap_bh6_w25_26 :  std_logic;
signal CompressorIn_bh6_101_137 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_101_138 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_101_101 :  std_logic_vector(2 downto 0);
signal heap_bh6_w24_27 :  std_logic;
signal heap_bh6_w25_27 :  std_logic;
signal heap_bh6_w26_25, heap_bh6_w26_25_d1 :  std_logic;
signal CompressorIn_bh6_102_139 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_102_140 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_102_102 :  std_logic_vector(2 downto 0);
signal heap_bh6_w25_28 :  std_logic;
signal heap_bh6_w26_26 :  std_logic;
signal heap_bh6_w27_23 :  std_logic;
signal CompressorIn_bh6_103_141 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_103_142 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_103_103 :  std_logic_vector(2 downto 0);
signal heap_bh6_w26_27 :  std_logic;
signal heap_bh6_w27_24 :  std_logic;
signal heap_bh6_w28_22, heap_bh6_w28_22_d1 :  std_logic;
signal CompressorIn_bh6_104_143 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_104_144 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_104_104 :  std_logic_vector(2 downto 0);
signal heap_bh6_w27_25 :  std_logic;
signal heap_bh6_w28_23 :  std_logic;
signal heap_bh6_w29_22 :  std_logic;
signal CompressorIn_bh6_105_145 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_105_146 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_105_105 :  std_logic_vector(2 downto 0);
signal heap_bh6_w29_23 :  std_logic;
signal heap_bh6_w30_20 :  std_logic;
signal heap_bh6_w31_20 :  std_logic;
signal CompressorIn_bh6_106_147 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_106_148 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_106_106 :  std_logic_vector(2 downto 0);
signal heap_bh6_w33_17, heap_bh6_w33_17_d1 :  std_logic;
signal heap_bh6_w34_17, heap_bh6_w34_17_d1 :  std_logic;
signal heap_bh6_w35_16 :  std_logic;
signal CompressorIn_bh6_107_149 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_107_150 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_107_107 :  std_logic_vector(2 downto 0);
signal heap_bh6_w12_16, heap_bh6_w12_16_d1 :  std_logic;
signal heap_bh6_w13_15, heap_bh6_w13_15_d1 :  std_logic;
signal heap_bh6_w14_17, heap_bh6_w14_17_d1 :  std_logic;
signal CompressorIn_bh6_108_151 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_108_152 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_108_108 :  std_logic_vector(2 downto 0);
signal heap_bh6_w14_18, heap_bh6_w14_18_d1 :  std_logic;
signal heap_bh6_w15_19, heap_bh6_w15_19_d1 :  std_logic;
signal heap_bh6_w16_20, heap_bh6_w16_20_d1 :  std_logic;
signal CompressorIn_bh6_109_153 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_109_154 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_109_109 :  std_logic_vector(2 downto 0);
signal heap_bh6_w16_21, heap_bh6_w16_21_d1 :  std_logic;
signal heap_bh6_w17_20, heap_bh6_w17_20_d1 :  std_logic;
signal heap_bh6_w18_22, heap_bh6_w18_22_d1 :  std_logic;
signal CompressorIn_bh6_110_155 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_110_156 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_110_110 :  std_logic_vector(2 downto 0);
signal heap_bh6_w30_21 :  std_logic;
signal heap_bh6_w31_21 :  std_logic;
signal heap_bh6_w32_20 :  std_logic;
signal CompressorIn_bh6_111_157 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_111_158 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_111_111 :  std_logic_vector(2 downto 0);
signal heap_bh6_w34_18, heap_bh6_w34_18_d1 :  std_logic;
signal heap_bh6_w35_17 :  std_logic;
signal heap_bh6_w36_14 :  std_logic;
signal CompressorIn_bh6_112_159 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_112_160 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_112_112 :  std_logic_vector(2 downto 0);
signal heap_bh6_w36_15 :  std_logic;
signal heap_bh6_w37_13, heap_bh6_w37_13_d1 :  std_logic;
signal heap_bh6_w38_13, heap_bh6_w38_13_d1 :  std_logic;
signal CompressorIn_bh6_113_161 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_113_162 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_113_113 :  std_logic_vector(2 downto 0);
signal heap_bh6_w38_14, heap_bh6_w38_14_d1 :  std_logic;
signal heap_bh6_w39_10, heap_bh6_w39_10_d1 :  std_logic;
signal heap_bh6_w40_10, heap_bh6_w40_10_d1 :  std_logic;
signal CompressorIn_bh6_114_163 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_114_164 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_114_114 :  std_logic_vector(2 downto 0);
signal heap_bh6_w40_11, heap_bh6_w40_11_d1 :  std_logic;
signal heap_bh6_w41_10, heap_bh6_w41_10_d1 :  std_logic;
signal heap_bh6_w42_7 :  std_logic;
signal CompressorIn_bh6_115_165 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_115_166 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_115_115 :  std_logic_vector(2 downto 0);
signal heap_bh6_w44_5, heap_bh6_w44_5_d1 :  std_logic;
signal heap_bh6_w45_2, heap_bh6_w45_2_d1 :  std_logic;
signal heap_bh6_w46_1, heap_bh6_w46_1_d1 :  std_logic;
signal CompressorIn_bh6_116_167 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_116_116 :  std_logic_vector(1 downto 0);
signal heap_bh6_w18_23, heap_bh6_w18_23_d1 :  std_logic;
signal heap_bh6_w19_23, heap_bh6_w19_23_d1 :  std_logic;
signal CompressorIn_bh6_117_168 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_117_117 :  std_logic_vector(1 downto 0);
signal heap_bh6_w20_23, heap_bh6_w20_23_d1 :  std_logic;
signal heap_bh6_w21_27 :  std_logic;
signal CompressorIn_bh6_118_169 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_118_118 :  std_logic_vector(1 downto 0);
signal heap_bh6_w28_24 :  std_logic;
signal heap_bh6_w29_24 :  std_logic;
signal CompressorIn_bh6_119_170 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_119_119 :  std_logic_vector(1 downto 0);
signal heap_bh6_w32_21 :  std_logic;
signal heap_bh6_w33_18, heap_bh6_w33_18_d1 :  std_logic;
signal CompressorIn_bh6_120_171 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_120_172 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_120_120 :  std_logic_vector(2 downto 0);
signal heap_bh6_w21_28, heap_bh6_w21_28_d1 :  std_logic;
signal heap_bh6_w22_27, heap_bh6_w22_27_d1 :  std_logic;
signal heap_bh6_w23_29, heap_bh6_w23_29_d1 :  std_logic;
signal CompressorIn_bh6_121_173 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_121_174 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_121_121 :  std_logic_vector(2 downto 0);
signal heap_bh6_w23_30, heap_bh6_w23_30_d1 :  std_logic;
signal heap_bh6_w24_28, heap_bh6_w24_28_d1 :  std_logic;
signal heap_bh6_w25_29, heap_bh6_w25_29_d1 :  std_logic;
signal CompressorIn_bh6_122_175 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_122_176 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_122_122 :  std_logic_vector(2 downto 0);
signal heap_bh6_w25_30, heap_bh6_w25_30_d1 :  std_logic;
signal heap_bh6_w26_28, heap_bh6_w26_28_d1 :  std_logic;
signal heap_bh6_w27_26, heap_bh6_w27_26_d1 :  std_logic;
signal CompressorIn_bh6_123_177 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_123_178 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_123_123 :  std_logic_vector(2 downto 0);
signal heap_bh6_w27_27, heap_bh6_w27_27_d1 :  std_logic;
signal heap_bh6_w28_25, heap_bh6_w28_25_d1 :  std_logic;
signal heap_bh6_w29_25, heap_bh6_w29_25_d1 :  std_logic;
signal CompressorIn_bh6_124_179 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_124_180 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_124_124 :  std_logic_vector(2 downto 0);
signal heap_bh6_w29_26, heap_bh6_w29_26_d1 :  std_logic;
signal heap_bh6_w30_22, heap_bh6_w30_22_d1 :  std_logic;
signal heap_bh6_w31_22, heap_bh6_w31_22_d1 :  std_logic;
signal CompressorIn_bh6_125_181 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_125_182 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_125_125 :  std_logic_vector(2 downto 0);
signal heap_bh6_w31_23, heap_bh6_w31_23_d1 :  std_logic;
signal heap_bh6_w32_22, heap_bh6_w32_22_d1 :  std_logic;
signal heap_bh6_w33_19, heap_bh6_w33_19_d1 :  std_logic;
signal CompressorIn_bh6_126_183 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_126_184 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_126_126 :  std_logic_vector(2 downto 0);
signal heap_bh6_w35_18, heap_bh6_w35_18_d1 :  std_logic;
signal heap_bh6_w36_16, heap_bh6_w36_16_d1 :  std_logic;
signal heap_bh6_w37_14, heap_bh6_w37_14_d1 :  std_logic;
signal CompressorIn_bh6_127_185 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_127_186 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_127_127 :  std_logic_vector(2 downto 0);
signal heap_bh6_w42_8, heap_bh6_w42_8_d1 :  std_logic;
signal heap_bh6_w43_6, heap_bh6_w43_6_d1 :  std_logic;
signal heap_bh6_w44_6, heap_bh6_w44_6_d1 :  std_logic;
signal CompressorIn_bh6_128_187 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_128_188 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_128_128 :  std_logic_vector(2 downto 0);
signal heap_bh6_w33_20 :  std_logic;
signal heap_bh6_w34_19 :  std_logic;
signal heap_bh6_w35_19 :  std_logic;
signal CompressorIn_bh6_129_189 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_129_190 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_129_129 :  std_logic_vector(2 downto 0);
signal heap_bh6_w37_15 :  std_logic;
signal heap_bh6_w38_15 :  std_logic;
signal heap_bh6_w39_11 :  std_logic;
signal finalAdderIn0_bh6 :  std_logic_vector(44 downto 0);
signal finalAdderIn1_bh6 :  std_logic_vector(44 downto 0);
signal finalAdderCin_bh6 :  std_logic;
signal finalAdderOut_bh6 :  std_logic_vector(44 downto 0);
signal CompressionResult6 :  std_logic_vector(48 downto 0);
attribute rom_extract: string;
attribute rom_style: string;
attribute rom_extract of SmallMultTableP3x3r6XuYu_F300_uid8: component is "yes";
attribute rom_style of SmallMultTableP3x3r6XuYu_F300_uid8: component is "distributed";
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            heap_bh6_w4_0_d1 <=  heap_bh6_w4_0;
            heap_bh6_w46_0_d1 <=  heap_bh6_w46_0;
            heap_bh6_w47_0_d1 <=  heap_bh6_w47_0;
            tempR_bh6_0_d1 <=  tempR_bh6_0;
            heap_bh6_w6_5_d1 <=  heap_bh6_w6_5;
            heap_bh6_w8_5_d1 <=  heap_bh6_w8_5;
            heap_bh6_w4_3_d1 <=  heap_bh6_w4_3;
            heap_bh6_w5_3_d1 <=  heap_bh6_w5_3;
            heap_bh6_w5_4_d1 <=  heap_bh6_w5_4;
            heap_bh6_w6_6_d1 <=  heap_bh6_w6_6;
            tempR_bh6_1_d1 <=  tempR_bh6_1;
            heap_bh6_w17_17_d1 <=  heap_bh6_w17_17;
            heap_bh6_w10_10_d1 <=  heap_bh6_w10_10;
            heap_bh6_w11_10_d1 <=  heap_bh6_w11_10;
            heap_bh6_w15_16_d1 <=  heap_bh6_w15_16;
            heap_bh6_w37_10_d1 <=  heap_bh6_w37_10;
            heap_bh6_w7_8_d1 <=  heap_bh6_w7_8;
            heap_bh6_w8_8_d1 <=  heap_bh6_w8_8;
            heap_bh6_w9_10_d1 <=  heap_bh6_w9_10;
            heap_bh6_w9_11_d1 <=  heap_bh6_w9_11;
            heap_bh6_w10_11_d1 <=  heap_bh6_w10_11;
            heap_bh6_w11_11_d1 <=  heap_bh6_w11_11;
            heap_bh6_w19_22_d1 <=  heap_bh6_w19_22;
            heap_bh6_w20_22_d1 <=  heap_bh6_w20_22;
            heap_bh6_w24_25_d1 <=  heap_bh6_w24_25;
            heap_bh6_w26_25_d1 <=  heap_bh6_w26_25;
            heap_bh6_w28_22_d1 <=  heap_bh6_w28_22;
            heap_bh6_w33_17_d1 <=  heap_bh6_w33_17;
            heap_bh6_w34_17_d1 <=  heap_bh6_w34_17;
            heap_bh6_w12_16_d1 <=  heap_bh6_w12_16;
            heap_bh6_w13_15_d1 <=  heap_bh6_w13_15;
            heap_bh6_w14_17_d1 <=  heap_bh6_w14_17;
            heap_bh6_w14_18_d1 <=  heap_bh6_w14_18;
            heap_bh6_w15_19_d1 <=  heap_bh6_w15_19;
            heap_bh6_w16_20_d1 <=  heap_bh6_w16_20;
            heap_bh6_w16_21_d1 <=  heap_bh6_w16_21;
            heap_bh6_w17_20_d1 <=  heap_bh6_w17_20;
            heap_bh6_w18_22_d1 <=  heap_bh6_w18_22;
            heap_bh6_w34_18_d1 <=  heap_bh6_w34_18;
            heap_bh6_w37_13_d1 <=  heap_bh6_w37_13;
            heap_bh6_w38_13_d1 <=  heap_bh6_w38_13;
            heap_bh6_w38_14_d1 <=  heap_bh6_w38_14;
            heap_bh6_w39_10_d1 <=  heap_bh6_w39_10;
            heap_bh6_w40_10_d1 <=  heap_bh6_w40_10;
            heap_bh6_w40_11_d1 <=  heap_bh6_w40_11;
            heap_bh6_w41_10_d1 <=  heap_bh6_w41_10;
            heap_bh6_w44_5_d1 <=  heap_bh6_w44_5;
            heap_bh6_w45_2_d1 <=  heap_bh6_w45_2;
            heap_bh6_w46_1_d1 <=  heap_bh6_w46_1;
            heap_bh6_w18_23_d1 <=  heap_bh6_w18_23;
            heap_bh6_w19_23_d1 <=  heap_bh6_w19_23;
            heap_bh6_w20_23_d1 <=  heap_bh6_w20_23;
            heap_bh6_w33_18_d1 <=  heap_bh6_w33_18;
            heap_bh6_w21_28_d1 <=  heap_bh6_w21_28;
            heap_bh6_w22_27_d1 <=  heap_bh6_w22_27;
            heap_bh6_w23_29_d1 <=  heap_bh6_w23_29;
            heap_bh6_w23_30_d1 <=  heap_bh6_w23_30;
            heap_bh6_w24_28_d1 <=  heap_bh6_w24_28;
            heap_bh6_w25_29_d1 <=  heap_bh6_w25_29;
            heap_bh6_w25_30_d1 <=  heap_bh6_w25_30;
            heap_bh6_w26_28_d1 <=  heap_bh6_w26_28;
            heap_bh6_w27_26_d1 <=  heap_bh6_w27_26;
            heap_bh6_w27_27_d1 <=  heap_bh6_w27_27;
            heap_bh6_w28_25_d1 <=  heap_bh6_w28_25;
            heap_bh6_w29_25_d1 <=  heap_bh6_w29_25;
            heap_bh6_w29_26_d1 <=  heap_bh6_w29_26;
            heap_bh6_w30_22_d1 <=  heap_bh6_w30_22;
            heap_bh6_w31_22_d1 <=  heap_bh6_w31_22;
            heap_bh6_w31_23_d1 <=  heap_bh6_w31_23;
            heap_bh6_w32_22_d1 <=  heap_bh6_w32_22;
            heap_bh6_w33_19_d1 <=  heap_bh6_w33_19;
            heap_bh6_w35_18_d1 <=  heap_bh6_w35_18;
            heap_bh6_w36_16_d1 <=  heap_bh6_w36_16;
            heap_bh6_w37_14_d1 <=  heap_bh6_w37_14;
            heap_bh6_w42_8_d1 <=  heap_bh6_w42_8;
            heap_bh6_w43_6_d1 <=  heap_bh6_w43_6;
            heap_bh6_w44_6_d1 <=  heap_bh6_w44_6;
         end if;
      end process;
   XX_m5 <= X ;
   YY_m5 <= Y ;
   -- code generated by IntMultiplier::buildHeapLogicOnly()
   -- buildheaplogiconly called for lsbX=0 lsbY=0 msbX=24 msbY=24
   Xp_m5b0 <= XX_m5(23 downto 0) & "";
   Yp_m5b0 <= YY_m5(23 downto 0) & "";
   x_m5b0_0 <= Xp_m5b0(2 downto 0);
   x_m5b0_1 <= Xp_m5b0(5 downto 3);
   x_m5b0_2 <= Xp_m5b0(8 downto 6);
   x_m5b0_3 <= Xp_m5b0(11 downto 9);
   x_m5b0_4 <= Xp_m5b0(14 downto 12);
   x_m5b0_5 <= Xp_m5b0(17 downto 15);
   x_m5b0_6 <= Xp_m5b0(20 downto 18);
   x_m5b0_7 <= Xp_m5b0(23 downto 21);
   y_m5b0_0 <= Yp_m5b0(2 downto 0);
   y_m5b0_1 <= Yp_m5b0(5 downto 3);
   y_m5b0_2 <= Yp_m5b0(8 downto 6);
   y_m5b0_3 <= Yp_m5b0(11 downto 9);
   y_m5b0_4 <= Yp_m5b0(14 downto 12);
   y_m5b0_5 <= Yp_m5b0(17 downto 15);
   y_m5b0_6 <= Yp_m5b0(20 downto 18);
   y_m5b0_7 <= Yp_m5b0(23 downto 21);
   ----------------Synchro barrier, entering cycle 0----------------
   -- Partial product row number 0
   Y0X0_0_m5 <= y_m5b0_0 & x_m5b0_0;
   PP_m5_0X0Y0_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X0_0_m5,
                 Y => PP0X0Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w0_0 <= PP0X0Y0_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w1_0 <= PP0X0Y0_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w2_0 <= PP0X0Y0_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w3_0 <= PP0X0Y0_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w4_0 <= PP0X0Y0_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w5_0 <= PP0X0Y0_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y0X1_0_m5 <= y_m5b0_0 & x_m5b0_1;
   PP_m5_0X1Y0_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X1_0_m5,
                 Y => PP0X1Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w3_1 <= PP0X1Y0_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w4_1 <= PP0X1Y0_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w5_1 <= PP0X1Y0_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w6_0 <= PP0X1Y0_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w7_0 <= PP0X1Y0_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w8_0 <= PP0X1Y0_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y0X2_0_m5 <= y_m5b0_0 & x_m5b0_2;
   PP_m5_0X2Y0_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X2_0_m5,
                 Y => PP0X2Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w6_1 <= PP0X2Y0_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w7_1 <= PP0X2Y0_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w8_1 <= PP0X2Y0_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w9_0 <= PP0X2Y0_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w10_0 <= PP0X2Y0_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w11_0 <= PP0X2Y0_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y0X3_0_m5 <= y_m5b0_0 & x_m5b0_3;
   PP_m5_0X3Y0_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X3_0_m5,
                 Y => PP0X3Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w9_1 <= PP0X3Y0_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w10_1 <= PP0X3Y0_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w11_1 <= PP0X3Y0_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w12_0 <= PP0X3Y0_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w13_0 <= PP0X3Y0_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w14_0 <= PP0X3Y0_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y0X4_0_m5 <= y_m5b0_0 & x_m5b0_4;
   PP_m5_0X4Y0_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X4_0_m5,
                 Y => PP0X4Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w12_1 <= PP0X4Y0_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w13_1 <= PP0X4Y0_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w14_1 <= PP0X4Y0_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w15_0 <= PP0X4Y0_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w16_0 <= PP0X4Y0_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w17_0 <= PP0X4Y0_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y0X5_0_m5 <= y_m5b0_0 & x_m5b0_5;
   PP_m5_0X5Y0_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X5_0_m5,
                 Y => PP0X5Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w15_1 <= PP0X5Y0_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w16_1 <= PP0X5Y0_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w17_1 <= PP0X5Y0_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w18_0 <= PP0X5Y0_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w19_0 <= PP0X5Y0_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w20_0 <= PP0X5Y0_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y0X6_0_m5 <= y_m5b0_0 & x_m5b0_6;
   PP_m5_0X6Y0_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X6_0_m5,
                 Y => PP0X6Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w18_1 <= PP0X6Y0_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w19_1 <= PP0X6Y0_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w20_1 <= PP0X6Y0_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w21_0 <= PP0X6Y0_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w22_0 <= PP0X6Y0_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w23_0 <= PP0X6Y0_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y0X7_0_m5 <= y_m5b0_0 & x_m5b0_7;
   PP_m5_0X7Y0_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X7_0_m5,
                 Y => PP0X7Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w21_1 <= PP0X7Y0_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w22_1 <= PP0X7Y0_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w23_1 <= PP0X7Y0_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w24_0 <= PP0X7Y0_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w25_0 <= PP0X7Y0_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w26_0 <= PP0X7Y0_m5(5); -- cycle= 0 cp= 5.9176e-10

   -- Partial product row number 1
   Y1X0_0_m5 <= y_m5b0_1 & x_m5b0_0;
   PP_m5_0X0Y1_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X0_0_m5,
                 Y => PP0X0Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w3_2 <= PP0X0Y1_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w4_2 <= PP0X0Y1_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w5_2 <= PP0X0Y1_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w6_2 <= PP0X0Y1_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w7_2 <= PP0X0Y1_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w8_2 <= PP0X0Y1_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y1X1_0_m5 <= y_m5b0_1 & x_m5b0_1;
   PP_m5_0X1Y1_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X1_0_m5,
                 Y => PP0X1Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w6_3 <= PP0X1Y1_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w7_3 <= PP0X1Y1_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w8_3 <= PP0X1Y1_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w9_2 <= PP0X1Y1_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w10_2 <= PP0X1Y1_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w11_2 <= PP0X1Y1_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y1X2_0_m5 <= y_m5b0_1 & x_m5b0_2;
   PP_m5_0X2Y1_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X2_0_m5,
                 Y => PP0X2Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w9_3 <= PP0X2Y1_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w10_3 <= PP0X2Y1_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w11_3 <= PP0X2Y1_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w12_2 <= PP0X2Y1_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w13_2 <= PP0X2Y1_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w14_2 <= PP0X2Y1_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y1X3_0_m5 <= y_m5b0_1 & x_m5b0_3;
   PP_m5_0X3Y1_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X3_0_m5,
                 Y => PP0X3Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w12_3 <= PP0X3Y1_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w13_3 <= PP0X3Y1_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w14_3 <= PP0X3Y1_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w15_2 <= PP0X3Y1_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w16_2 <= PP0X3Y1_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w17_2 <= PP0X3Y1_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y1X4_0_m5 <= y_m5b0_1 & x_m5b0_4;
   PP_m5_0X4Y1_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X4_0_m5,
                 Y => PP0X4Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w15_3 <= PP0X4Y1_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w16_3 <= PP0X4Y1_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w17_3 <= PP0X4Y1_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w18_2 <= PP0X4Y1_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w19_2 <= PP0X4Y1_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w20_2 <= PP0X4Y1_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y1X5_0_m5 <= y_m5b0_1 & x_m5b0_5;
   PP_m5_0X5Y1_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X5_0_m5,
                 Y => PP0X5Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w18_3 <= PP0X5Y1_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w19_3 <= PP0X5Y1_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w20_3 <= PP0X5Y1_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w21_2 <= PP0X5Y1_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w22_2 <= PP0X5Y1_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w23_2 <= PP0X5Y1_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y1X6_0_m5 <= y_m5b0_1 & x_m5b0_6;
   PP_m5_0X6Y1_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X6_0_m5,
                 Y => PP0X6Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w21_3 <= PP0X6Y1_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w22_3 <= PP0X6Y1_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w23_3 <= PP0X6Y1_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w24_1 <= PP0X6Y1_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w25_1 <= PP0X6Y1_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w26_1 <= PP0X6Y1_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y1X7_0_m5 <= y_m5b0_1 & x_m5b0_7;
   PP_m5_0X7Y1_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X7_0_m5,
                 Y => PP0X7Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w24_2 <= PP0X7Y1_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w25_2 <= PP0X7Y1_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w26_2 <= PP0X7Y1_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w27_0 <= PP0X7Y1_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w28_0 <= PP0X7Y1_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w29_0 <= PP0X7Y1_m5(5); -- cycle= 0 cp= 5.9176e-10

   -- Partial product row number 2
   Y2X0_0_m5 <= y_m5b0_2 & x_m5b0_0;
   PP_m5_0X0Y2_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y2X0_0_m5,
                 Y => PP0X0Y2_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w6_4 <= PP0X0Y2_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w7_4 <= PP0X0Y2_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w8_4 <= PP0X0Y2_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w9_4 <= PP0X0Y2_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w10_4 <= PP0X0Y2_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w11_4 <= PP0X0Y2_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y2X1_0_m5 <= y_m5b0_2 & x_m5b0_1;
   PP_m5_0X1Y2_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y2X1_0_m5,
                 Y => PP0X1Y2_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w9_5 <= PP0X1Y2_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w10_5 <= PP0X1Y2_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w11_5 <= PP0X1Y2_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w12_4 <= PP0X1Y2_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w13_4 <= PP0X1Y2_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w14_4 <= PP0X1Y2_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y2X2_0_m5 <= y_m5b0_2 & x_m5b0_2;
   PP_m5_0X2Y2_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y2X2_0_m5,
                 Y => PP0X2Y2_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w12_5 <= PP0X2Y2_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w13_5 <= PP0X2Y2_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w14_5 <= PP0X2Y2_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w15_4 <= PP0X2Y2_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w16_4 <= PP0X2Y2_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w17_4 <= PP0X2Y2_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y2X3_0_m5 <= y_m5b0_2 & x_m5b0_3;
   PP_m5_0X3Y2_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y2X3_0_m5,
                 Y => PP0X3Y2_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w15_5 <= PP0X3Y2_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w16_5 <= PP0X3Y2_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w17_5 <= PP0X3Y2_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w18_4 <= PP0X3Y2_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w19_4 <= PP0X3Y2_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w20_4 <= PP0X3Y2_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y2X4_0_m5 <= y_m5b0_2 & x_m5b0_4;
   PP_m5_0X4Y2_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y2X4_0_m5,
                 Y => PP0X4Y2_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w18_5 <= PP0X4Y2_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w19_5 <= PP0X4Y2_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w20_5 <= PP0X4Y2_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w21_4 <= PP0X4Y2_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w22_4 <= PP0X4Y2_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w23_4 <= PP0X4Y2_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y2X5_0_m5 <= y_m5b0_2 & x_m5b0_5;
   PP_m5_0X5Y2_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y2X5_0_m5,
                 Y => PP0X5Y2_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w21_5 <= PP0X5Y2_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w22_5 <= PP0X5Y2_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w23_5 <= PP0X5Y2_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w24_3 <= PP0X5Y2_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w25_3 <= PP0X5Y2_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w26_3 <= PP0X5Y2_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y2X6_0_m5 <= y_m5b0_2 & x_m5b0_6;
   PP_m5_0X6Y2_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y2X6_0_m5,
                 Y => PP0X6Y2_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w24_4 <= PP0X6Y2_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w25_4 <= PP0X6Y2_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w26_4 <= PP0X6Y2_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w27_1 <= PP0X6Y2_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w28_1 <= PP0X6Y2_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w29_1 <= PP0X6Y2_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y2X7_0_m5 <= y_m5b0_2 & x_m5b0_7;
   PP_m5_0X7Y2_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y2X7_0_m5,
                 Y => PP0X7Y2_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w27_2 <= PP0X7Y2_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w28_2 <= PP0X7Y2_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w29_2 <= PP0X7Y2_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w30_0 <= PP0X7Y2_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w31_0 <= PP0X7Y2_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w32_0 <= PP0X7Y2_m5(5); -- cycle= 0 cp= 5.9176e-10

   -- Partial product row number 3
   Y3X0_0_m5 <= y_m5b0_3 & x_m5b0_0;
   PP_m5_0X0Y3_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y3X0_0_m5,
                 Y => PP0X0Y3_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w9_6 <= PP0X0Y3_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w10_6 <= PP0X0Y3_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w11_6 <= PP0X0Y3_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w12_6 <= PP0X0Y3_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w13_6 <= PP0X0Y3_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w14_6 <= PP0X0Y3_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y3X1_0_m5 <= y_m5b0_3 & x_m5b0_1;
   PP_m5_0X1Y3_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y3X1_0_m5,
                 Y => PP0X1Y3_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w12_7 <= PP0X1Y3_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w13_7 <= PP0X1Y3_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w14_7 <= PP0X1Y3_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w15_6 <= PP0X1Y3_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w16_6 <= PP0X1Y3_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w17_6 <= PP0X1Y3_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y3X2_0_m5 <= y_m5b0_3 & x_m5b0_2;
   PP_m5_0X2Y3_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y3X2_0_m5,
                 Y => PP0X2Y3_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w15_7 <= PP0X2Y3_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w16_7 <= PP0X2Y3_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w17_7 <= PP0X2Y3_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w18_6 <= PP0X2Y3_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w19_6 <= PP0X2Y3_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w20_6 <= PP0X2Y3_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y3X3_0_m5 <= y_m5b0_3 & x_m5b0_3;
   PP_m5_0X3Y3_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y3X3_0_m5,
                 Y => PP0X3Y3_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w18_7 <= PP0X3Y3_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w19_7 <= PP0X3Y3_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w20_7 <= PP0X3Y3_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w21_6 <= PP0X3Y3_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w22_6 <= PP0X3Y3_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w23_6 <= PP0X3Y3_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y3X4_0_m5 <= y_m5b0_3 & x_m5b0_4;
   PP_m5_0X4Y3_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y3X4_0_m5,
                 Y => PP0X4Y3_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w21_7 <= PP0X4Y3_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w22_7 <= PP0X4Y3_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w23_7 <= PP0X4Y3_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w24_5 <= PP0X4Y3_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w25_5 <= PP0X4Y3_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w26_5 <= PP0X4Y3_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y3X5_0_m5 <= y_m5b0_3 & x_m5b0_5;
   PP_m5_0X5Y3_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y3X5_0_m5,
                 Y => PP0X5Y3_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w24_6 <= PP0X5Y3_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w25_6 <= PP0X5Y3_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w26_6 <= PP0X5Y3_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w27_3 <= PP0X5Y3_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w28_3 <= PP0X5Y3_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w29_3 <= PP0X5Y3_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y3X6_0_m5 <= y_m5b0_3 & x_m5b0_6;
   PP_m5_0X6Y3_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y3X6_0_m5,
                 Y => PP0X6Y3_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w27_4 <= PP0X6Y3_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w28_4 <= PP0X6Y3_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w29_4 <= PP0X6Y3_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w30_1 <= PP0X6Y3_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w31_1 <= PP0X6Y3_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w32_1 <= PP0X6Y3_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y3X7_0_m5 <= y_m5b0_3 & x_m5b0_7;
   PP_m5_0X7Y3_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y3X7_0_m5,
                 Y => PP0X7Y3_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w30_2 <= PP0X7Y3_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w31_2 <= PP0X7Y3_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w32_2 <= PP0X7Y3_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w33_0 <= PP0X7Y3_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w34_0 <= PP0X7Y3_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w35_0 <= PP0X7Y3_m5(5); -- cycle= 0 cp= 5.9176e-10

   -- Partial product row number 4
   Y4X0_0_m5 <= y_m5b0_4 & x_m5b0_0;
   PP_m5_0X0Y4_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y4X0_0_m5,
                 Y => PP0X0Y4_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w12_8 <= PP0X0Y4_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w13_8 <= PP0X0Y4_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w14_8 <= PP0X0Y4_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w15_8 <= PP0X0Y4_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w16_8 <= PP0X0Y4_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w17_8 <= PP0X0Y4_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y4X1_0_m5 <= y_m5b0_4 & x_m5b0_1;
   PP_m5_0X1Y4_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y4X1_0_m5,
                 Y => PP0X1Y4_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w15_9 <= PP0X1Y4_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w16_9 <= PP0X1Y4_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w17_9 <= PP0X1Y4_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w18_8 <= PP0X1Y4_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w19_8 <= PP0X1Y4_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w20_8 <= PP0X1Y4_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y4X2_0_m5 <= y_m5b0_4 & x_m5b0_2;
   PP_m5_0X2Y4_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y4X2_0_m5,
                 Y => PP0X2Y4_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w18_9 <= PP0X2Y4_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w19_9 <= PP0X2Y4_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w20_9 <= PP0X2Y4_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w21_8 <= PP0X2Y4_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w22_8 <= PP0X2Y4_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w23_8 <= PP0X2Y4_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y4X3_0_m5 <= y_m5b0_4 & x_m5b0_3;
   PP_m5_0X3Y4_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y4X3_0_m5,
                 Y => PP0X3Y4_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w21_9 <= PP0X3Y4_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w22_9 <= PP0X3Y4_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w23_9 <= PP0X3Y4_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w24_7 <= PP0X3Y4_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w25_7 <= PP0X3Y4_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w26_7 <= PP0X3Y4_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y4X4_0_m5 <= y_m5b0_4 & x_m5b0_4;
   PP_m5_0X4Y4_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y4X4_0_m5,
                 Y => PP0X4Y4_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w24_8 <= PP0X4Y4_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w25_8 <= PP0X4Y4_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w26_8 <= PP0X4Y4_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w27_5 <= PP0X4Y4_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w28_5 <= PP0X4Y4_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w29_5 <= PP0X4Y4_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y4X5_0_m5 <= y_m5b0_4 & x_m5b0_5;
   PP_m5_0X5Y4_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y4X5_0_m5,
                 Y => PP0X5Y4_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w27_6 <= PP0X5Y4_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w28_6 <= PP0X5Y4_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w29_6 <= PP0X5Y4_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w30_3 <= PP0X5Y4_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w31_3 <= PP0X5Y4_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w32_3 <= PP0X5Y4_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y4X6_0_m5 <= y_m5b0_4 & x_m5b0_6;
   PP_m5_0X6Y4_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y4X6_0_m5,
                 Y => PP0X6Y4_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w30_4 <= PP0X6Y4_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w31_4 <= PP0X6Y4_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w32_4 <= PP0X6Y4_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w33_1 <= PP0X6Y4_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w34_1 <= PP0X6Y4_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w35_1 <= PP0X6Y4_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y4X7_0_m5 <= y_m5b0_4 & x_m5b0_7;
   PP_m5_0X7Y4_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y4X7_0_m5,
                 Y => PP0X7Y4_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w33_2 <= PP0X7Y4_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w34_2 <= PP0X7Y4_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w35_2 <= PP0X7Y4_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w36_0 <= PP0X7Y4_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w37_0 <= PP0X7Y4_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w38_0 <= PP0X7Y4_m5(5); -- cycle= 0 cp= 5.9176e-10

   -- Partial product row number 5
   Y5X0_0_m5 <= y_m5b0_5 & x_m5b0_0;
   PP_m5_0X0Y5_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y5X0_0_m5,
                 Y => PP0X0Y5_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w15_10 <= PP0X0Y5_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w16_10 <= PP0X0Y5_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w17_10 <= PP0X0Y5_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w18_10 <= PP0X0Y5_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w19_10 <= PP0X0Y5_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w20_10 <= PP0X0Y5_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y5X1_0_m5 <= y_m5b0_5 & x_m5b0_1;
   PP_m5_0X1Y5_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y5X1_0_m5,
                 Y => PP0X1Y5_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w18_11 <= PP0X1Y5_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w19_11 <= PP0X1Y5_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w20_11 <= PP0X1Y5_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w21_10 <= PP0X1Y5_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w22_10 <= PP0X1Y5_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w23_10 <= PP0X1Y5_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y5X2_0_m5 <= y_m5b0_5 & x_m5b0_2;
   PP_m5_0X2Y5_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y5X2_0_m5,
                 Y => PP0X2Y5_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w21_11 <= PP0X2Y5_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w22_11 <= PP0X2Y5_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w23_11 <= PP0X2Y5_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w24_9 <= PP0X2Y5_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w25_9 <= PP0X2Y5_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w26_9 <= PP0X2Y5_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y5X3_0_m5 <= y_m5b0_5 & x_m5b0_3;
   PP_m5_0X3Y5_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y5X3_0_m5,
                 Y => PP0X3Y5_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w24_10 <= PP0X3Y5_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w25_10 <= PP0X3Y5_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w26_10 <= PP0X3Y5_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w27_7 <= PP0X3Y5_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w28_7 <= PP0X3Y5_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w29_7 <= PP0X3Y5_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y5X4_0_m5 <= y_m5b0_5 & x_m5b0_4;
   PP_m5_0X4Y5_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y5X4_0_m5,
                 Y => PP0X4Y5_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w27_8 <= PP0X4Y5_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w28_8 <= PP0X4Y5_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w29_8 <= PP0X4Y5_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w30_5 <= PP0X4Y5_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w31_5 <= PP0X4Y5_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w32_5 <= PP0X4Y5_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y5X5_0_m5 <= y_m5b0_5 & x_m5b0_5;
   PP_m5_0X5Y5_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y5X5_0_m5,
                 Y => PP0X5Y5_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w30_6 <= PP0X5Y5_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w31_6 <= PP0X5Y5_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w32_6 <= PP0X5Y5_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w33_3 <= PP0X5Y5_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w34_3 <= PP0X5Y5_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w35_3 <= PP0X5Y5_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y5X6_0_m5 <= y_m5b0_5 & x_m5b0_6;
   PP_m5_0X6Y5_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y5X6_0_m5,
                 Y => PP0X6Y5_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w33_4 <= PP0X6Y5_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w34_4 <= PP0X6Y5_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w35_4 <= PP0X6Y5_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w36_1 <= PP0X6Y5_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w37_1 <= PP0X6Y5_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w38_1 <= PP0X6Y5_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y5X7_0_m5 <= y_m5b0_5 & x_m5b0_7;
   PP_m5_0X7Y5_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y5X7_0_m5,
                 Y => PP0X7Y5_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w36_2 <= PP0X7Y5_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w37_2 <= PP0X7Y5_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w38_2 <= PP0X7Y5_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w39_0 <= PP0X7Y5_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w40_0 <= PP0X7Y5_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w41_0 <= PP0X7Y5_m5(5); -- cycle= 0 cp= 5.9176e-10

   -- Partial product row number 6
   Y6X0_0_m5 <= y_m5b0_6 & x_m5b0_0;
   PP_m5_0X0Y6_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y6X0_0_m5,
                 Y => PP0X0Y6_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w18_12 <= PP0X0Y6_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w19_12 <= PP0X0Y6_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w20_12 <= PP0X0Y6_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w21_12 <= PP0X0Y6_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w22_12 <= PP0X0Y6_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w23_12 <= PP0X0Y6_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y6X1_0_m5 <= y_m5b0_6 & x_m5b0_1;
   PP_m5_0X1Y6_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y6X1_0_m5,
                 Y => PP0X1Y6_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w21_13 <= PP0X1Y6_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w22_13 <= PP0X1Y6_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w23_13 <= PP0X1Y6_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w24_11 <= PP0X1Y6_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w25_11 <= PP0X1Y6_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w26_11 <= PP0X1Y6_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y6X2_0_m5 <= y_m5b0_6 & x_m5b0_2;
   PP_m5_0X2Y6_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y6X2_0_m5,
                 Y => PP0X2Y6_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w24_12 <= PP0X2Y6_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w25_12 <= PP0X2Y6_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w26_12 <= PP0X2Y6_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w27_9 <= PP0X2Y6_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w28_9 <= PP0X2Y6_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w29_9 <= PP0X2Y6_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y6X3_0_m5 <= y_m5b0_6 & x_m5b0_3;
   PP_m5_0X3Y6_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y6X3_0_m5,
                 Y => PP0X3Y6_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w27_10 <= PP0X3Y6_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w28_10 <= PP0X3Y6_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w29_10 <= PP0X3Y6_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w30_7 <= PP0X3Y6_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w31_7 <= PP0X3Y6_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w32_7 <= PP0X3Y6_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y6X4_0_m5 <= y_m5b0_6 & x_m5b0_4;
   PP_m5_0X4Y6_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y6X4_0_m5,
                 Y => PP0X4Y6_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w30_8 <= PP0X4Y6_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w31_8 <= PP0X4Y6_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w32_8 <= PP0X4Y6_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w33_5 <= PP0X4Y6_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w34_5 <= PP0X4Y6_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w35_5 <= PP0X4Y6_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y6X5_0_m5 <= y_m5b0_6 & x_m5b0_5;
   PP_m5_0X5Y6_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y6X5_0_m5,
                 Y => PP0X5Y6_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w33_6 <= PP0X5Y6_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w34_6 <= PP0X5Y6_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w35_6 <= PP0X5Y6_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w36_3 <= PP0X5Y6_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w37_3 <= PP0X5Y6_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w38_3 <= PP0X5Y6_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y6X6_0_m5 <= y_m5b0_6 & x_m5b0_6;
   PP_m5_0X6Y6_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y6X6_0_m5,
                 Y => PP0X6Y6_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w36_4 <= PP0X6Y6_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w37_4 <= PP0X6Y6_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w38_4 <= PP0X6Y6_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w39_1 <= PP0X6Y6_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w40_1 <= PP0X6Y6_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w41_1 <= PP0X6Y6_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y6X7_0_m5 <= y_m5b0_6 & x_m5b0_7;
   PP_m5_0X7Y6_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y6X7_0_m5,
                 Y => PP0X7Y6_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w39_2 <= PP0X7Y6_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w40_2 <= PP0X7Y6_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w41_2 <= PP0X7Y6_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w42_0 <= PP0X7Y6_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w43_0 <= PP0X7Y6_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w44_0 <= PP0X7Y6_m5(5); -- cycle= 0 cp= 5.9176e-10

   -- Partial product row number 7
   Y7X0_0_m5 <= y_m5b0_7 & x_m5b0_0;
   PP_m5_0X0Y7_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y7X0_0_m5,
                 Y => PP0X0Y7_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w21_14 <= PP0X0Y7_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w22_14 <= PP0X0Y7_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w23_14 <= PP0X0Y7_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w24_13 <= PP0X0Y7_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w25_13 <= PP0X0Y7_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w26_13 <= PP0X0Y7_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y7X1_0_m5 <= y_m5b0_7 & x_m5b0_1;
   PP_m5_0X1Y7_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y7X1_0_m5,
                 Y => PP0X1Y7_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w24_14 <= PP0X1Y7_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w25_14 <= PP0X1Y7_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w26_14 <= PP0X1Y7_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w27_11 <= PP0X1Y7_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w28_11 <= PP0X1Y7_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w29_11 <= PP0X1Y7_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y7X2_0_m5 <= y_m5b0_7 & x_m5b0_2;
   PP_m5_0X2Y7_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y7X2_0_m5,
                 Y => PP0X2Y7_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w27_12 <= PP0X2Y7_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w28_12 <= PP0X2Y7_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w29_12 <= PP0X2Y7_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w30_9 <= PP0X2Y7_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w31_9 <= PP0X2Y7_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w32_9 <= PP0X2Y7_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y7X3_0_m5 <= y_m5b0_7 & x_m5b0_3;
   PP_m5_0X3Y7_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y7X3_0_m5,
                 Y => PP0X3Y7_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w30_10 <= PP0X3Y7_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w31_10 <= PP0X3Y7_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w32_10 <= PP0X3Y7_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w33_7 <= PP0X3Y7_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w34_7 <= PP0X3Y7_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w35_7 <= PP0X3Y7_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y7X4_0_m5 <= y_m5b0_7 & x_m5b0_4;
   PP_m5_0X4Y7_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y7X4_0_m5,
                 Y => PP0X4Y7_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w33_8 <= PP0X4Y7_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w34_8 <= PP0X4Y7_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w35_8 <= PP0X4Y7_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w36_5 <= PP0X4Y7_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w37_5 <= PP0X4Y7_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w38_5 <= PP0X4Y7_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y7X5_0_m5 <= y_m5b0_7 & x_m5b0_5;
   PP_m5_0X5Y7_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y7X5_0_m5,
                 Y => PP0X5Y7_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w36_6 <= PP0X5Y7_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w37_6 <= PP0X5Y7_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w38_6 <= PP0X5Y7_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w39_3 <= PP0X5Y7_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w40_3 <= PP0X5Y7_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w41_3 <= PP0X5Y7_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y7X6_0_m5 <= y_m5b0_7 & x_m5b0_6;
   PP_m5_0X6Y7_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y7X6_0_m5,
                 Y => PP0X6Y7_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w39_4 <= PP0X6Y7_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w40_4 <= PP0X6Y7_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w41_4 <= PP0X6Y7_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w42_1 <= PP0X6Y7_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w43_1 <= PP0X6Y7_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w44_1 <= PP0X6Y7_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y7X7_0_m5 <= y_m5b0_7 & x_m5b0_7;
   PP_m5_0X7Y7_Tbl: SmallMultTableP3x3r6XuYu_F300_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y7X7_0_m5,
                 Y => PP0X7Y7_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w42_2 <= PP0X7Y7_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w43_2 <= PP0X7Y7_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w44_2 <= PP0X7Y7_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w45_0 <= PP0X7Y7_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w46_0 <= PP0X7Y7_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w47_0 <= PP0X7Y7_m5(5); -- cycle= 0 cp= 5.9176e-10

   
   -- Beginning of code generated by BitHeap::generateCompressorVHDL
   -- code generated by BitHeap::generateSupertileVHDL()
   ----------------Synchro barrier, entering cycle 0----------------

   -- Adding the constant bits
      -- All the constant bits are zero, nothing to add

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 0----------------
   tempR_bh6_0 <= heap_bh6_w2_0 & heap_bh6_w1_0 & heap_bh6_w0_0; -- already compressed

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_0_0 <= heap_bh6_w9_6 & heap_bh6_w9_5 & heap_bh6_w9_4 & heap_bh6_w9_3 & heap_bh6_w9_2 & heap_bh6_w9_1;
   Compressor_bh6_0: Compressor_6_3
      port map ( R => CompressorOut_bh6_0_0   ,
                 X0 => CompressorIn_bh6_0_0);
   heap_bh6_w9_7 <= CompressorOut_bh6_0_0(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w10_7 <= CompressorOut_bh6_0_0(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w11_7 <= CompressorOut_bh6_0_0(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_1_1 <= heap_bh6_w10_6 & heap_bh6_w10_5 & heap_bh6_w10_4 & heap_bh6_w10_3 & heap_bh6_w10_2 & heap_bh6_w10_1;
   Compressor_bh6_1: Compressor_6_3
      port map ( R => CompressorOut_bh6_1_1   ,
                 X0 => CompressorIn_bh6_1_1);
   heap_bh6_w10_8 <= CompressorOut_bh6_1_1(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w11_8 <= CompressorOut_bh6_1_1(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w12_9 <= CompressorOut_bh6_1_1(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_2_2 <= heap_bh6_w11_6 & heap_bh6_w11_5 & heap_bh6_w11_4 & heap_bh6_w11_3 & heap_bh6_w11_2 & heap_bh6_w11_1;
   Compressor_bh6_2: Compressor_6_3
      port map ( R => CompressorOut_bh6_2_2   ,
                 X0 => CompressorIn_bh6_2_2);
   heap_bh6_w11_9 <= CompressorOut_bh6_2_2(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w12_10 <= CompressorOut_bh6_2_2(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w13_9 <= CompressorOut_bh6_2_2(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_3_3 <= heap_bh6_w12_8 & heap_bh6_w12_7 & heap_bh6_w12_6 & heap_bh6_w12_5 & heap_bh6_w12_4 & heap_bh6_w12_3;
   Compressor_bh6_3: Compressor_6_3
      port map ( R => CompressorOut_bh6_3_3   ,
                 X0 => CompressorIn_bh6_3_3);
   heap_bh6_w12_11 <= CompressorOut_bh6_3_3(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w13_10 <= CompressorOut_bh6_3_3(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w14_9 <= CompressorOut_bh6_3_3(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_4_4 <= heap_bh6_w13_8 & heap_bh6_w13_7 & heap_bh6_w13_6 & heap_bh6_w13_5 & heap_bh6_w13_4 & heap_bh6_w13_3;
   Compressor_bh6_4: Compressor_6_3
      port map ( R => CompressorOut_bh6_4_4   ,
                 X0 => CompressorIn_bh6_4_4);
   heap_bh6_w13_11 <= CompressorOut_bh6_4_4(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w14_10 <= CompressorOut_bh6_4_4(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w15_11 <= CompressorOut_bh6_4_4(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_5_5 <= heap_bh6_w14_8 & heap_bh6_w14_7 & heap_bh6_w14_6 & heap_bh6_w14_5 & heap_bh6_w14_4 & heap_bh6_w14_3;
   Compressor_bh6_5: Compressor_6_3
      port map ( R => CompressorOut_bh6_5_5   ,
                 X0 => CompressorIn_bh6_5_5);
   heap_bh6_w14_11 <= CompressorOut_bh6_5_5(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w15_12 <= CompressorOut_bh6_5_5(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w16_11 <= CompressorOut_bh6_5_5(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_6_6 <= heap_bh6_w15_10 & heap_bh6_w15_9 & heap_bh6_w15_8 & heap_bh6_w15_7 & heap_bh6_w15_6 & heap_bh6_w15_5;
   Compressor_bh6_6: Compressor_6_3
      port map ( R => CompressorOut_bh6_6_6   ,
                 X0 => CompressorIn_bh6_6_6);
   heap_bh6_w15_13 <= CompressorOut_bh6_6_6(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w16_12 <= CompressorOut_bh6_6_6(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w17_11 <= CompressorOut_bh6_6_6(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_7_7 <= heap_bh6_w16_10 & heap_bh6_w16_9 & heap_bh6_w16_8 & heap_bh6_w16_7 & heap_bh6_w16_6 & heap_bh6_w16_5;
   Compressor_bh6_7: Compressor_6_3
      port map ( R => CompressorOut_bh6_7_7   ,
                 X0 => CompressorIn_bh6_7_7);
   heap_bh6_w16_13 <= CompressorOut_bh6_7_7(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w17_12 <= CompressorOut_bh6_7_7(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w18_13 <= CompressorOut_bh6_7_7(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_8_8 <= heap_bh6_w17_10 & heap_bh6_w17_9 & heap_bh6_w17_8 & heap_bh6_w17_7 & heap_bh6_w17_6 & heap_bh6_w17_5;
   Compressor_bh6_8: Compressor_6_3
      port map ( R => CompressorOut_bh6_8_8   ,
                 X0 => CompressorIn_bh6_8_8);
   heap_bh6_w17_13 <= CompressorOut_bh6_8_8(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w18_14 <= CompressorOut_bh6_8_8(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w19_13 <= CompressorOut_bh6_8_8(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_9_9 <= heap_bh6_w18_12 & heap_bh6_w18_11 & heap_bh6_w18_10 & heap_bh6_w18_9 & heap_bh6_w18_8 & heap_bh6_w18_7;
   Compressor_bh6_9: Compressor_6_3
      port map ( R => CompressorOut_bh6_9_9   ,
                 X0 => CompressorIn_bh6_9_9);
   heap_bh6_w18_15 <= CompressorOut_bh6_9_9(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w19_14 <= CompressorOut_bh6_9_9(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w20_13 <= CompressorOut_bh6_9_9(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_10_10 <= heap_bh6_w18_6 & heap_bh6_w18_5 & heap_bh6_w18_4 & heap_bh6_w18_3 & heap_bh6_w18_2 & heap_bh6_w18_1;
   Compressor_bh6_10: Compressor_6_3
      port map ( R => CompressorOut_bh6_10_10   ,
                 X0 => CompressorIn_bh6_10_10);
   heap_bh6_w18_16 <= CompressorOut_bh6_10_10(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w19_15 <= CompressorOut_bh6_10_10(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w20_14 <= CompressorOut_bh6_10_10(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_11_11 <= heap_bh6_w19_12 & heap_bh6_w19_11 & heap_bh6_w19_10 & heap_bh6_w19_9 & heap_bh6_w19_8 & heap_bh6_w19_7;
   Compressor_bh6_11: Compressor_6_3
      port map ( R => CompressorOut_bh6_11_11   ,
                 X0 => CompressorIn_bh6_11_11);
   heap_bh6_w19_16 <= CompressorOut_bh6_11_11(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w20_15 <= CompressorOut_bh6_11_11(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w21_15 <= CompressorOut_bh6_11_11(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_12_12 <= heap_bh6_w19_6 & heap_bh6_w19_5 & heap_bh6_w19_4 & heap_bh6_w19_3 & heap_bh6_w19_2 & heap_bh6_w19_1;
   Compressor_bh6_12: Compressor_6_3
      port map ( R => CompressorOut_bh6_12_12   ,
                 X0 => CompressorIn_bh6_12_12);
   heap_bh6_w19_17 <= CompressorOut_bh6_12_12(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w20_16 <= CompressorOut_bh6_12_12(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w21_16 <= CompressorOut_bh6_12_12(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_13_13 <= heap_bh6_w20_12 & heap_bh6_w20_11 & heap_bh6_w20_10 & heap_bh6_w20_9 & heap_bh6_w20_8 & heap_bh6_w20_7;
   Compressor_bh6_13: Compressor_6_3
      port map ( R => CompressorOut_bh6_13_13   ,
                 X0 => CompressorIn_bh6_13_13);
   heap_bh6_w20_17 <= CompressorOut_bh6_13_13(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w21_17 <= CompressorOut_bh6_13_13(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w22_15 <= CompressorOut_bh6_13_13(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_14_14 <= heap_bh6_w20_6 & heap_bh6_w20_5 & heap_bh6_w20_4 & heap_bh6_w20_3 & heap_bh6_w20_2 & heap_bh6_w20_1;
   Compressor_bh6_14: Compressor_6_3
      port map ( R => CompressorOut_bh6_14_14   ,
                 X0 => CompressorIn_bh6_14_14);
   heap_bh6_w20_18 <= CompressorOut_bh6_14_14(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w21_18 <= CompressorOut_bh6_14_14(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w22_16 <= CompressorOut_bh6_14_14(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_15_15 <= heap_bh6_w21_14 & heap_bh6_w21_13 & heap_bh6_w21_12 & heap_bh6_w21_11 & heap_bh6_w21_10 & heap_bh6_w21_9;
   Compressor_bh6_15: Compressor_6_3
      port map ( R => CompressorOut_bh6_15_15   ,
                 X0 => CompressorIn_bh6_15_15);
   heap_bh6_w21_19 <= CompressorOut_bh6_15_15(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w22_17 <= CompressorOut_bh6_15_15(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w23_15 <= CompressorOut_bh6_15_15(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_16_16 <= heap_bh6_w21_8 & heap_bh6_w21_7 & heap_bh6_w21_6 & heap_bh6_w21_5 & heap_bh6_w21_4 & heap_bh6_w21_3;
   Compressor_bh6_16: Compressor_6_3
      port map ( R => CompressorOut_bh6_16_16   ,
                 X0 => CompressorIn_bh6_16_16);
   heap_bh6_w21_20 <= CompressorOut_bh6_16_16(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w22_18 <= CompressorOut_bh6_16_16(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w23_16 <= CompressorOut_bh6_16_16(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_17_17 <= heap_bh6_w22_14 & heap_bh6_w22_13 & heap_bh6_w22_12 & heap_bh6_w22_11 & heap_bh6_w22_10 & heap_bh6_w22_9;
   Compressor_bh6_17: Compressor_6_3
      port map ( R => CompressorOut_bh6_17_17   ,
                 X0 => CompressorIn_bh6_17_17);
   heap_bh6_w22_19 <= CompressorOut_bh6_17_17(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w23_17 <= CompressorOut_bh6_17_17(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w24_15 <= CompressorOut_bh6_17_17(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_18_18 <= heap_bh6_w22_8 & heap_bh6_w22_7 & heap_bh6_w22_6 & heap_bh6_w22_5 & heap_bh6_w22_4 & heap_bh6_w22_3;
   Compressor_bh6_18: Compressor_6_3
      port map ( R => CompressorOut_bh6_18_18   ,
                 X0 => CompressorIn_bh6_18_18);
   heap_bh6_w22_20 <= CompressorOut_bh6_18_18(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w23_18 <= CompressorOut_bh6_18_18(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w24_16 <= CompressorOut_bh6_18_18(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_19_19 <= heap_bh6_w23_14 & heap_bh6_w23_13 & heap_bh6_w23_12 & heap_bh6_w23_11 & heap_bh6_w23_10 & heap_bh6_w23_9;
   Compressor_bh6_19: Compressor_6_3
      port map ( R => CompressorOut_bh6_19_19   ,
                 X0 => CompressorIn_bh6_19_19);
   heap_bh6_w23_19 <= CompressorOut_bh6_19_19(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w24_17 <= CompressorOut_bh6_19_19(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w25_15 <= CompressorOut_bh6_19_19(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_20_20 <= heap_bh6_w23_8 & heap_bh6_w23_7 & heap_bh6_w23_6 & heap_bh6_w23_5 & heap_bh6_w23_4 & heap_bh6_w23_3;
   Compressor_bh6_20: Compressor_6_3
      port map ( R => CompressorOut_bh6_20_20   ,
                 X0 => CompressorIn_bh6_20_20);
   heap_bh6_w23_20 <= CompressorOut_bh6_20_20(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w24_18 <= CompressorOut_bh6_20_20(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w25_16 <= CompressorOut_bh6_20_20(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_21_21 <= heap_bh6_w24_14 & heap_bh6_w24_13 & heap_bh6_w24_12 & heap_bh6_w24_11 & heap_bh6_w24_10 & heap_bh6_w24_9;
   Compressor_bh6_21: Compressor_6_3
      port map ( R => CompressorOut_bh6_21_21   ,
                 X0 => CompressorIn_bh6_21_21);
   heap_bh6_w24_19 <= CompressorOut_bh6_21_21(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w25_17 <= CompressorOut_bh6_21_21(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w26_15 <= CompressorOut_bh6_21_21(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_22_22 <= heap_bh6_w24_8 & heap_bh6_w24_7 & heap_bh6_w24_6 & heap_bh6_w24_5 & heap_bh6_w24_4 & heap_bh6_w24_3;
   Compressor_bh6_22: Compressor_6_3
      port map ( R => CompressorOut_bh6_22_22   ,
                 X0 => CompressorIn_bh6_22_22);
   heap_bh6_w24_20 <= CompressorOut_bh6_22_22(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w25_18 <= CompressorOut_bh6_22_22(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w26_16 <= CompressorOut_bh6_22_22(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_23_23 <= heap_bh6_w25_14 & heap_bh6_w25_13 & heap_bh6_w25_12 & heap_bh6_w25_11 & heap_bh6_w25_10 & heap_bh6_w25_9;
   Compressor_bh6_23: Compressor_6_3
      port map ( R => CompressorOut_bh6_23_23   ,
                 X0 => CompressorIn_bh6_23_23);
   heap_bh6_w25_19 <= CompressorOut_bh6_23_23(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w26_17 <= CompressorOut_bh6_23_23(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w27_13 <= CompressorOut_bh6_23_23(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_24_24 <= heap_bh6_w25_8 & heap_bh6_w25_7 & heap_bh6_w25_6 & heap_bh6_w25_5 & heap_bh6_w25_4 & heap_bh6_w25_3;
   Compressor_bh6_24: Compressor_6_3
      port map ( R => CompressorOut_bh6_24_24   ,
                 X0 => CompressorIn_bh6_24_24);
   heap_bh6_w25_20 <= CompressorOut_bh6_24_24(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w26_18 <= CompressorOut_bh6_24_24(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w27_14 <= CompressorOut_bh6_24_24(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_25_25 <= heap_bh6_w26_14 & heap_bh6_w26_13 & heap_bh6_w26_12 & heap_bh6_w26_11 & heap_bh6_w26_10 & heap_bh6_w26_9;
   Compressor_bh6_25: Compressor_6_3
      port map ( R => CompressorOut_bh6_25_25   ,
                 X0 => CompressorIn_bh6_25_25);
   heap_bh6_w26_19 <= CompressorOut_bh6_25_25(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w27_15 <= CompressorOut_bh6_25_25(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w28_13 <= CompressorOut_bh6_25_25(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_26_26 <= heap_bh6_w26_8 & heap_bh6_w26_7 & heap_bh6_w26_6 & heap_bh6_w26_5 & heap_bh6_w26_4 & heap_bh6_w26_3;
   Compressor_bh6_26: Compressor_6_3
      port map ( R => CompressorOut_bh6_26_26   ,
                 X0 => CompressorIn_bh6_26_26);
   heap_bh6_w26_20 <= CompressorOut_bh6_26_26(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w27_16 <= CompressorOut_bh6_26_26(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w28_14 <= CompressorOut_bh6_26_26(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_27_27 <= heap_bh6_w27_12 & heap_bh6_w27_11 & heap_bh6_w27_10 & heap_bh6_w27_9 & heap_bh6_w27_8 & heap_bh6_w27_7;
   Compressor_bh6_27: Compressor_6_3
      port map ( R => CompressorOut_bh6_27_27   ,
                 X0 => CompressorIn_bh6_27_27);
   heap_bh6_w27_17 <= CompressorOut_bh6_27_27(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w28_15 <= CompressorOut_bh6_27_27(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w29_13 <= CompressorOut_bh6_27_27(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_28_28 <= heap_bh6_w27_6 & heap_bh6_w27_5 & heap_bh6_w27_4 & heap_bh6_w27_3 & heap_bh6_w27_2 & heap_bh6_w27_1;
   Compressor_bh6_28: Compressor_6_3
      port map ( R => CompressorOut_bh6_28_28   ,
                 X0 => CompressorIn_bh6_28_28);
   heap_bh6_w27_18 <= CompressorOut_bh6_28_28(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w28_16 <= CompressorOut_bh6_28_28(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w29_14 <= CompressorOut_bh6_28_28(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_29_29 <= heap_bh6_w28_12 & heap_bh6_w28_11 & heap_bh6_w28_10 & heap_bh6_w28_9 & heap_bh6_w28_8 & heap_bh6_w28_7;
   Compressor_bh6_29: Compressor_6_3
      port map ( R => CompressorOut_bh6_29_29   ,
                 X0 => CompressorIn_bh6_29_29);
   heap_bh6_w28_17 <= CompressorOut_bh6_29_29(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w29_15 <= CompressorOut_bh6_29_29(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w30_11 <= CompressorOut_bh6_29_29(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_30_30 <= heap_bh6_w28_6 & heap_bh6_w28_5 & heap_bh6_w28_4 & heap_bh6_w28_3 & heap_bh6_w28_2 & heap_bh6_w28_1;
   Compressor_bh6_30: Compressor_6_3
      port map ( R => CompressorOut_bh6_30_30   ,
                 X0 => CompressorIn_bh6_30_30);
   heap_bh6_w28_18 <= CompressorOut_bh6_30_30(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w29_16 <= CompressorOut_bh6_30_30(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w30_12 <= CompressorOut_bh6_30_30(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_31_31 <= heap_bh6_w29_12 & heap_bh6_w29_11 & heap_bh6_w29_10 & heap_bh6_w29_9 & heap_bh6_w29_8 & heap_bh6_w29_7;
   Compressor_bh6_31: Compressor_6_3
      port map ( R => CompressorOut_bh6_31_31   ,
                 X0 => CompressorIn_bh6_31_31);
   heap_bh6_w29_17 <= CompressorOut_bh6_31_31(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w30_13 <= CompressorOut_bh6_31_31(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w31_11 <= CompressorOut_bh6_31_31(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_32_32 <= heap_bh6_w29_6 & heap_bh6_w29_5 & heap_bh6_w29_4 & heap_bh6_w29_3 & heap_bh6_w29_2 & heap_bh6_w29_1;
   Compressor_bh6_32: Compressor_6_3
      port map ( R => CompressorOut_bh6_32_32   ,
                 X0 => CompressorIn_bh6_32_32);
   heap_bh6_w29_18 <= CompressorOut_bh6_32_32(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w30_14 <= CompressorOut_bh6_32_32(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w31_12 <= CompressorOut_bh6_32_32(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_33_33 <= heap_bh6_w30_10 & heap_bh6_w30_9 & heap_bh6_w30_8 & heap_bh6_w30_7 & heap_bh6_w30_6 & heap_bh6_w30_5;
   Compressor_bh6_33: Compressor_6_3
      port map ( R => CompressorOut_bh6_33_33   ,
                 X0 => CompressorIn_bh6_33_33);
   heap_bh6_w30_15 <= CompressorOut_bh6_33_33(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w31_13 <= CompressorOut_bh6_33_33(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w32_11 <= CompressorOut_bh6_33_33(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_34_34 <= heap_bh6_w31_10 & heap_bh6_w31_9 & heap_bh6_w31_8 & heap_bh6_w31_7 & heap_bh6_w31_6 & heap_bh6_w31_5;
   Compressor_bh6_34: Compressor_6_3
      port map ( R => CompressorOut_bh6_34_34   ,
                 X0 => CompressorIn_bh6_34_34);
   heap_bh6_w31_14 <= CompressorOut_bh6_34_34(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w32_12 <= CompressorOut_bh6_34_34(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w33_9 <= CompressorOut_bh6_34_34(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_35_35 <= heap_bh6_w32_10 & heap_bh6_w32_9 & heap_bh6_w32_8 & heap_bh6_w32_7 & heap_bh6_w32_6 & heap_bh6_w32_5;
   Compressor_bh6_35: Compressor_6_3
      port map ( R => CompressorOut_bh6_35_35   ,
                 X0 => CompressorIn_bh6_35_35);
   heap_bh6_w32_13 <= CompressorOut_bh6_35_35(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w33_10 <= CompressorOut_bh6_35_35(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w34_9 <= CompressorOut_bh6_35_35(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_36_36 <= heap_bh6_w33_8 & heap_bh6_w33_7 & heap_bh6_w33_6 & heap_bh6_w33_5 & heap_bh6_w33_4 & heap_bh6_w33_3;
   Compressor_bh6_36: Compressor_6_3
      port map ( R => CompressorOut_bh6_36_36   ,
                 X0 => CompressorIn_bh6_36_36);
   heap_bh6_w33_11 <= CompressorOut_bh6_36_36(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w34_10 <= CompressorOut_bh6_36_36(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w35_9 <= CompressorOut_bh6_36_36(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_37_37 <= heap_bh6_w34_8 & heap_bh6_w34_7 & heap_bh6_w34_6 & heap_bh6_w34_5 & heap_bh6_w34_4 & heap_bh6_w34_3;
   Compressor_bh6_37: Compressor_6_3
      port map ( R => CompressorOut_bh6_37_37   ,
                 X0 => CompressorIn_bh6_37_37);
   heap_bh6_w34_11 <= CompressorOut_bh6_37_37(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w35_10 <= CompressorOut_bh6_37_37(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w36_7 <= CompressorOut_bh6_37_37(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_38_38 <= heap_bh6_w35_8 & heap_bh6_w35_7 & heap_bh6_w35_6 & heap_bh6_w35_5 & heap_bh6_w35_4 & heap_bh6_w35_3;
   Compressor_bh6_38: Compressor_6_3
      port map ( R => CompressorOut_bh6_38_38   ,
                 X0 => CompressorIn_bh6_38_38);
   heap_bh6_w35_11 <= CompressorOut_bh6_38_38(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w36_8 <= CompressorOut_bh6_38_38(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w37_7 <= CompressorOut_bh6_38_38(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_39_39 <= heap_bh6_w36_6 & heap_bh6_w36_5 & heap_bh6_w36_4 & heap_bh6_w36_3 & heap_bh6_w36_2 & heap_bh6_w36_1;
   Compressor_bh6_39: Compressor_6_3
      port map ( R => CompressorOut_bh6_39_39   ,
                 X0 => CompressorIn_bh6_39_39);
   heap_bh6_w36_9 <= CompressorOut_bh6_39_39(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w37_8 <= CompressorOut_bh6_39_39(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w38_7 <= CompressorOut_bh6_39_39(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_40_40 <= heap_bh6_w37_6 & heap_bh6_w37_5 & heap_bh6_w37_4 & heap_bh6_w37_3 & heap_bh6_w37_2 & heap_bh6_w37_1;
   Compressor_bh6_40: Compressor_6_3
      port map ( R => CompressorOut_bh6_40_40   ,
                 X0 => CompressorIn_bh6_40_40);
   heap_bh6_w37_9 <= CompressorOut_bh6_40_40(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w38_8 <= CompressorOut_bh6_40_40(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w39_5 <= CompressorOut_bh6_40_40(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_41_41 <= heap_bh6_w38_6 & heap_bh6_w38_5 & heap_bh6_w38_4 & heap_bh6_w38_3 & heap_bh6_w38_2 & heap_bh6_w38_1;
   Compressor_bh6_41: Compressor_6_3
      port map ( R => CompressorOut_bh6_41_41   ,
                 X0 => CompressorIn_bh6_41_41);
   heap_bh6_w38_9 <= CompressorOut_bh6_41_41(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w39_6 <= CompressorOut_bh6_41_41(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w40_5 <= CompressorOut_bh6_41_41(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_42_42 <= heap_bh6_w6_4 & heap_bh6_w6_3 & heap_bh6_w6_2 & heap_bh6_w6_1;
   CompressorIn_bh6_42_43(0) <= heap_bh6_w7_4;
   Compressor_bh6_42: Compressor_14_3
      port map ( R => CompressorOut_bh6_42_42   ,
                 X0 => CompressorIn_bh6_42_42,
                 X1 => CompressorIn_bh6_42_43);
   heap_bh6_w6_5 <= CompressorOut_bh6_42_42(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w7_5 <= CompressorOut_bh6_42_42(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w8_5 <= CompressorOut_bh6_42_42(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_43_44 <= heap_bh6_w7_3 & heap_bh6_w7_2 & heap_bh6_w7_1 & heap_bh6_w7_0;
   CompressorIn_bh6_43_45(0) <= heap_bh6_w8_4;
   Compressor_bh6_43: Compressor_14_3
      port map ( R => CompressorOut_bh6_43_43   ,
                 X0 => CompressorIn_bh6_43_44,
                 X1 => CompressorIn_bh6_43_45);
   heap_bh6_w7_6 <= CompressorOut_bh6_43_43(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w8_6 <= CompressorOut_bh6_43_43(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w9_8 <= CompressorOut_bh6_43_43(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_44_46 <= heap_bh6_w8_3 & heap_bh6_w8_2 & heap_bh6_w8_1 & heap_bh6_w8_0;
   CompressorIn_bh6_44_47(0) <= heap_bh6_w9_0;
   Compressor_bh6_44: Compressor_14_3
      port map ( R => CompressorOut_bh6_44_44   ,
                 X0 => CompressorIn_bh6_44_46,
                 X1 => CompressorIn_bh6_44_47);
   heap_bh6_w8_7 <= CompressorOut_bh6_44_44(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w9_9 <= CompressorOut_bh6_44_44(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w10_9 <= CompressorOut_bh6_44_44(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_45_48 <= heap_bh6_w15_4 & heap_bh6_w15_3 & heap_bh6_w15_2 & heap_bh6_w15_1;
   CompressorIn_bh6_45_49(0) <= heap_bh6_w16_4;
   Compressor_bh6_45: Compressor_14_3
      port map ( R => CompressorOut_bh6_45_45   ,
                 X0 => CompressorIn_bh6_45_48,
                 X1 => CompressorIn_bh6_45_49);
   heap_bh6_w15_14 <= CompressorOut_bh6_45_45(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w16_14 <= CompressorOut_bh6_45_45(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w17_14 <= CompressorOut_bh6_45_45(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_46_50 <= heap_bh6_w16_3 & heap_bh6_w16_2 & heap_bh6_w16_1 & heap_bh6_w16_0;
   CompressorIn_bh6_46_51(0) <= heap_bh6_w17_4;
   Compressor_bh6_46: Compressor_14_3
      port map ( R => CompressorOut_bh6_46_46   ,
                 X0 => CompressorIn_bh6_46_50,
                 X1 => CompressorIn_bh6_46_51);
   heap_bh6_w16_15 <= CompressorOut_bh6_46_46(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w17_15 <= CompressorOut_bh6_46_46(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w18_17 <= CompressorOut_bh6_46_46(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_47_52 <= heap_bh6_w17_3 & heap_bh6_w17_2 & heap_bh6_w17_1 & heap_bh6_w17_0;
   CompressorIn_bh6_47_53(0) <= heap_bh6_w18_0;
   Compressor_bh6_47: Compressor_14_3
      port map ( R => CompressorOut_bh6_47_47   ,
                 X0 => CompressorIn_bh6_47_52,
                 X1 => CompressorIn_bh6_47_53);
   heap_bh6_w17_16 <= CompressorOut_bh6_47_47(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w18_18 <= CompressorOut_bh6_47_47(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w19_18 <= CompressorOut_bh6_47_47(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_48_54 <= heap_bh6_w30_4 & heap_bh6_w30_3 & heap_bh6_w30_2 & heap_bh6_w30_1;
   CompressorIn_bh6_48_55(0) <= heap_bh6_w31_4;
   Compressor_bh6_48: Compressor_14_3
      port map ( R => CompressorOut_bh6_48_48   ,
                 X0 => CompressorIn_bh6_48_54,
                 X1 => CompressorIn_bh6_48_55);
   heap_bh6_w30_16 <= CompressorOut_bh6_48_48(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w31_15 <= CompressorOut_bh6_48_48(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w32_14 <= CompressorOut_bh6_48_48(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_49_56 <= heap_bh6_w31_3 & heap_bh6_w31_2 & heap_bh6_w31_1 & heap_bh6_w31_0;
   CompressorIn_bh6_49_57(0) <= heap_bh6_w32_4;
   Compressor_bh6_49: Compressor_14_3
      port map ( R => CompressorOut_bh6_49_49   ,
                 X0 => CompressorIn_bh6_49_56,
                 X1 => CompressorIn_bh6_49_57);
   heap_bh6_w31_16 <= CompressorOut_bh6_49_49(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w32_15 <= CompressorOut_bh6_49_49(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w33_12 <= CompressorOut_bh6_49_49(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_50_58 <= heap_bh6_w32_3 & heap_bh6_w32_2 & heap_bh6_w32_1 & heap_bh6_w32_0;
   CompressorIn_bh6_50_59(0) <= heap_bh6_w33_2;
   Compressor_bh6_50: Compressor_14_3
      port map ( R => CompressorOut_bh6_50_50   ,
                 X0 => CompressorIn_bh6_50_58,
                 X1 => CompressorIn_bh6_50_59);
   heap_bh6_w32_16 <= CompressorOut_bh6_50_50(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w33_13 <= CompressorOut_bh6_50_50(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w34_12 <= CompressorOut_bh6_50_50(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_51_60 <= heap_bh6_w39_4 & heap_bh6_w39_3 & heap_bh6_w39_2 & heap_bh6_w39_1;
   CompressorIn_bh6_51_61(0) <= heap_bh6_w40_4;
   Compressor_bh6_51: Compressor_14_3
      port map ( R => CompressorOut_bh6_51_51   ,
                 X0 => CompressorIn_bh6_51_60,
                 X1 => CompressorIn_bh6_51_61);
   heap_bh6_w39_7 <= CompressorOut_bh6_51_51(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w40_6 <= CompressorOut_bh6_51_51(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w41_5 <= CompressorOut_bh6_51_51(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_52_62 <= heap_bh6_w40_3 & heap_bh6_w40_2 & heap_bh6_w40_1 & heap_bh6_w40_0;
   CompressorIn_bh6_52_63(0) <= heap_bh6_w41_4;
   Compressor_bh6_52: Compressor_14_3
      port map ( R => CompressorOut_bh6_52_52   ,
                 X0 => CompressorIn_bh6_52_62,
                 X1 => CompressorIn_bh6_52_63);
   heap_bh6_w40_7 <= CompressorOut_bh6_52_52(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w41_6 <= CompressorOut_bh6_52_52(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w42_3 <= CompressorOut_bh6_52_52(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_53_64 <= heap_bh6_w41_3 & heap_bh6_w41_2 & heap_bh6_w41_1 & heap_bh6_w41_0;
   CompressorIn_bh6_53_65(0) <= heap_bh6_w42_2;
   Compressor_bh6_53: Compressor_14_3
      port map ( R => CompressorOut_bh6_53_53   ,
                 X0 => CompressorIn_bh6_53_64,
                 X1 => CompressorIn_bh6_53_65);
   heap_bh6_w41_7 <= CompressorOut_bh6_53_53(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w42_4 <= CompressorOut_bh6_53_53(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w43_3 <= CompressorOut_bh6_53_53(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_54_66 <= heap_bh6_w3_2 & heap_bh6_w3_1 & heap_bh6_w3_0;
   CompressorIn_bh6_54_67 <= heap_bh6_w4_2 & heap_bh6_w4_1;
   Compressor_bh6_54: Compressor_23_3
      port map ( R => CompressorOut_bh6_54_54   ,
                 X0 => CompressorIn_bh6_54_66,
                 X1 => CompressorIn_bh6_54_67);
   heap_bh6_w3_3 <= CompressorOut_bh6_54_54(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w4_3 <= CompressorOut_bh6_54_54(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w5_3 <= CompressorOut_bh6_54_54(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_55_68 <= heap_bh6_w12_2 & heap_bh6_w12_1 & heap_bh6_w12_0;
   CompressorIn_bh6_55_69 <= heap_bh6_w13_2 & heap_bh6_w13_1;
   Compressor_bh6_55: Compressor_23_3
      port map ( R => CompressorOut_bh6_55_55   ,
                 X0 => CompressorIn_bh6_55_68,
                 X1 => CompressorIn_bh6_55_69);
   heap_bh6_w12_12 <= CompressorOut_bh6_55_55(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w13_12 <= CompressorOut_bh6_55_55(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w14_12 <= CompressorOut_bh6_55_55(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_56_70 <= heap_bh6_w21_2 & heap_bh6_w21_1 & heap_bh6_w21_0;
   CompressorIn_bh6_56_71 <= heap_bh6_w22_2 & heap_bh6_w22_1;
   Compressor_bh6_56: Compressor_23_3
      port map ( R => CompressorOut_bh6_56_56   ,
                 X0 => CompressorIn_bh6_56_70,
                 X1 => CompressorIn_bh6_56_71);
   heap_bh6_w21_21 <= CompressorOut_bh6_56_56(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w22_21 <= CompressorOut_bh6_56_56(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w23_21 <= CompressorOut_bh6_56_56(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_57_72 <= heap_bh6_w23_2 & heap_bh6_w23_1 & heap_bh6_w23_0;
   CompressorIn_bh6_57_73 <= heap_bh6_w24_2 & heap_bh6_w24_1;
   Compressor_bh6_57: Compressor_23_3
      port map ( R => CompressorOut_bh6_57_57   ,
                 X0 => CompressorIn_bh6_57_72,
                 X1 => CompressorIn_bh6_57_73);
   heap_bh6_w23_22 <= CompressorOut_bh6_57_57(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w24_21 <= CompressorOut_bh6_57_57(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w25_21 <= CompressorOut_bh6_57_57(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_58_74 <= heap_bh6_w25_2 & heap_bh6_w25_1 & heap_bh6_w25_0;
   CompressorIn_bh6_58_75 <= heap_bh6_w26_2 & heap_bh6_w26_1;
   Compressor_bh6_58: Compressor_23_3
      port map ( R => CompressorOut_bh6_58_58   ,
                 X0 => CompressorIn_bh6_58_74,
                 X1 => CompressorIn_bh6_58_75);
   heap_bh6_w25_22 <= CompressorOut_bh6_58_58(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w26_21 <= CompressorOut_bh6_58_58(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w27_19 <= CompressorOut_bh6_58_58(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_59_76 <= heap_bh6_w34_2 & heap_bh6_w34_1 & heap_bh6_w34_0;
   CompressorIn_bh6_59_77 <= heap_bh6_w35_2 & heap_bh6_w35_1;
   Compressor_bh6_59: Compressor_23_3
      port map ( R => CompressorOut_bh6_59_59   ,
                 X0 => CompressorIn_bh6_59_76,
                 X1 => CompressorIn_bh6_59_77);
   heap_bh6_w34_13 <= CompressorOut_bh6_59_59(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w35_12 <= CompressorOut_bh6_59_59(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w36_10 <= CompressorOut_bh6_59_59(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_60_78 <= heap_bh6_w43_2 & heap_bh6_w43_1 & heap_bh6_w43_0;
   CompressorIn_bh6_60_79 <= heap_bh6_w44_2 & heap_bh6_w44_1;
   Compressor_bh6_60: Compressor_23_3
      port map ( R => CompressorOut_bh6_60_60   ,
                 X0 => CompressorIn_bh6_60_78,
                 X1 => CompressorIn_bh6_60_79);
   heap_bh6_w43_4 <= CompressorOut_bh6_60_60(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w44_3 <= CompressorOut_bh6_60_60(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w45_1 <= CompressorOut_bh6_60_60(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_61_80 <= heap_bh6_w5_2 & heap_bh6_w5_1 & heap_bh6_w5_0;
   CompressorIn_bh6_61_81(0) <= heap_bh6_w6_0;
   Compressor_bh6_61: Compressor_13_3
      port map ( R => CompressorOut_bh6_61_61   ,
                 X0 => CompressorIn_bh6_61_80,
                 X1 => CompressorIn_bh6_61_81);
   heap_bh6_w5_4 <= CompressorOut_bh6_61_61(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w6_6 <= CompressorOut_bh6_61_61(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w7_7 <= CompressorOut_bh6_61_61(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_62_82 <= heap_bh6_w14_2 & heap_bh6_w14_1 & heap_bh6_w14_0;
   CompressorIn_bh6_62_83(0) <= heap_bh6_w15_0;
   Compressor_bh6_62: Compressor_13_3
      port map ( R => CompressorOut_bh6_62_62   ,
                 X0 => CompressorIn_bh6_62_82,
                 X1 => CompressorIn_bh6_62_83);
   heap_bh6_w14_13 <= CompressorOut_bh6_62_62(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w15_15 <= CompressorOut_bh6_62_62(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w16_16 <= CompressorOut_bh6_62_62(2); -- cycle= 0 cp= 1.12248e-09
   ----------------Synchro barrier, entering cycle 0----------------
   tempR_bh6_1 <= heap_bh6_w3_3; -- already compressed

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_63_84 <= heap_bh6_w16_16 & heap_bh6_w16_15 & heap_bh6_w16_14 & heap_bh6_w16_13 & heap_bh6_w16_12 & heap_bh6_w16_11;
   Compressor_bh6_63: Compressor_6_3
      port map ( R => CompressorOut_bh6_63_63   ,
                 X0 => CompressorIn_bh6_63_84);
   heap_bh6_w16_17 <= CompressorOut_bh6_63_63(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w17_17 <= CompressorOut_bh6_63_63(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w18_19 <= CompressorOut_bh6_63_63(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_64_85 <= heap_bh6_w17_16 & heap_bh6_w17_15 & heap_bh6_w17_14 & heap_bh6_w17_13 & heap_bh6_w17_12 & heap_bh6_w17_11;
   Compressor_bh6_64: Compressor_6_3
      port map ( R => CompressorOut_bh6_64_64   ,
                 X0 => CompressorIn_bh6_64_85);
   heap_bh6_w17_18 <= CompressorOut_bh6_64_64(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w18_20 <= CompressorOut_bh6_64_64(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w19_19 <= CompressorOut_bh6_64_64(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_65_86 <= heap_bh6_w18_18 & heap_bh6_w18_17 & heap_bh6_w18_16 & heap_bh6_w18_15 & heap_bh6_w18_14 & heap_bh6_w18_13;
   Compressor_bh6_65: Compressor_6_3
      port map ( R => CompressorOut_bh6_65_65   ,
                 X0 => CompressorIn_bh6_65_86);
   heap_bh6_w18_21 <= CompressorOut_bh6_65_65(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w19_20 <= CompressorOut_bh6_65_65(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w20_19 <= CompressorOut_bh6_65_65(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_66_87 <= heap_bh6_w19_0 & heap_bh6_w19_18 & heap_bh6_w19_17 & heap_bh6_w19_16 & heap_bh6_w19_15 & heap_bh6_w19_14;
   Compressor_bh6_66: Compressor_6_3
      port map ( R => CompressorOut_bh6_66_66   ,
                 X0 => CompressorIn_bh6_66_87);
   heap_bh6_w19_21 <= CompressorOut_bh6_66_66(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w20_20 <= CompressorOut_bh6_66_66(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w21_22 <= CompressorOut_bh6_66_66(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_67_88 <= heap_bh6_w20_0 & heap_bh6_w20_18 & heap_bh6_w20_17 & heap_bh6_w20_16 & heap_bh6_w20_15 & heap_bh6_w20_14;
   Compressor_bh6_67: Compressor_6_3
      port map ( R => CompressorOut_bh6_67_67   ,
                 X0 => CompressorIn_bh6_67_88);
   heap_bh6_w20_21 <= CompressorOut_bh6_67_67(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w21_23 <= CompressorOut_bh6_67_67(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w22_22 <= CompressorOut_bh6_67_67(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_68_89 <= heap_bh6_w21_21 & heap_bh6_w21_20 & heap_bh6_w21_19 & heap_bh6_w21_18 & heap_bh6_w21_17 & heap_bh6_w21_16;
   Compressor_bh6_68: Compressor_6_3
      port map ( R => CompressorOut_bh6_68_68   ,
                 X0 => CompressorIn_bh6_68_89);
   heap_bh6_w21_24 <= CompressorOut_bh6_68_68(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w22_23 <= CompressorOut_bh6_68_68(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w23_23 <= CompressorOut_bh6_68_68(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_69_90 <= heap_bh6_w22_0 & heap_bh6_w22_21 & heap_bh6_w22_20 & heap_bh6_w22_19 & heap_bh6_w22_18 & heap_bh6_w22_17;
   Compressor_bh6_69: Compressor_6_3
      port map ( R => CompressorOut_bh6_69_69   ,
                 X0 => CompressorIn_bh6_69_90);
   heap_bh6_w22_24 <= CompressorOut_bh6_69_69(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w23_24 <= CompressorOut_bh6_69_69(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w24_22 <= CompressorOut_bh6_69_69(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_70_91 <= heap_bh6_w23_22 & heap_bh6_w23_21 & heap_bh6_w23_20 & heap_bh6_w23_19 & heap_bh6_w23_18 & heap_bh6_w23_17;
   Compressor_bh6_70: Compressor_6_3
      port map ( R => CompressorOut_bh6_70_70   ,
                 X0 => CompressorIn_bh6_70_91);
   heap_bh6_w23_25 <= CompressorOut_bh6_70_70(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w24_23 <= CompressorOut_bh6_70_70(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w25_23 <= CompressorOut_bh6_70_70(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_71_92 <= heap_bh6_w24_0 & heap_bh6_w24_21 & heap_bh6_w24_20 & heap_bh6_w24_19 & heap_bh6_w24_18 & heap_bh6_w24_17;
   Compressor_bh6_71: Compressor_6_3
      port map ( R => CompressorOut_bh6_71_71   ,
                 X0 => CompressorIn_bh6_71_92);
   heap_bh6_w24_24 <= CompressorOut_bh6_71_71(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w25_24 <= CompressorOut_bh6_71_71(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w26_22 <= CompressorOut_bh6_71_71(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_72_93 <= heap_bh6_w25_22 & heap_bh6_w25_21 & heap_bh6_w25_20 & heap_bh6_w25_19 & heap_bh6_w25_18 & heap_bh6_w25_17;
   Compressor_bh6_72: Compressor_6_3
      port map ( R => CompressorOut_bh6_72_72   ,
                 X0 => CompressorIn_bh6_72_93);
   heap_bh6_w25_25 <= CompressorOut_bh6_72_72(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w26_23 <= CompressorOut_bh6_72_72(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w27_20 <= CompressorOut_bh6_72_72(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_73_94 <= heap_bh6_w26_0 & heap_bh6_w26_21 & heap_bh6_w26_20 & heap_bh6_w26_19 & heap_bh6_w26_18 & heap_bh6_w26_17;
   Compressor_bh6_73: Compressor_6_3
      port map ( R => CompressorOut_bh6_73_73   ,
                 X0 => CompressorIn_bh6_73_94);
   heap_bh6_w26_24 <= CompressorOut_bh6_73_73(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w27_21 <= CompressorOut_bh6_73_73(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w28_19 <= CompressorOut_bh6_73_73(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_74_95 <= heap_bh6_w27_0 & heap_bh6_w27_19 & heap_bh6_w27_18 & heap_bh6_w27_17 & heap_bh6_w27_16 & heap_bh6_w27_15;
   Compressor_bh6_74: Compressor_6_3
      port map ( R => CompressorOut_bh6_74_74   ,
                 X0 => CompressorIn_bh6_74_95);
   heap_bh6_w27_22 <= CompressorOut_bh6_74_74(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w28_20 <= CompressorOut_bh6_74_74(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w29_19 <= CompressorOut_bh6_74_74(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_75_96 <= heap_bh6_w28_0 & heap_bh6_w28_18 & heap_bh6_w28_17 & heap_bh6_w28_16 & heap_bh6_w28_15 & heap_bh6_w28_14;
   Compressor_bh6_75: Compressor_6_3
      port map ( R => CompressorOut_bh6_75_75   ,
                 X0 => CompressorIn_bh6_75_96);
   heap_bh6_w28_21 <= CompressorOut_bh6_75_75(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w29_20 <= CompressorOut_bh6_75_75(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w30_17 <= CompressorOut_bh6_75_75(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_76_97 <= heap_bh6_w29_0 & heap_bh6_w29_18 & heap_bh6_w29_17 & heap_bh6_w29_16 & heap_bh6_w29_15 & heap_bh6_w29_14;
   Compressor_bh6_76: Compressor_6_3
      port map ( R => CompressorOut_bh6_76_76   ,
                 X0 => CompressorIn_bh6_76_97);
   heap_bh6_w29_21 <= CompressorOut_bh6_76_76(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w30_18 <= CompressorOut_bh6_76_76(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w31_17 <= CompressorOut_bh6_76_76(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_77_98 <= heap_bh6_w30_0 & heap_bh6_w30_16 & heap_bh6_w30_15 & heap_bh6_w30_14 & heap_bh6_w30_13 & heap_bh6_w30_12;
   Compressor_bh6_77: Compressor_6_3
      port map ( R => CompressorOut_bh6_77_77   ,
                 X0 => CompressorIn_bh6_77_98);
   heap_bh6_w30_19 <= CompressorOut_bh6_77_77(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w31_18 <= CompressorOut_bh6_77_77(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w32_17 <= CompressorOut_bh6_77_77(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_78_99 <= heap_bh6_w31_16 & heap_bh6_w31_15 & heap_bh6_w31_14 & heap_bh6_w31_13 & heap_bh6_w31_12 & heap_bh6_w31_11;
   Compressor_bh6_78: Compressor_6_3
      port map ( R => CompressorOut_bh6_78_78   ,
                 X0 => CompressorIn_bh6_78_99);
   heap_bh6_w31_19 <= CompressorOut_bh6_78_78(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w32_18 <= CompressorOut_bh6_78_78(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w33_14 <= CompressorOut_bh6_78_78(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_79_100 <= heap_bh6_w32_16 & heap_bh6_w32_15 & heap_bh6_w32_14 & heap_bh6_w32_13 & heap_bh6_w32_12 & heap_bh6_w32_11;
   Compressor_bh6_79: Compressor_6_3
      port map ( R => CompressorOut_bh6_79_79   ,
                 X0 => CompressorIn_bh6_79_100);
   heap_bh6_w32_19 <= CompressorOut_bh6_79_79(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w33_15 <= CompressorOut_bh6_79_79(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w34_14 <= CompressorOut_bh6_79_79(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_80_101 <= heap_bh6_w33_1 & heap_bh6_w33_0 & heap_bh6_w33_13 & heap_bh6_w33_12 & heap_bh6_w33_11 & heap_bh6_w33_10;
   Compressor_bh6_80: Compressor_6_3
      port map ( R => CompressorOut_bh6_80_80   ,
                 X0 => CompressorIn_bh6_80_101);
   heap_bh6_w33_16 <= CompressorOut_bh6_80_80(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w34_15 <= CompressorOut_bh6_80_80(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w35_13 <= CompressorOut_bh6_80_80(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_81_102 <= heap_bh6_w10_0 & heap_bh6_w10_9 & heap_bh6_w10_8 & heap_bh6_w10_7;
   CompressorIn_bh6_81_103(0) <= heap_bh6_w11_0;
   Compressor_bh6_81: Compressor_14_3
      port map ( R => CompressorOut_bh6_81_81   ,
                 X0 => CompressorIn_bh6_81_102,
                 X1 => CompressorIn_bh6_81_103);
   heap_bh6_w10_10 <= CompressorOut_bh6_81_81(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w11_10 <= CompressorOut_bh6_81_81(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w12_13 <= CompressorOut_bh6_81_81(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_82_104 <= heap_bh6_w12_12 & heap_bh6_w12_11 & heap_bh6_w12_10 & heap_bh6_w12_9;
   CompressorIn_bh6_82_105(0) <= heap_bh6_w13_0;
   Compressor_bh6_82: Compressor_14_3
      port map ( R => CompressorOut_bh6_82_82   ,
                 X0 => CompressorIn_bh6_82_104,
                 X1 => CompressorIn_bh6_82_105);
   heap_bh6_w12_14 <= CompressorOut_bh6_82_82(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w13_13 <= CompressorOut_bh6_82_82(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w14_14 <= CompressorOut_bh6_82_82(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_83_106 <= heap_bh6_w13_12 & heap_bh6_w13_11 & heap_bh6_w13_10 & heap_bh6_w13_9;
   CompressorIn_bh6_83_107(0) <= heap_bh6_w14_13;
   Compressor_bh6_83: Compressor_14_3
      port map ( R => CompressorOut_bh6_83_83   ,
                 X0 => CompressorIn_bh6_83_106,
                 X1 => CompressorIn_bh6_83_107);
   heap_bh6_w13_14 <= CompressorOut_bh6_83_83(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w14_15 <= CompressorOut_bh6_83_83(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w15_16 <= CompressorOut_bh6_83_83(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_84_108 <= heap_bh6_w14_12 & heap_bh6_w14_11 & heap_bh6_w14_10 & heap_bh6_w14_9;
   CompressorIn_bh6_84_109(0) <= heap_bh6_w15_15;
   Compressor_bh6_84: Compressor_14_3
      port map ( R => CompressorOut_bh6_84_84   ,
                 X0 => CompressorIn_bh6_84_108,
                 X1 => CompressorIn_bh6_84_109);
   heap_bh6_w14_16 <= CompressorOut_bh6_84_84(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w15_17 <= CompressorOut_bh6_84_84(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w16_18 <= CompressorOut_bh6_84_84(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_85_110 <= heap_bh6_w34_13 & heap_bh6_w34_12 & heap_bh6_w34_11 & heap_bh6_w34_10;
   CompressorIn_bh6_85_111(0) <= heap_bh6_w35_0;
   Compressor_bh6_85: Compressor_14_3
      port map ( R => CompressorOut_bh6_85_85   ,
                 X0 => CompressorIn_bh6_85_110,
                 X1 => CompressorIn_bh6_85_111);
   heap_bh6_w34_16 <= CompressorOut_bh6_85_85(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w35_14 <= CompressorOut_bh6_85_85(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w36_11 <= CompressorOut_bh6_85_85(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_86_112 <= heap_bh6_w35_12 & heap_bh6_w35_11 & heap_bh6_w35_10 & heap_bh6_w35_9;
   CompressorIn_bh6_86_113(0) <= heap_bh6_w36_0;
   Compressor_bh6_86: Compressor_14_3
      port map ( R => CompressorOut_bh6_86_86   ,
                 X0 => CompressorIn_bh6_86_112,
                 X1 => CompressorIn_bh6_86_113);
   heap_bh6_w35_15 <= CompressorOut_bh6_86_86(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w36_12 <= CompressorOut_bh6_86_86(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w37_10 <= CompressorOut_bh6_86_86(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_87_114 <= heap_bh6_w36_10 & heap_bh6_w36_9 & heap_bh6_w36_8 & heap_bh6_w36_7;
   CompressorIn_bh6_87_115(0) <= heap_bh6_w37_0;
   Compressor_bh6_87: Compressor_14_3
      port map ( R => CompressorOut_bh6_87_87   ,
                 X0 => CompressorIn_bh6_87_114,
                 X1 => CompressorIn_bh6_87_115);
   heap_bh6_w36_13 <= CompressorOut_bh6_87_87(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w37_11 <= CompressorOut_bh6_87_87(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w38_10 <= CompressorOut_bh6_87_87(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_88_116 <= heap_bh6_w38_0 & heap_bh6_w38_9 & heap_bh6_w38_8 & heap_bh6_w38_7;
   CompressorIn_bh6_88_117(0) <= heap_bh6_w39_0;
   Compressor_bh6_88: Compressor_14_3
      port map ( R => CompressorOut_bh6_88_88   ,
                 X0 => CompressorIn_bh6_88_116,
                 X1 => CompressorIn_bh6_88_117);
   heap_bh6_w38_11 <= CompressorOut_bh6_88_88(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w39_8 <= CompressorOut_bh6_88_88(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w40_8 <= CompressorOut_bh6_88_88(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_89_118 <= heap_bh6_w42_1 & heap_bh6_w42_0 & heap_bh6_w42_4 & heap_bh6_w42_3;
   CompressorIn_bh6_89_119(0) <= heap_bh6_w43_4;
   Compressor_bh6_89: Compressor_14_3
      port map ( R => CompressorOut_bh6_89_89   ,
                 X0 => CompressorIn_bh6_89_118,
                 X1 => CompressorIn_bh6_89_119);
   heap_bh6_w42_5 <= CompressorOut_bh6_89_89(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w43_5 <= CompressorOut_bh6_89_89(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w44_4 <= CompressorOut_bh6_89_89(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_90_120 <= heap_bh6_w15_14 & heap_bh6_w15_13 & heap_bh6_w15_12 & heap_bh6_w15_11;
   Compressor_bh6_90: Compressor_4_3
      port map ( R => CompressorOut_bh6_90_90   ,
                 X0 => CompressorIn_bh6_90_120);
   heap_bh6_w15_18 <= CompressorOut_bh6_90_90(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w16_19 <= CompressorOut_bh6_90_90(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w17_19 <= CompressorOut_bh6_90_90(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_91_121 <= heap_bh6_w7_7 & heap_bh6_w7_6 & heap_bh6_w7_5;
   CompressorIn_bh6_91_122 <= heap_bh6_w8_7 & heap_bh6_w8_6;
   Compressor_bh6_91: Compressor_23_3
      port map ( R => CompressorOut_bh6_91_91   ,
                 X0 => CompressorIn_bh6_91_121,
                 X1 => CompressorIn_bh6_91_122);
   heap_bh6_w7_8 <= CompressorOut_bh6_91_91(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w8_8 <= CompressorOut_bh6_91_91(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w9_10 <= CompressorOut_bh6_91_91(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_92_123 <= heap_bh6_w39_7 & heap_bh6_w39_6 & heap_bh6_w39_5;
   CompressorIn_bh6_92_124 <= heap_bh6_w40_7 & heap_bh6_w40_6;
   Compressor_bh6_92: Compressor_23_3
      port map ( R => CompressorOut_bh6_92_92   ,
                 X0 => CompressorIn_bh6_92_123,
                 X1 => CompressorIn_bh6_92_124);
   heap_bh6_w39_9 <= CompressorOut_bh6_92_92(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w40_9 <= CompressorOut_bh6_92_92(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w41_8 <= CompressorOut_bh6_92_92(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_93_125 <= heap_bh6_w9_9 & heap_bh6_w9_8 & heap_bh6_w9_7;
   Compressor_bh6_93: Compressor_3_2
      port map ( R => CompressorOut_bh6_93_93   ,
                 X0 => CompressorIn_bh6_93_125);
   heap_bh6_w9_11 <= CompressorOut_bh6_93_93(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w10_11 <= CompressorOut_bh6_93_93(1); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_94_126 <= heap_bh6_w11_9 & heap_bh6_w11_8 & heap_bh6_w11_7;
   Compressor_bh6_94: Compressor_3_2
      port map ( R => CompressorOut_bh6_94_94   ,
                 X0 => CompressorIn_bh6_94_126);
   heap_bh6_w11_11 <= CompressorOut_bh6_94_94(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w12_15 <= CompressorOut_bh6_94_94(1); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_95_127 <= heap_bh6_w37_9 & heap_bh6_w37_8 & heap_bh6_w37_7;
   Compressor_bh6_95: Compressor_3_2
      port map ( R => CompressorOut_bh6_95_95   ,
                 X0 => CompressorIn_bh6_95_127);
   heap_bh6_w37_12 <= CompressorOut_bh6_95_95(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w38_12 <= CompressorOut_bh6_95_95(1); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_96_128 <= heap_bh6_w41_7 & heap_bh6_w41_6 & heap_bh6_w41_5;
   Compressor_bh6_96: Compressor_3_2
      port map ( R => CompressorOut_bh6_96_96   ,
                 X0 => CompressorIn_bh6_96_128);
   heap_bh6_w41_9 <= CompressorOut_bh6_96_96(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w42_6 <= CompressorOut_bh6_96_96(1); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_97_129 <= heap_bh6_w19_13 & heap_bh6_w19_21 & heap_bh6_w19_20 & heap_bh6_w19_19;
   CompressorIn_bh6_97_130(0) <= heap_bh6_w20_13;
   Compressor_bh6_97: Compressor_14_3
      port map ( R => CompressorOut_bh6_97_97   ,
                 X0 => CompressorIn_bh6_97_129,
                 X1 => CompressorIn_bh6_97_130);
   heap_bh6_w19_22 <= CompressorOut_bh6_97_97(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w20_22 <= CompressorOut_bh6_97_97(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w21_25 <= CompressorOut_bh6_97_97(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_98_131 <= heap_bh6_w21_15 & heap_bh6_w21_24 & heap_bh6_w21_23 & heap_bh6_w21_22;
   CompressorIn_bh6_98_132(0) <= heap_bh6_w22_16;
   Compressor_bh6_98: Compressor_14_3
      port map ( R => CompressorOut_bh6_98_98   ,
                 X0 => CompressorIn_bh6_98_131,
                 X1 => CompressorIn_bh6_98_132);
   heap_bh6_w21_26 <= CompressorOut_bh6_98_98(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w22_25 <= CompressorOut_bh6_98_98(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w23_26 <= CompressorOut_bh6_98_98(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_99_133 <= heap_bh6_w22_15 & heap_bh6_w22_24 & heap_bh6_w22_23 & heap_bh6_w22_22;
   CompressorIn_bh6_99_134(0) <= heap_bh6_w23_16;
   Compressor_bh6_99: Compressor_14_3
      port map ( R => CompressorOut_bh6_99_99   ,
                 X0 => CompressorIn_bh6_99_133,
                 X1 => CompressorIn_bh6_99_134);
   heap_bh6_w22_26 <= CompressorOut_bh6_99_99(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w23_27 <= CompressorOut_bh6_99_99(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w24_25 <= CompressorOut_bh6_99_99(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_100_135 <= heap_bh6_w23_15 & heap_bh6_w23_25 & heap_bh6_w23_24 & heap_bh6_w23_23;
   CompressorIn_bh6_100_136(0) <= heap_bh6_w24_16;
   Compressor_bh6_100: Compressor_14_3
      port map ( R => CompressorOut_bh6_100_100   ,
                 X0 => CompressorIn_bh6_100_135,
                 X1 => CompressorIn_bh6_100_136);
   heap_bh6_w23_28 <= CompressorOut_bh6_100_100(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w24_26 <= CompressorOut_bh6_100_100(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w25_26 <= CompressorOut_bh6_100_100(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_101_137 <= heap_bh6_w24_15 & heap_bh6_w24_24 & heap_bh6_w24_23 & heap_bh6_w24_22;
   CompressorIn_bh6_101_138(0) <= heap_bh6_w25_16;
   Compressor_bh6_101: Compressor_14_3
      port map ( R => CompressorOut_bh6_101_101   ,
                 X0 => CompressorIn_bh6_101_137,
                 X1 => CompressorIn_bh6_101_138);
   heap_bh6_w24_27 <= CompressorOut_bh6_101_101(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w25_27 <= CompressorOut_bh6_101_101(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w26_25 <= CompressorOut_bh6_101_101(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_102_139 <= heap_bh6_w25_15 & heap_bh6_w25_25 & heap_bh6_w25_24 & heap_bh6_w25_23;
   CompressorIn_bh6_102_140(0) <= heap_bh6_w26_16;
   Compressor_bh6_102: Compressor_14_3
      port map ( R => CompressorOut_bh6_102_102   ,
                 X0 => CompressorIn_bh6_102_139,
                 X1 => CompressorIn_bh6_102_140);
   heap_bh6_w25_28 <= CompressorOut_bh6_102_102(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w26_26 <= CompressorOut_bh6_102_102(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w27_23 <= CompressorOut_bh6_102_102(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_103_141 <= heap_bh6_w26_15 & heap_bh6_w26_24 & heap_bh6_w26_23 & heap_bh6_w26_22;
   CompressorIn_bh6_103_142(0) <= heap_bh6_w27_14;
   Compressor_bh6_103: Compressor_14_3
      port map ( R => CompressorOut_bh6_103_103   ,
                 X0 => CompressorIn_bh6_103_141,
                 X1 => CompressorIn_bh6_103_142);
   heap_bh6_w26_27 <= CompressorOut_bh6_103_103(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w27_24 <= CompressorOut_bh6_103_103(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w28_22 <= CompressorOut_bh6_103_103(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_104_143 <= heap_bh6_w27_13 & heap_bh6_w27_22 & heap_bh6_w27_21 & heap_bh6_w27_20;
   CompressorIn_bh6_104_144(0) <= heap_bh6_w28_13;
   Compressor_bh6_104: Compressor_14_3
      port map ( R => CompressorOut_bh6_104_104   ,
                 X0 => CompressorIn_bh6_104_143,
                 X1 => CompressorIn_bh6_104_144);
   heap_bh6_w27_25 <= CompressorOut_bh6_104_104(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w28_23 <= CompressorOut_bh6_104_104(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w29_22 <= CompressorOut_bh6_104_104(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_105_145 <= heap_bh6_w29_13 & heap_bh6_w29_21 & heap_bh6_w29_20 & heap_bh6_w29_19;
   CompressorIn_bh6_105_146(0) <= heap_bh6_w30_11;
   Compressor_bh6_105: Compressor_14_3
      port map ( R => CompressorOut_bh6_105_105   ,
                 X0 => CompressorIn_bh6_105_145,
                 X1 => CompressorIn_bh6_105_146);
   heap_bh6_w29_23 <= CompressorOut_bh6_105_105(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w30_20 <= CompressorOut_bh6_105_105(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w31_20 <= CompressorOut_bh6_105_105(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_106_147 <= heap_bh6_w33_9 & heap_bh6_w33_16 & heap_bh6_w33_15 & heap_bh6_w33_14;
   CompressorIn_bh6_106_148(0) <= heap_bh6_w34_9;
   Compressor_bh6_106: Compressor_14_3
      port map ( R => CompressorOut_bh6_106_106   ,
                 X0 => CompressorIn_bh6_106_147,
                 X1 => CompressorIn_bh6_106_148);
   heap_bh6_w33_17 <= CompressorOut_bh6_106_106(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w34_17 <= CompressorOut_bh6_106_106(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w35_16 <= CompressorOut_bh6_106_106(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_107_149 <= heap_bh6_w12_15 & heap_bh6_w12_14 & heap_bh6_w12_13;
   CompressorIn_bh6_107_150 <= heap_bh6_w13_14 & heap_bh6_w13_13;
   Compressor_bh6_107: Compressor_23_3
      port map ( R => CompressorOut_bh6_107_107   ,
                 X0 => CompressorIn_bh6_107_149,
                 X1 => CompressorIn_bh6_107_150);
   heap_bh6_w12_16 <= CompressorOut_bh6_107_107(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w13_15 <= CompressorOut_bh6_107_107(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w14_17 <= CompressorOut_bh6_107_107(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_108_151 <= heap_bh6_w14_16 & heap_bh6_w14_15 & heap_bh6_w14_14;
   CompressorIn_bh6_108_152 <= heap_bh6_w15_18 & heap_bh6_w15_17;
   Compressor_bh6_108: Compressor_23_3
      port map ( R => CompressorOut_bh6_108_108   ,
                 X0 => CompressorIn_bh6_108_151,
                 X1 => CompressorIn_bh6_108_152);
   heap_bh6_w14_18 <= CompressorOut_bh6_108_108(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w15_19 <= CompressorOut_bh6_108_108(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w16_20 <= CompressorOut_bh6_108_108(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_109_153 <= heap_bh6_w16_19 & heap_bh6_w16_18 & heap_bh6_w16_17;
   CompressorIn_bh6_109_154 <= heap_bh6_w17_19 & heap_bh6_w17_18;
   Compressor_bh6_109: Compressor_23_3
      port map ( R => CompressorOut_bh6_109_109   ,
                 X0 => CompressorIn_bh6_109_153,
                 X1 => CompressorIn_bh6_109_154);
   heap_bh6_w16_21 <= CompressorOut_bh6_109_109(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w17_20 <= CompressorOut_bh6_109_109(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w18_22 <= CompressorOut_bh6_109_109(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_110_155 <= heap_bh6_w30_19 & heap_bh6_w30_18 & heap_bh6_w30_17;
   CompressorIn_bh6_110_156 <= heap_bh6_w31_19 & heap_bh6_w31_18;
   Compressor_bh6_110: Compressor_23_3
      port map ( R => CompressorOut_bh6_110_110   ,
                 X0 => CompressorIn_bh6_110_155,
                 X1 => CompressorIn_bh6_110_156);
   heap_bh6_w30_21 <= CompressorOut_bh6_110_110(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w31_21 <= CompressorOut_bh6_110_110(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w32_20 <= CompressorOut_bh6_110_110(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_111_157 <= heap_bh6_w34_16 & heap_bh6_w34_15 & heap_bh6_w34_14;
   CompressorIn_bh6_111_158 <= heap_bh6_w35_15 & heap_bh6_w35_14;
   Compressor_bh6_111: Compressor_23_3
      port map ( R => CompressorOut_bh6_111_111   ,
                 X0 => CompressorIn_bh6_111_157,
                 X1 => CompressorIn_bh6_111_158);
   heap_bh6_w34_18 <= CompressorOut_bh6_111_111(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w35_17 <= CompressorOut_bh6_111_111(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w36_14 <= CompressorOut_bh6_111_111(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_112_159 <= heap_bh6_w36_13 & heap_bh6_w36_12 & heap_bh6_w36_11;
   CompressorIn_bh6_112_160 <= heap_bh6_w37_12 & heap_bh6_w37_11;
   Compressor_bh6_112: Compressor_23_3
      port map ( R => CompressorOut_bh6_112_112   ,
                 X0 => CompressorIn_bh6_112_159,
                 X1 => CompressorIn_bh6_112_160);
   heap_bh6_w36_15 <= CompressorOut_bh6_112_112(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w37_13 <= CompressorOut_bh6_112_112(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w38_13 <= CompressorOut_bh6_112_112(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_113_161 <= heap_bh6_w38_12 & heap_bh6_w38_11 & heap_bh6_w38_10;
   CompressorIn_bh6_113_162 <= heap_bh6_w39_9 & heap_bh6_w39_8;
   Compressor_bh6_113: Compressor_23_3
      port map ( R => CompressorOut_bh6_113_113   ,
                 X0 => CompressorIn_bh6_113_161,
                 X1 => CompressorIn_bh6_113_162);
   heap_bh6_w38_14 <= CompressorOut_bh6_113_113(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w39_10 <= CompressorOut_bh6_113_113(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w40_10 <= CompressorOut_bh6_113_113(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_114_163 <= heap_bh6_w40_5 & heap_bh6_w40_9 & heap_bh6_w40_8;
   CompressorIn_bh6_114_164 <= heap_bh6_w41_9 & heap_bh6_w41_8;
   Compressor_bh6_114: Compressor_23_3
      port map ( R => CompressorOut_bh6_114_114   ,
                 X0 => CompressorIn_bh6_114_163,
                 X1 => CompressorIn_bh6_114_164);
   heap_bh6_w40_11 <= CompressorOut_bh6_114_114(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w41_10 <= CompressorOut_bh6_114_114(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w42_7 <= CompressorOut_bh6_114_114(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_115_165 <= heap_bh6_w44_0 & heap_bh6_w44_3 & heap_bh6_w44_4;
   CompressorIn_bh6_115_166 <= heap_bh6_w45_0 & heap_bh6_w45_1;
   Compressor_bh6_115: Compressor_23_3
      port map ( R => CompressorOut_bh6_115_115   ,
                 X0 => CompressorIn_bh6_115_165,
                 X1 => CompressorIn_bh6_115_166);
   heap_bh6_w44_5 <= CompressorOut_bh6_115_115(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w45_2 <= CompressorOut_bh6_115_115(1); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w46_1 <= CompressorOut_bh6_115_115(2); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_116_167 <= heap_bh6_w18_21 & heap_bh6_w18_20 & heap_bh6_w18_19;
   Compressor_bh6_116: Compressor_3_2
      port map ( R => CompressorOut_bh6_116_116   ,
                 X0 => CompressorIn_bh6_116_167);
   heap_bh6_w18_23 <= CompressorOut_bh6_116_116(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w19_23 <= CompressorOut_bh6_116_116(1); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_117_168 <= heap_bh6_w20_21 & heap_bh6_w20_20 & heap_bh6_w20_19;
   Compressor_bh6_117: Compressor_3_2
      port map ( R => CompressorOut_bh6_117_117   ,
                 X0 => CompressorIn_bh6_117_168);
   heap_bh6_w20_23 <= CompressorOut_bh6_117_117(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w21_27 <= CompressorOut_bh6_117_117(1); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_118_169 <= heap_bh6_w28_21 & heap_bh6_w28_20 & heap_bh6_w28_19;
   Compressor_bh6_118: Compressor_3_2
      port map ( R => CompressorOut_bh6_118_118   ,
                 X0 => CompressorIn_bh6_118_169);
   heap_bh6_w28_24 <= CompressorOut_bh6_118_118(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w29_24 <= CompressorOut_bh6_118_118(1); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_119_170 <= heap_bh6_w32_19 & heap_bh6_w32_18 & heap_bh6_w32_17;
   Compressor_bh6_119: Compressor_3_2
      port map ( R => CompressorOut_bh6_119_119   ,
                 X0 => CompressorIn_bh6_119_170);
   heap_bh6_w32_21 <= CompressorOut_bh6_119_119(0); -- cycle= 0 cp= 2.18392e-09
   heap_bh6_w33_18 <= CompressorOut_bh6_119_119(1); -- cycle= 0 cp= 2.18392e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_120_171 <= heap_bh6_w21_27 & heap_bh6_w21_26 & heap_bh6_w21_25;
   CompressorIn_bh6_120_172 <= heap_bh6_w22_26 & heap_bh6_w22_25;
   Compressor_bh6_120: Compressor_23_3
      port map ( R => CompressorOut_bh6_120_120   ,
                 X0 => CompressorIn_bh6_120_171,
                 X1 => CompressorIn_bh6_120_172);
   heap_bh6_w21_28 <= CompressorOut_bh6_120_120(0); -- cycle= 0 cp= 2.71464e-09
   heap_bh6_w22_27 <= CompressorOut_bh6_120_120(1); -- cycle= 0 cp= 2.71464e-09
   heap_bh6_w23_29 <= CompressorOut_bh6_120_120(2); -- cycle= 0 cp= 2.71464e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_121_173 <= heap_bh6_w23_28 & heap_bh6_w23_27 & heap_bh6_w23_26;
   CompressorIn_bh6_121_174 <= heap_bh6_w24_27 & heap_bh6_w24_26;
   Compressor_bh6_121: Compressor_23_3
      port map ( R => CompressorOut_bh6_121_121   ,
                 X0 => CompressorIn_bh6_121_173,
                 X1 => CompressorIn_bh6_121_174);
   heap_bh6_w23_30 <= CompressorOut_bh6_121_121(0); -- cycle= 0 cp= 2.71464e-09
   heap_bh6_w24_28 <= CompressorOut_bh6_121_121(1); -- cycle= 0 cp= 2.71464e-09
   heap_bh6_w25_29 <= CompressorOut_bh6_121_121(2); -- cycle= 0 cp= 2.71464e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_122_175 <= heap_bh6_w25_28 & heap_bh6_w25_27 & heap_bh6_w25_26;
   CompressorIn_bh6_122_176 <= heap_bh6_w26_27 & heap_bh6_w26_26;
   Compressor_bh6_122: Compressor_23_3
      port map ( R => CompressorOut_bh6_122_122   ,
                 X0 => CompressorIn_bh6_122_175,
                 X1 => CompressorIn_bh6_122_176);
   heap_bh6_w25_30 <= CompressorOut_bh6_122_122(0); -- cycle= 0 cp= 2.71464e-09
   heap_bh6_w26_28 <= CompressorOut_bh6_122_122(1); -- cycle= 0 cp= 2.71464e-09
   heap_bh6_w27_26 <= CompressorOut_bh6_122_122(2); -- cycle= 0 cp= 2.71464e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_123_177 <= heap_bh6_w27_25 & heap_bh6_w27_24 & heap_bh6_w27_23;
   CompressorIn_bh6_123_178 <= heap_bh6_w28_24 & heap_bh6_w28_23;
   Compressor_bh6_123: Compressor_23_3
      port map ( R => CompressorOut_bh6_123_123   ,
                 X0 => CompressorIn_bh6_123_177,
                 X1 => CompressorIn_bh6_123_178);
   heap_bh6_w27_27 <= CompressorOut_bh6_123_123(0); -- cycle= 0 cp= 2.71464e-09
   heap_bh6_w28_25 <= CompressorOut_bh6_123_123(1); -- cycle= 0 cp= 2.71464e-09
   heap_bh6_w29_25 <= CompressorOut_bh6_123_123(2); -- cycle= 0 cp= 2.71464e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_124_179 <= heap_bh6_w29_24 & heap_bh6_w29_23 & heap_bh6_w29_22;
   CompressorIn_bh6_124_180 <= heap_bh6_w30_21 & heap_bh6_w30_20;
   Compressor_bh6_124: Compressor_23_3
      port map ( R => CompressorOut_bh6_124_124   ,
                 X0 => CompressorIn_bh6_124_179,
                 X1 => CompressorIn_bh6_124_180);
   heap_bh6_w29_26 <= CompressorOut_bh6_124_124(0); -- cycle= 0 cp= 2.71464e-09
   heap_bh6_w30_22 <= CompressorOut_bh6_124_124(1); -- cycle= 0 cp= 2.71464e-09
   heap_bh6_w31_22 <= CompressorOut_bh6_124_124(2); -- cycle= 0 cp= 2.71464e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_125_181 <= heap_bh6_w31_17 & heap_bh6_w31_21 & heap_bh6_w31_20;
   CompressorIn_bh6_125_182 <= heap_bh6_w32_21 & heap_bh6_w32_20;
   Compressor_bh6_125: Compressor_23_3
      port map ( R => CompressorOut_bh6_125_125   ,
                 X0 => CompressorIn_bh6_125_181,
                 X1 => CompressorIn_bh6_125_182);
   heap_bh6_w31_23 <= CompressorOut_bh6_125_125(0); -- cycle= 0 cp= 2.71464e-09
   heap_bh6_w32_22 <= CompressorOut_bh6_125_125(1); -- cycle= 0 cp= 2.71464e-09
   heap_bh6_w33_19 <= CompressorOut_bh6_125_125(2); -- cycle= 0 cp= 2.71464e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_126_183 <= heap_bh6_w35_13 & heap_bh6_w35_17 & heap_bh6_w35_16;
   CompressorIn_bh6_126_184 <= heap_bh6_w36_15 & heap_bh6_w36_14;
   Compressor_bh6_126: Compressor_23_3
      port map ( R => CompressorOut_bh6_126_126   ,
                 X0 => CompressorIn_bh6_126_183,
                 X1 => CompressorIn_bh6_126_184);
   heap_bh6_w35_18 <= CompressorOut_bh6_126_126(0); -- cycle= 0 cp= 2.71464e-09
   heap_bh6_w36_16 <= CompressorOut_bh6_126_126(1); -- cycle= 0 cp= 2.71464e-09
   heap_bh6_w37_14 <= CompressorOut_bh6_126_126(2); -- cycle= 0 cp= 2.71464e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_127_185 <= heap_bh6_w42_6 & heap_bh6_w42_5 & heap_bh6_w42_7;
   CompressorIn_bh6_127_186 <= heap_bh6_w43_3 & heap_bh6_w43_5;
   Compressor_bh6_127: Compressor_23_3
      port map ( R => CompressorOut_bh6_127_127   ,
                 X0 => CompressorIn_bh6_127_185,
                 X1 => CompressorIn_bh6_127_186);
   heap_bh6_w42_8 <= CompressorOut_bh6_127_127(0); -- cycle= 0 cp= 2.71464e-09
   heap_bh6_w43_6 <= CompressorOut_bh6_127_127(1); -- cycle= 0 cp= 2.71464e-09
   heap_bh6_w44_6 <= CompressorOut_bh6_127_127(2); -- cycle= 0 cp= 2.71464e-09

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_128_187 <= heap_bh6_w33_18_d1 & heap_bh6_w33_17_d1 & heap_bh6_w33_19_d1;
   CompressorIn_bh6_128_188 <= heap_bh6_w34_18_d1 & heap_bh6_w34_17_d1;
   Compressor_bh6_128: Compressor_23_3
      port map ( R => CompressorOut_bh6_128_128   ,
                 X0 => CompressorIn_bh6_128_187,
                 X1 => CompressorIn_bh6_128_188);
   heap_bh6_w33_20 <= CompressorOut_bh6_128_128(0); -- cycle= 1 cp= 0
   heap_bh6_w34_19 <= CompressorOut_bh6_128_128(1); -- cycle= 1 cp= 0
   heap_bh6_w35_19 <= CompressorOut_bh6_128_128(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_129_189 <= heap_bh6_w37_10_d1 & heap_bh6_w37_13_d1 & heap_bh6_w37_14_d1;
   CompressorIn_bh6_129_190 <= heap_bh6_w38_14_d1 & heap_bh6_w38_13_d1;
   Compressor_bh6_129: Compressor_23_3
      port map ( R => CompressorOut_bh6_129_129   ,
                 X0 => CompressorIn_bh6_129_189,
                 X1 => CompressorIn_bh6_129_190);
   heap_bh6_w37_15 <= CompressorOut_bh6_129_129(0); -- cycle= 1 cp= 0
   heap_bh6_w38_15 <= CompressorOut_bh6_129_129(1); -- cycle= 1 cp= 0
   heap_bh6_w39_11 <= CompressorOut_bh6_129_129(2); -- cycle= 1 cp= 0
   ----------------Synchro barrier, entering cycle 1----------------
   finalAdderIn0_bh6 <= "0" & heap_bh6_w47_0_d1 & heap_bh6_w46_0_d1 & heap_bh6_w45_2_d1 & heap_bh6_w44_5_d1 & heap_bh6_w43_6_d1 & heap_bh6_w42_8_d1 & heap_bh6_w41_10_d1 & heap_bh6_w40_11_d1 & heap_bh6_w39_10_d1 & heap_bh6_w38_15 & heap_bh6_w37_15 & heap_bh6_w36_16_d1 & heap_bh6_w35_18_d1 & heap_bh6_w34_19 & heap_bh6_w33_20 & heap_bh6_w32_22_d1 & heap_bh6_w31_23_d1 & heap_bh6_w30_22_d1 & heap_bh6_w29_26_d1 & heap_bh6_w28_22_d1 & heap_bh6_w27_27_d1 & heap_bh6_w26_25_d1 & heap_bh6_w25_30_d1 & heap_bh6_w24_25_d1 & heap_bh6_w23_30_d1 & heap_bh6_w22_27_d1 & heap_bh6_w21_28_d1 & heap_bh6_w20_23_d1 & heap_bh6_w19_23_d1 & heap_bh6_w18_23_d1 & heap_bh6_w17_17_d1 & heap_bh6_w16_21_d1 & heap_bh6_w15_16_d1 & heap_bh6_w14_18_d1 & heap_bh6_w13_15_d1 & heap_bh6_w12_16_d1 & heap_bh6_w11_11_d1 & heap_bh6_w10_11_d1 & heap_bh6_w9_11_d1 & heap_bh6_w8_5_d1 & heap_bh6_w7_8_d1 & heap_bh6_w6_6_d1 & heap_bh6_w5_4_d1 & heap_bh6_w4_0_d1;
   finalAdderIn1_bh6 <= "0" & '0' & heap_bh6_w46_1_d1 & '0' & heap_bh6_w44_6_d1 & '0' & '0' & '0' & heap_bh6_w40_10_d1 & heap_bh6_w39_11 & '0' & '0' & '0' & heap_bh6_w35_19 & '0' & '0' & '0' & heap_bh6_w31_22_d1 & '0' & heap_bh6_w29_25_d1 & heap_bh6_w28_25_d1 & heap_bh6_w27_26_d1 & heap_bh6_w26_28_d1 & heap_bh6_w25_29_d1 & heap_bh6_w24_28_d1 & heap_bh6_w23_29_d1 & '0' & '0' & heap_bh6_w20_22_d1 & heap_bh6_w19_22_d1 & heap_bh6_w18_22_d1 & heap_bh6_w17_20_d1 & heap_bh6_w16_20_d1 & heap_bh6_w15_19_d1 & heap_bh6_w14_17_d1 & '0' & '0' & heap_bh6_w11_10_d1 & heap_bh6_w10_10_d1 & heap_bh6_w9_10_d1 & heap_bh6_w8_8_d1 & '0' & heap_bh6_w6_5_d1 & heap_bh6_w5_3_d1 & heap_bh6_w4_3_d1;
   finalAdderCin_bh6 <= '0';
   Adder_final6_0: IntAdder_45_f300_uid405  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => finalAdderCin_bh6,
                 R => finalAdderOut_bh6   ,
                 X => finalAdderIn0_bh6,
                 Y => finalAdderIn1_bh6);
   -- concatenate all the compressed chunks
   CompressionResult6 <= finalAdderOut_bh6 & tempR_bh6_1_d1 & tempR_bh6_0_d1;
   -- End of code generated by BitHeap::generateCompressorVHDL
   R <= CompressionResult6(47 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_33_f300_uid415
--                     (IntAdderClassical_33_F300_uid417)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_33_f300_uid415 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(32 downto 0);
          Y : in  std_logic_vector(32 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(32 downto 0)   );
end entity;

architecture arch of IntAdder_33_f300_uid415 is
signal X_d1 :  std_logic_vector(32 downto 0);
signal Y_d1 :  std_logic_vector(32 downto 0);
signal Cin_d1 :  std_logic;
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            X_d1 <=  X;
            Y_d1 <=  Y;
            Cin_d1 <=  Cin;
         end if;
      end process;
   --Classical
   ----------------Synchro barrier, entering cycle 1----------------
    R <= X_d1 + Y_d1 + Cin_d1;
end architecture;

--------------------------------------------------------------------------------
--                                  fp_mult
--                     (FPMult_8_23_8_23_8_23_F300_uid2)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin 2008-2011
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity fp_mult is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          Y : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of fp_mult is
   component IntMultiplier_LogicOnly_24_24_48_unsigned_F300_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             Y : in  std_logic_vector(23 downto 0);
             R : out  std_logic_vector(47 downto 0)   );
   end component;

   component IntAdder_33_f300_uid415 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(32 downto 0);
             Y : in  std_logic_vector(32 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(32 downto 0)   );
   end component;

signal sign, sign_d1, sign_d2 :  std_logic;
signal expX :  std_logic_vector(7 downto 0);
signal expY :  std_logic_vector(7 downto 0);
signal expSumPreSub :  std_logic_vector(9 downto 0);
signal bias :  std_logic_vector(9 downto 0);
signal expSum, expSum_d1 :  std_logic_vector(9 downto 0);
signal sigX :  std_logic_vector(23 downto 0);
signal sigY :  std_logic_vector(23 downto 0);
signal sigProd :  std_logic_vector(47 downto 0);
signal excSel :  std_logic_vector(3 downto 0);
signal exc, exc_d1, exc_d2 :  std_logic_vector(1 downto 0);
signal norm :  std_logic;
signal expPostNorm :  std_logic_vector(9 downto 0);
signal sigProdExt :  std_logic_vector(47 downto 0);
signal expSig :  std_logic_vector(32 downto 0);
signal sticky :  std_logic;
signal guard :  std_logic;
signal round :  std_logic;
signal expSigPostRound :  std_logic_vector(32 downto 0);
signal excPostNorm :  std_logic_vector(1 downto 0);
signal finalExc :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            sign_d1 <=  sign;
            sign_d2 <=  sign_d1;
            expSum_d1 <=  expSum;
            exc_d1 <=  exc;
            exc_d2 <=  exc_d1;
         end if;
      end process;
   sign <= X(31) xor Y(31);
   expX <= X(30 downto 23);
   expY <= Y(30 downto 23);
   expSumPreSub <= ("00" & expX) + ("00" & expY);
   bias <= CONV_STD_LOGIC_VECTOR(127,10);
   expSum <= expSumPreSub - bias;
   ----------------Synchro barrier, entering cycle 0----------------
   sigX <= "1" & X(22 downto 0);
   sigY <= "1" & Y(22 downto 0);
   SignificandMultiplication: IntMultiplier_LogicOnly_24_24_48_unsigned_F300_uid4  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => sigProd,
                 X => sigX,
                 Y => sigY);
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 0----------------
   excSel <= X(33 downto 32) & Y(33 downto 32);
   with excSel select 
   exc <= "00" when  "0000" | "0001" | "0100", 
          "01" when "0101",
          "10" when "0110" | "1001" | "1010" ,
          "11" when others;
   ----------------Synchro barrier, entering cycle 1----------------
   norm <= sigProd(47);
   -- exponent update
   expPostNorm <= expSum_d1 + ("000000000" & norm);
   ----------------Synchro barrier, entering cycle 1----------------
   -- significand normalization shift
   sigProdExt <= sigProd(46 downto 0) & "0" when norm='1' else
                         sigProd(45 downto 0) & "00";
   expSig <= expPostNorm & sigProdExt(47 downto 25);
   sticky <= sigProdExt(24);
   guard <= '0' when sigProdExt(23 downto 0)="000000000000000000000000" else '1';
   round <= sticky and ( (guard and not(sigProdExt(25))) or (sigProdExt(25) ))  ;
   RoundingAdder: IntAdder_33_f300_uid415  -- pipelineDepth=1 maxInDelay=2.80116e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => round,
                 R => expSigPostRound   ,
                 X => expSig,
                 Y => "000000000000000000000000000000000");
   ----------------Synchro barrier, entering cycle 2----------------
   with expSigPostRound(32 downto 31) select
   excPostNorm <=  "01"  when  "00",
                               "10"             when "01", 
                               "00"             when "11"|"10",
                               "11"             when others;
   with exc_d2 select 
   finalExc <= exc_d2 when  "11"|"10"|"00",
                       excPostNorm when others; 
   R <= finalExc & sign_d2 & expSigPostRound(30 downto 0);
end architecture;

