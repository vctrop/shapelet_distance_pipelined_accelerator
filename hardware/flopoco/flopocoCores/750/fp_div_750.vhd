--------------------------------------------------------------------------------
--                       SelFunctionTable_r8_F750_uid4
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Maxime Christ, Florent de Dinechin (2015)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
library work;
entity SelFunctionTable_r8_F750_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(6 downto 0);
          Y : out  std_logic_vector(3 downto 0)   );
end entity;

architecture arch of SelFunctionTable_r8_F750_uid4 is
signal TableOut :  std_logic_vector(3 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
  with X select TableOut <= 
   "0000" when "0000000",
   "0000" when "0000001",
   "0000" when "0000010",
   "0000" when "0000011",
   "0001" when "0000100",
   "0001" when "0000101",
   "0001" when "0000110",
   "0001" when "0000111",
   "0001" when "0001000",
   "0001" when "0001001",
   "0001" when "0001010",
   "0001" when "0001011",
   "0010" when "0001100",
   "0010" when "0001101",
   "0010" when "0001110",
   "0010" when "0001111",
   "0011" when "0010000",
   "0011" when "0010001",
   "0010" when "0010010",
   "0010" when "0010011",
   "0011" when "0010100",
   "0011" when "0010101",
   "0011" when "0010110",
   "0011" when "0010111",
   "0100" when "0011000",
   "0100" when "0011001",
   "0011" when "0011010",
   "0011" when "0011011",
   "0101" when "0011100",
   "0100" when "0011101",
   "0100" when "0011110",
   "0100" when "0011111",
   "0101" when "0100000",
   "0101" when "0100001",
   "0101" when "0100010",
   "0100" when "0100011",
   "0110" when "0100100",
   "0110" when "0100101",
   "0101" when "0100110",
   "0101" when "0100111",
   "0111" when "0101000",
   "0110" when "0101001",
   "0110" when "0101010",
   "0101" when "0101011",
   "0111" when "0101100",
   "0111" when "0101101",
   "0110" when "0101110",
   "0110" when "0101111",
   "0111" when "0110000",
   "0111" when "0110001",
   "0111" when "0110010",
   "0110" when "0110011",
   "0111" when "0110100",
   "0111" when "0110101",
   "0111" when "0110110",
   "0111" when "0110111",
   "0111" when "0111000",
   "0111" when "0111001",
   "0111" when "0111010",
   "0111" when "0111011",
   "0111" when "0111100",
   "0111" when "0111101",
   "0111" when "0111110",
   "0111" when "0111111",
   "1001" when "1000000",
   "1001" when "1000001",
   "1001" when "1000010",
   "1001" when "1000011",
   "1001" when "1000100",
   "1001" when "1000101",
   "1001" when "1000110",
   "1001" when "1000111",
   "1001" when "1001000",
   "1001" when "1001001",
   "1001" when "1001010",
   "1001" when "1001011",
   "1001" when "1001100",
   "1001" when "1001101",
   "1001" when "1001110",
   "1001" when "1001111",
   "1001" when "1010000",
   "1001" when "1010001",
   "1010" when "1010010",
   "1010" when "1010011",
   "1001" when "1010100",
   "1010" when "1010101",
   "1010" when "1010110",
   "1010" when "1010111",
   "1010" when "1011000",
   "1010" when "1011001",
   "1011" when "1011010",
   "1011" when "1011011",
   "1011" when "1011100",
   "1011" when "1011101",
   "1011" when "1011110",
   "1011" when "1011111",
   "1011" when "1100000",
   "1011" when "1100001",
   "1100" when "1100010",
   "1100" when "1100011",
   "1100" when "1100100",
   "1100" when "1100101",
   "1100" when "1100110",
   "1100" when "1100111",
   "1100" when "1101000",
   "1101" when "1101001",
   "1101" when "1101010",
   "1101" when "1101011",
   "1101" when "1101100",
   "1101" when "1101101",
   "1101" when "1101110",
   "1101" when "1101111",
   "1110" when "1110000",
   "1110" when "1110001",
   "1110" when "1110010",
   "1110" when "1110011",
   "1110" when "1110100",
   "1110" when "1110101",
   "1110" when "1110110",
   "1110" when "1110111",
   "1111" when "1111000",
   "1111" when "1111001",
   "1111" when "1111010",
   "1111" when "1111011",
   "1111" when "1111100",
   "1111" when "1111101",
   "1111" when "1111110",
   "1111" when "1111111",
   "----" when others;
    Y <= TableOut;
end architecture;

--------------------------------------------------------------------------------
--                                   fp_div
--                           (FPDiv_8_23_F750_uid2)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Maxime Christ, Florent de Dinechin (2015)
--------------------------------------------------------------------------------
-- Pipeline depth: 23 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity fp_div is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          Y : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of fp_div is
   component SelFunctionTable_r8_F750_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(6 downto 0);
             Y : out  std_logic_vector(3 downto 0)   );
   end component;

signal partialFX, partialFX_d1 :  std_logic_vector(23 downto 0);
signal partialFY, partialFY_d1 :  std_logic_vector(23 downto 0);
signal expR0, expR0_d1, expR0_d2, expR0_d3, expR0_d4, expR0_d5, expR0_d6, expR0_d7, expR0_d8, expR0_d9, expR0_d10, expR0_d11, expR0_d12, expR0_d13, expR0_d14, expR0_d15, expR0_d16, expR0_d17, expR0_d18, expR0_d19, expR0_d20, expR0_d21, expR0_d22 :  std_logic_vector(9 downto 0);
signal sR, sR_d1, sR_d2, sR_d3, sR_d4, sR_d5, sR_d6, sR_d7, sR_d8, sR_d9, sR_d10, sR_d11, sR_d12, sR_d13, sR_d14, sR_d15, sR_d16, sR_d17, sR_d18, sR_d19, sR_d20, sR_d21, sR_d22, sR_d23 :  std_logic;
signal exnXY :  std_logic_vector(3 downto 0);
signal exnR0, exnR0_d1, exnR0_d2, exnR0_d3, exnR0_d4, exnR0_d5, exnR0_d6, exnR0_d7, exnR0_d8, exnR0_d9, exnR0_d10, exnR0_d11, exnR0_d12, exnR0_d13, exnR0_d14, exnR0_d15, exnR0_d16, exnR0_d17, exnR0_d18, exnR0_d19, exnR0_d20, exnR0_d21, exnR0_d22, exnR0_d23 :  std_logic_vector(1 downto 0);
signal fY, fY_d1, fY_d2, fY_d3, fY_d4, fY_d5, fY_d6, fY_d7, fY_d8, fY_d9, fY_d10, fY_d11, fY_d12, fY_d13, fY_d14, fY_d15, fY_d16, fY_d17, fY_d18 :  std_logic_vector(25 downto 0);
signal fX :  std_logic_vector(26 downto 0);
signal w9, w9_d1, w9_d2 :  std_logic_vector(28 downto 0);
signal sel9 :  std_logic_vector(6 downto 0);
signal q9, q9_d1, q9_d2, q9_d3, q9_d4, q9_d5, q9_d6, q9_d7, q9_d8, q9_d9, q9_d10, q9_d11, q9_d12, q9_d13, q9_d14, q9_d15, q9_d16, q9_d17, q9_d18 :  std_logic_vector(3 downto 0);
signal w9pad :  std_logic_vector(29 downto 0);
signal w8fulla :  std_logic_vector(29 downto 0);
signal fYdec8 :  std_logic_vector(29 downto 0);
signal w8full :  std_logic_vector(29 downto 0);
signal w8, w8_d1, w8_d2 :  std_logic_vector(28 downto 0);
signal sel8 :  std_logic_vector(6 downto 0);
signal q8, q8_d1, q8_d2, q8_d3, q8_d4, q8_d5, q8_d6, q8_d7, q8_d8, q8_d9, q8_d10, q8_d11, q8_d12, q8_d13, q8_d14, q8_d15, q8_d16 :  std_logic_vector(3 downto 0);
signal w8pad :  std_logic_vector(29 downto 0);
signal w7fulla :  std_logic_vector(29 downto 0);
signal fYdec7 :  std_logic_vector(29 downto 0);
signal w7full :  std_logic_vector(29 downto 0);
signal w7, w7_d1, w7_d2 :  std_logic_vector(28 downto 0);
signal sel7 :  std_logic_vector(6 downto 0);
signal q7, q7_d1, q7_d2, q7_d3, q7_d4, q7_d5, q7_d6, q7_d7, q7_d8, q7_d9, q7_d10, q7_d11, q7_d12, q7_d13, q7_d14 :  std_logic_vector(3 downto 0);
signal w7pad :  std_logic_vector(29 downto 0);
signal w6fulla :  std_logic_vector(29 downto 0);
signal fYdec6 :  std_logic_vector(29 downto 0);
signal w6full :  std_logic_vector(29 downto 0);
signal w6, w6_d1, w6_d2 :  std_logic_vector(28 downto 0);
signal sel6 :  std_logic_vector(6 downto 0);
signal q6, q6_d1, q6_d2, q6_d3, q6_d4, q6_d5, q6_d6, q6_d7, q6_d8, q6_d9, q6_d10, q6_d11, q6_d12 :  std_logic_vector(3 downto 0);
signal w6pad :  std_logic_vector(29 downto 0);
signal w5fulla :  std_logic_vector(29 downto 0);
signal fYdec5 :  std_logic_vector(29 downto 0);
signal w5full :  std_logic_vector(29 downto 0);
signal w5, w5_d1, w5_d2 :  std_logic_vector(28 downto 0);
signal sel5 :  std_logic_vector(6 downto 0);
signal q5, q5_d1, q5_d2, q5_d3, q5_d4, q5_d5, q5_d6, q5_d7, q5_d8, q5_d9, q5_d10 :  std_logic_vector(3 downto 0);
signal w5pad :  std_logic_vector(29 downto 0);
signal w4fulla :  std_logic_vector(29 downto 0);
signal fYdec4 :  std_logic_vector(29 downto 0);
signal w4full :  std_logic_vector(29 downto 0);
signal w4, w4_d1, w4_d2 :  std_logic_vector(28 downto 0);
signal sel4 :  std_logic_vector(6 downto 0);
signal q4, q4_d1, q4_d2, q4_d3, q4_d4, q4_d5, q4_d6, q4_d7, q4_d8 :  std_logic_vector(3 downto 0);
signal w4pad :  std_logic_vector(29 downto 0);
signal w3fulla :  std_logic_vector(29 downto 0);
signal fYdec3 :  std_logic_vector(29 downto 0);
signal w3full :  std_logic_vector(29 downto 0);
signal w3, w3_d1, w3_d2 :  std_logic_vector(28 downto 0);
signal sel3 :  std_logic_vector(6 downto 0);
signal q3, q3_d1, q3_d2, q3_d3, q3_d4, q3_d5, q3_d6 :  std_logic_vector(3 downto 0);
signal w3pad :  std_logic_vector(29 downto 0);
signal w2fulla :  std_logic_vector(29 downto 0);
signal fYdec2 :  std_logic_vector(29 downto 0);
signal w2full :  std_logic_vector(29 downto 0);
signal w2, w2_d1, w2_d2 :  std_logic_vector(28 downto 0);
signal sel2 :  std_logic_vector(6 downto 0);
signal q2, q2_d1, q2_d2, q2_d3, q2_d4 :  std_logic_vector(3 downto 0);
signal w2pad :  std_logic_vector(29 downto 0);
signal w1fulla :  std_logic_vector(29 downto 0);
signal fYdec1 :  std_logic_vector(29 downto 0);
signal w1full :  std_logic_vector(29 downto 0);
signal w1, w1_d1, w1_d2 :  std_logic_vector(28 downto 0);
signal sel1 :  std_logic_vector(6 downto 0);
signal q1, q1_d1, q1_d2 :  std_logic_vector(3 downto 0);
signal w1pad :  std_logic_vector(29 downto 0);
signal w0fulla :  std_logic_vector(29 downto 0);
signal fYdec0 :  std_logic_vector(29 downto 0);
signal w0full :  std_logic_vector(29 downto 0);
signal w0, w0_d1, w0_d2 :  std_logic_vector(28 downto 0);
signal q0 :  std_logic_vector(3 downto 0);
signal qP9 :  std_logic_vector(2 downto 0);
signal qM9 :  std_logic_vector(2 downto 0);
signal qP8 :  std_logic_vector(2 downto 0);
signal qM8 :  std_logic_vector(2 downto 0);
signal qP7 :  std_logic_vector(2 downto 0);
signal qM7 :  std_logic_vector(2 downto 0);
signal qP6 :  std_logic_vector(2 downto 0);
signal qM6 :  std_logic_vector(2 downto 0);
signal qP5 :  std_logic_vector(2 downto 0);
signal qM5 :  std_logic_vector(2 downto 0);
signal qP4 :  std_logic_vector(2 downto 0);
signal qM4 :  std_logic_vector(2 downto 0);
signal qP3 :  std_logic_vector(2 downto 0);
signal qM3 :  std_logic_vector(2 downto 0);
signal qP2 :  std_logic_vector(2 downto 0);
signal qM2 :  std_logic_vector(2 downto 0);
signal qP1 :  std_logic_vector(2 downto 0);
signal qM1 :  std_logic_vector(2 downto 0);
signal qP0 :  std_logic_vector(2 downto 0);
signal qM0 :  std_logic_vector(2 downto 0);
signal qP :  std_logic_vector(29 downto 0);
signal qM :  std_logic_vector(29 downto 0);
signal fR0, fR0_d1 :  std_logic_vector(29 downto 0);
signal fR :  std_logic_vector(28 downto 0);
signal fRn1, fRn1_d1 :  std_logic_vector(26 downto 0);
signal expR1, expR1_d1 :  std_logic_vector(9 downto 0);
signal round, round_d1 :  std_logic;
signal expfrac :  std_logic_vector(32 downto 0);
signal expfracR :  std_logic_vector(32 downto 0);
signal exnR :  std_logic_vector(1 downto 0);
signal exnRfinal :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            partialFX_d1 <=  partialFX;
            partialFY_d1 <=  partialFY;
            expR0_d1 <=  expR0;
            expR0_d2 <=  expR0_d1;
            expR0_d3 <=  expR0_d2;
            expR0_d4 <=  expR0_d3;
            expR0_d5 <=  expR0_d4;
            expR0_d6 <=  expR0_d5;
            expR0_d7 <=  expR0_d6;
            expR0_d8 <=  expR0_d7;
            expR0_d9 <=  expR0_d8;
            expR0_d10 <=  expR0_d9;
            expR0_d11 <=  expR0_d10;
            expR0_d12 <=  expR0_d11;
            expR0_d13 <=  expR0_d12;
            expR0_d14 <=  expR0_d13;
            expR0_d15 <=  expR0_d14;
            expR0_d16 <=  expR0_d15;
            expR0_d17 <=  expR0_d16;
            expR0_d18 <=  expR0_d17;
            expR0_d19 <=  expR0_d18;
            expR0_d20 <=  expR0_d19;
            expR0_d21 <=  expR0_d20;
            expR0_d22 <=  expR0_d21;
            sR_d1 <=  sR;
            sR_d2 <=  sR_d1;
            sR_d3 <=  sR_d2;
            sR_d4 <=  sR_d3;
            sR_d5 <=  sR_d4;
            sR_d6 <=  sR_d5;
            sR_d7 <=  sR_d6;
            sR_d8 <=  sR_d7;
            sR_d9 <=  sR_d8;
            sR_d10 <=  sR_d9;
            sR_d11 <=  sR_d10;
            sR_d12 <=  sR_d11;
            sR_d13 <=  sR_d12;
            sR_d14 <=  sR_d13;
            sR_d15 <=  sR_d14;
            sR_d16 <=  sR_d15;
            sR_d17 <=  sR_d16;
            sR_d18 <=  sR_d17;
            sR_d19 <=  sR_d18;
            sR_d20 <=  sR_d19;
            sR_d21 <=  sR_d20;
            sR_d22 <=  sR_d21;
            sR_d23 <=  sR_d22;
            exnR0_d1 <=  exnR0;
            exnR0_d2 <=  exnR0_d1;
            exnR0_d3 <=  exnR0_d2;
            exnR0_d4 <=  exnR0_d3;
            exnR0_d5 <=  exnR0_d4;
            exnR0_d6 <=  exnR0_d5;
            exnR0_d7 <=  exnR0_d6;
            exnR0_d8 <=  exnR0_d7;
            exnR0_d9 <=  exnR0_d8;
            exnR0_d10 <=  exnR0_d9;
            exnR0_d11 <=  exnR0_d10;
            exnR0_d12 <=  exnR0_d11;
            exnR0_d13 <=  exnR0_d12;
            exnR0_d14 <=  exnR0_d13;
            exnR0_d15 <=  exnR0_d14;
            exnR0_d16 <=  exnR0_d15;
            exnR0_d17 <=  exnR0_d16;
            exnR0_d18 <=  exnR0_d17;
            exnR0_d19 <=  exnR0_d18;
            exnR0_d20 <=  exnR0_d19;
            exnR0_d21 <=  exnR0_d20;
            exnR0_d22 <=  exnR0_d21;
            exnR0_d23 <=  exnR0_d22;
            fY_d1 <=  fY;
            fY_d2 <=  fY_d1;
            fY_d3 <=  fY_d2;
            fY_d4 <=  fY_d3;
            fY_d5 <=  fY_d4;
            fY_d6 <=  fY_d5;
            fY_d7 <=  fY_d6;
            fY_d8 <=  fY_d7;
            fY_d9 <=  fY_d8;
            fY_d10 <=  fY_d9;
            fY_d11 <=  fY_d10;
            fY_d12 <=  fY_d11;
            fY_d13 <=  fY_d12;
            fY_d14 <=  fY_d13;
            fY_d15 <=  fY_d14;
            fY_d16 <=  fY_d15;
            fY_d17 <=  fY_d16;
            fY_d18 <=  fY_d17;
            w9_d1 <=  w9;
            w9_d2 <=  w9_d1;
            q9_d1 <=  q9;
            q9_d2 <=  q9_d1;
            q9_d3 <=  q9_d2;
            q9_d4 <=  q9_d3;
            q9_d5 <=  q9_d4;
            q9_d6 <=  q9_d5;
            q9_d7 <=  q9_d6;
            q9_d8 <=  q9_d7;
            q9_d9 <=  q9_d8;
            q9_d10 <=  q9_d9;
            q9_d11 <=  q9_d10;
            q9_d12 <=  q9_d11;
            q9_d13 <=  q9_d12;
            q9_d14 <=  q9_d13;
            q9_d15 <=  q9_d14;
            q9_d16 <=  q9_d15;
            q9_d17 <=  q9_d16;
            q9_d18 <=  q9_d17;
            w8_d1 <=  w8;
            w8_d2 <=  w8_d1;
            q8_d1 <=  q8;
            q8_d2 <=  q8_d1;
            q8_d3 <=  q8_d2;
            q8_d4 <=  q8_d3;
            q8_d5 <=  q8_d4;
            q8_d6 <=  q8_d5;
            q8_d7 <=  q8_d6;
            q8_d8 <=  q8_d7;
            q8_d9 <=  q8_d8;
            q8_d10 <=  q8_d9;
            q8_d11 <=  q8_d10;
            q8_d12 <=  q8_d11;
            q8_d13 <=  q8_d12;
            q8_d14 <=  q8_d13;
            q8_d15 <=  q8_d14;
            q8_d16 <=  q8_d15;
            w7_d1 <=  w7;
            w7_d2 <=  w7_d1;
            q7_d1 <=  q7;
            q7_d2 <=  q7_d1;
            q7_d3 <=  q7_d2;
            q7_d4 <=  q7_d3;
            q7_d5 <=  q7_d4;
            q7_d6 <=  q7_d5;
            q7_d7 <=  q7_d6;
            q7_d8 <=  q7_d7;
            q7_d9 <=  q7_d8;
            q7_d10 <=  q7_d9;
            q7_d11 <=  q7_d10;
            q7_d12 <=  q7_d11;
            q7_d13 <=  q7_d12;
            q7_d14 <=  q7_d13;
            w6_d1 <=  w6;
            w6_d2 <=  w6_d1;
            q6_d1 <=  q6;
            q6_d2 <=  q6_d1;
            q6_d3 <=  q6_d2;
            q6_d4 <=  q6_d3;
            q6_d5 <=  q6_d4;
            q6_d6 <=  q6_d5;
            q6_d7 <=  q6_d6;
            q6_d8 <=  q6_d7;
            q6_d9 <=  q6_d8;
            q6_d10 <=  q6_d9;
            q6_d11 <=  q6_d10;
            q6_d12 <=  q6_d11;
            w5_d1 <=  w5;
            w5_d2 <=  w5_d1;
            q5_d1 <=  q5;
            q5_d2 <=  q5_d1;
            q5_d3 <=  q5_d2;
            q5_d4 <=  q5_d3;
            q5_d5 <=  q5_d4;
            q5_d6 <=  q5_d5;
            q5_d7 <=  q5_d6;
            q5_d8 <=  q5_d7;
            q5_d9 <=  q5_d8;
            q5_d10 <=  q5_d9;
            w4_d1 <=  w4;
            w4_d2 <=  w4_d1;
            q4_d1 <=  q4;
            q4_d2 <=  q4_d1;
            q4_d3 <=  q4_d2;
            q4_d4 <=  q4_d3;
            q4_d5 <=  q4_d4;
            q4_d6 <=  q4_d5;
            q4_d7 <=  q4_d6;
            q4_d8 <=  q4_d7;
            w3_d1 <=  w3;
            w3_d2 <=  w3_d1;
            q3_d1 <=  q3;
            q3_d2 <=  q3_d1;
            q3_d3 <=  q3_d2;
            q3_d4 <=  q3_d3;
            q3_d5 <=  q3_d4;
            q3_d6 <=  q3_d5;
            w2_d1 <=  w2;
            w2_d2 <=  w2_d1;
            q2_d1 <=  q2;
            q2_d2 <=  q2_d1;
            q2_d3 <=  q2_d2;
            q2_d4 <=  q2_d3;
            w1_d1 <=  w1;
            w1_d2 <=  w1_d1;
            q1_d1 <=  q1;
            q1_d2 <=  q1_d1;
            w0_d1 <=  w0;
            w0_d2 <=  w0_d1;
            fR0_d1 <=  fR0;
            fRn1_d1 <=  fRn1;
            expR1_d1 <=  expR1;
            round_d1 <=  round;
         end if;
      end process;
   partialFX <= "1" & X(22 downto 0);
   partialFY <= "1" & Y(22 downto 0);
   -- exponent difference, sign and exception combination computed early, to have less bits to pipeline
   expR0 <= ("00" & X(30 downto 23)) - ("00" & Y(30 downto 23));
   sR <= X(31) xor Y(31);
   -- early exception handling 
   exnXY <= X(33 downto 32) & Y(33 downto 32);
   with exnXY select
      exnR0 <= 
         "01"  when "0101",                   -- normal
         "00"  when "0001" | "0010" | "0110", -- zero
         "10"  when "0100" | "1000" | "1001", -- overflow
         "11"  when others;                   -- NaN
   ----------------Synchro barrier, entering cycle 1----------------
    -- Prescaling
   with partialFY_d1 (22 downto 21) select
      fY <= 
         ("0" & partialFY_d1 & "0") + (partialFY_d1 & "00") when "00",
         ("00" & partialFY_d1) + (partialFY_d1 & "00") when "01",
         partialFY_d1 &"00" when others;
   with partialFY_d1 (22 downto 21) select
      fX <= 
         ("00" & partialFX_d1 & "0") + ("0" & partialFX_d1 & "00") when "00",
         ("000" & partialFX_d1) + ("0" & partialFX_d1 & "00") when "01",
         "0" & partialFX_d1 &"00" when others;
   w9 <=  "00" & fX;
   ----------------Synchro barrier, entering cycle 2----------------
   ----------------Synchro barrier, entering cycle 3----------------
   sel9 <= w9_d2(28 downto 24) & fY_d2(23 downto 22);
   SelFunctionTable9: SelFunctionTable_r8_F750_uid4  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => sel9,
                 Y => q9);
   w9pad <= w9_d2 & '0';
   with q9(1 downto 0) select 
   w8fulla <= 
      w9pad - ("0000" & fY_d2)			when "01",
      w9pad + ("0000" & fY_d2)			when "11",
      w9pad + ("000" & fY_d2 & "0")	  when "10",
      w9pad 			   		  when others;
   with q9(3 downto 1) select 
   fYdec8 <= 
      ("00" & fY_d2 & "00")			when "001" | "010" | "110"| "101",
      ("0" & fY_d2 & "000")			when "011"| "100",
      (29 downto 0 => '0')when others;
   with q9(3) select
   w8full <= 
      w8fulla - fYdec8			when '0',
      w8fulla + fYdec8			when others;
   w8 <= w8full(26 downto 0) & "00";
   ----------------Synchro barrier, entering cycle 4----------------
   ----------------Synchro barrier, entering cycle 5----------------
   sel8 <= w8_d2(28 downto 24) & fY_d4(23 downto 22);
   SelFunctionTable8: SelFunctionTable_r8_F750_uid4  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => sel8,
                 Y => q8);
   w8pad <= w8_d2 & '0';
   with q8(1 downto 0) select 
   w7fulla <= 
      w8pad - ("0000" & fY_d4)			when "01",
      w8pad + ("0000" & fY_d4)			when "11",
      w8pad + ("000" & fY_d4 & "0")	  when "10",
      w8pad 			   		  when others;
   with q8(3 downto 1) select 
   fYdec7 <= 
      ("00" & fY_d4 & "00")			when "001" | "010" | "110"| "101",
      ("0" & fY_d4 & "000")			when "011"| "100",
      (29 downto 0 => '0')when others;
   with q8(3) select
   w7full <= 
      w7fulla - fYdec7			when '0',
      w7fulla + fYdec7			when others;
   w7 <= w7full(26 downto 0) & "00";
   ----------------Synchro barrier, entering cycle 6----------------
   ----------------Synchro barrier, entering cycle 7----------------
   sel7 <= w7_d2(28 downto 24) & fY_d6(23 downto 22);
   SelFunctionTable7: SelFunctionTable_r8_F750_uid4  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => sel7,
                 Y => q7);
   w7pad <= w7_d2 & '0';
   with q7(1 downto 0) select 
   w6fulla <= 
      w7pad - ("0000" & fY_d6)			when "01",
      w7pad + ("0000" & fY_d6)			when "11",
      w7pad + ("000" & fY_d6 & "0")	  when "10",
      w7pad 			   		  when others;
   with q7(3 downto 1) select 
   fYdec6 <= 
      ("00" & fY_d6 & "00")			when "001" | "010" | "110"| "101",
      ("0" & fY_d6 & "000")			when "011"| "100",
      (29 downto 0 => '0')when others;
   with q7(3) select
   w6full <= 
      w6fulla - fYdec6			when '0',
      w6fulla + fYdec6			when others;
   w6 <= w6full(26 downto 0) & "00";
   ----------------Synchro barrier, entering cycle 8----------------
   ----------------Synchro barrier, entering cycle 9----------------
   sel6 <= w6_d2(28 downto 24) & fY_d8(23 downto 22);
   SelFunctionTable6: SelFunctionTable_r8_F750_uid4  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => sel6,
                 Y => q6);
   w6pad <= w6_d2 & '0';
   with q6(1 downto 0) select 
   w5fulla <= 
      w6pad - ("0000" & fY_d8)			when "01",
      w6pad + ("0000" & fY_d8)			when "11",
      w6pad + ("000" & fY_d8 & "0")	  when "10",
      w6pad 			   		  when others;
   with q6(3 downto 1) select 
   fYdec5 <= 
      ("00" & fY_d8 & "00")			when "001" | "010" | "110"| "101",
      ("0" & fY_d8 & "000")			when "011"| "100",
      (29 downto 0 => '0')when others;
   with q6(3) select
   w5full <= 
      w5fulla - fYdec5			when '0',
      w5fulla + fYdec5			when others;
   w5 <= w5full(26 downto 0) & "00";
   ----------------Synchro barrier, entering cycle 10----------------
   ----------------Synchro barrier, entering cycle 11----------------
   sel5 <= w5_d2(28 downto 24) & fY_d10(23 downto 22);
   SelFunctionTable5: SelFunctionTable_r8_F750_uid4  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => sel5,
                 Y => q5);
   w5pad <= w5_d2 & '0';
   with q5(1 downto 0) select 
   w4fulla <= 
      w5pad - ("0000" & fY_d10)			when "01",
      w5pad + ("0000" & fY_d10)			when "11",
      w5pad + ("000" & fY_d10 & "0")	  when "10",
      w5pad 			   		  when others;
   with q5(3 downto 1) select 
   fYdec4 <= 
      ("00" & fY_d10 & "00")			when "001" | "010" | "110"| "101",
      ("0" & fY_d10 & "000")			when "011"| "100",
      (29 downto 0 => '0')when others;
   with q5(3) select
   w4full <= 
      w4fulla - fYdec4			when '0',
      w4fulla + fYdec4			when others;
   w4 <= w4full(26 downto 0) & "00";
   ----------------Synchro barrier, entering cycle 12----------------
   ----------------Synchro barrier, entering cycle 13----------------
   sel4 <= w4_d2(28 downto 24) & fY_d12(23 downto 22);
   SelFunctionTable4: SelFunctionTable_r8_F750_uid4  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => sel4,
                 Y => q4);
   w4pad <= w4_d2 & '0';
   with q4(1 downto 0) select 
   w3fulla <= 
      w4pad - ("0000" & fY_d12)			when "01",
      w4pad + ("0000" & fY_d12)			when "11",
      w4pad + ("000" & fY_d12 & "0")	  when "10",
      w4pad 			   		  when others;
   with q4(3 downto 1) select 
   fYdec3 <= 
      ("00" & fY_d12 & "00")			when "001" | "010" | "110"| "101",
      ("0" & fY_d12 & "000")			when "011"| "100",
      (29 downto 0 => '0')when others;
   with q4(3) select
   w3full <= 
      w3fulla - fYdec3			when '0',
      w3fulla + fYdec3			when others;
   w3 <= w3full(26 downto 0) & "00";
   ----------------Synchro barrier, entering cycle 14----------------
   ----------------Synchro barrier, entering cycle 15----------------
   sel3 <= w3_d2(28 downto 24) & fY_d14(23 downto 22);
   SelFunctionTable3: SelFunctionTable_r8_F750_uid4  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => sel3,
                 Y => q3);
   w3pad <= w3_d2 & '0';
   with q3(1 downto 0) select 
   w2fulla <= 
      w3pad - ("0000" & fY_d14)			when "01",
      w3pad + ("0000" & fY_d14)			when "11",
      w3pad + ("000" & fY_d14 & "0")	  when "10",
      w3pad 			   		  when others;
   with q3(3 downto 1) select 
   fYdec2 <= 
      ("00" & fY_d14 & "00")			when "001" | "010" | "110"| "101",
      ("0" & fY_d14 & "000")			when "011"| "100",
      (29 downto 0 => '0')when others;
   with q3(3) select
   w2full <= 
      w2fulla - fYdec2			when '0',
      w2fulla + fYdec2			when others;
   w2 <= w2full(26 downto 0) & "00";
   ----------------Synchro barrier, entering cycle 16----------------
   ----------------Synchro barrier, entering cycle 17----------------
   sel2 <= w2_d2(28 downto 24) & fY_d16(23 downto 22);
   SelFunctionTable2: SelFunctionTable_r8_F750_uid4  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => sel2,
                 Y => q2);
   w2pad <= w2_d2 & '0';
   with q2(1 downto 0) select 
   w1fulla <= 
      w2pad - ("0000" & fY_d16)			when "01",
      w2pad + ("0000" & fY_d16)			when "11",
      w2pad + ("000" & fY_d16 & "0")	  when "10",
      w2pad 			   		  when others;
   with q2(3 downto 1) select 
   fYdec1 <= 
      ("00" & fY_d16 & "00")			when "001" | "010" | "110"| "101",
      ("0" & fY_d16 & "000")			when "011"| "100",
      (29 downto 0 => '0')when others;
   with q2(3) select
   w1full <= 
      w1fulla - fYdec1			when '0',
      w1fulla + fYdec1			when others;
   w1 <= w1full(26 downto 0) & "00";
   ----------------Synchro barrier, entering cycle 18----------------
   ----------------Synchro barrier, entering cycle 19----------------
   sel1 <= w1_d2(28 downto 24) & fY_d18(23 downto 22);
   SelFunctionTable1: SelFunctionTable_r8_F750_uid4  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => sel1,
                 Y => q1);
   w1pad <= w1_d2 & '0';
   with q1(1 downto 0) select 
   w0fulla <= 
      w1pad - ("0000" & fY_d18)			when "01",
      w1pad + ("0000" & fY_d18)			when "11",
      w1pad + ("000" & fY_d18 & "0")	  when "10",
      w1pad 			   		  when others;
   with q1(3 downto 1) select 
   fYdec0 <= 
      ("00" & fY_d18 & "00")			when "001" | "010" | "110"| "101",
      ("0" & fY_d18 & "000")			when "011"| "100",
      (29 downto 0 => '0')when others;
   with q1(3) select
   w0full <= 
      w0fulla - fYdec0			when '0',
      w0fulla + fYdec0			when others;
   w0 <= w0full(26 downto 0) & "00";
   ----------------Synchro barrier, entering cycle 20----------------
   ----------------Synchro barrier, entering cycle 21----------------
   q0(3 downto 0) <= "0000" when  w0_d2 = (28 downto 0 => '0')
                else w0_d2(28) & "010";
   qP9 <=      q9_d18(2 downto 0);
   qM9 <=      q9_d18(3) & "00";
   qP8 <=      q8_d16(2 downto 0);
   qM8 <=      q8_d16(3) & "00";
   qP7 <=      q7_d14(2 downto 0);
   qM7 <=      q7_d14(3) & "00";
   qP6 <=      q6_d12(2 downto 0);
   qM6 <=      q6_d12(3) & "00";
   qP5 <=      q5_d10(2 downto 0);
   qM5 <=      q5_d10(3) & "00";
   qP4 <=      q4_d8(2 downto 0);
   qM4 <=      q4_d8(3) & "00";
   qP3 <=      q3_d6(2 downto 0);
   qM3 <=      q3_d6(3) & "00";
   qP2 <=      q2_d4(2 downto 0);
   qM2 <=      q2_d4(3) & "00";
   qP1 <=      q1_d2(2 downto 0);
   qM1 <=      q1_d2(3) & "00";
   qP0 <= q0(2 downto 0);
   qM0 <= q0(3)  & "00";
   qP <= qP9 & qP8 & qP7 & qP6 & qP5 & qP4 & qP3 & qP2 & qP1 & qP0;
   qM <= qM9(1 downto 0) & qM8 & qM7 & qM6 & qM5 & qM4 & qM3 & qM2 & qM1 & qM0 & "0";
   fR0 <= qP - qM;
   ----------------Synchro barrier, entering cycle 22----------------
   fR <= fR0_d1(29 downto 2) & (fR0_d1(0) or fR0_d1(1)); 
   -- normalisation
   with fR(27) select
      fRn1 <= fR(27 downto 2) & (fR(0) or fR(1)) when '1',
              fR(26 downto 0)          when others;
   expR1 <= expR0_d22 + ("000" & (6 downto 1 => '1') & fR(27)); -- add back bias
   round <= fRn1(2) and (fRn1(0) or fRn1(1) or fRn1(3)); -- fRn1(0) is the sticky bit
   ----------------Synchro barrier, entering cycle 23----------------
   -- final rounding
   expfrac <= expR1_d1 & fRn1_d1(25 downto 3) ;
   expfracR <= expfrac + ((32 downto 1 => '0') & round_d1);
   exnR <=      "00"  when expfracR(32) = '1'   -- underflow
           else "10"  when  expfracR(32 downto 31) =  "01" -- overflow
           else "01";      -- 00, normal case
   with exnR0_d23 select
      exnRfinal <= 
         exnR   when "01", -- normal
         exnR0_d23  when others;
   R <= exnRfinal & sR_d23 & expfracR(30 downto 0);
end architecture;

