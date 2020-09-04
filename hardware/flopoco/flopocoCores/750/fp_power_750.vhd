--------------------------------------------------------------------------------
--                          IntSquarer_24_F750_uid4
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2009)
--------------------------------------------------------------------------------
-- Pipeline depth: 4 cycles

library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
library work;
entity IntSquarer_24_F750_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          R : out  std_logic_vector(47 downto 0)   );
end entity;

architecture arch of IntSquarer_24_F750_uid4 is
signal x0_16, x0_16_d1, x0_16_d2 :  std_logic_vector(17 downto 0);
signal x17_32, x17_32_d1, x17_32_d2, x17_32_d3 :  std_logic_vector(17 downto 0);
signal x17_32_shr, x17_32_shr_d1, x17_32_shr_d2 :  std_logic_vector(17 downto 0);
signal p0, p0_d1, p0_d2 :  std_logic_vector(35 downto 0);
signal p1_x2, p1_x2_d1 :  std_logic_vector(35 downto 0);
signal s1, s1_d1 :  std_logic_vector(35 downto 0);
signal p2, p2_d1 :  std_logic_vector(35 downto 0);
signal s2 :  std_logic_vector(35 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            x0_16_d1 <=  x0_16;
            x0_16_d2 <=  x0_16_d1;
            x17_32_d1 <=  x17_32;
            x17_32_d2 <=  x17_32_d1;
            x17_32_d3 <=  x17_32_d2;
            x17_32_shr_d1 <=  x17_32_shr;
            x17_32_shr_d2 <=  x17_32_shr_d1;
            p0_d1 <=  p0;
            p0_d2 <=  p0_d1;
            p1_x2_d1 <=  p1_x2;
            s1_d1 <=  s1;
            p2_d1 <=  p2;
         end if;
      end process;
   x0_16 <= "0" & X(16 downto 0);
   x17_32 <= "00" & "000000000" & X(23 downto 17);
   x17_32_shr <= "0" & "000000000" & X(23 downto 17) & "0";
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 2----------------
   p0 <= x0_16_d2 * x0_16_d2;
   p1_x2 <= x17_32_shr_d2 * x0_16_d2;
   ----------------Synchro barrier, entering cycle 3----------------
   s1 <= p1_x2_d1 + ( "00000000000000000" & p0_d1(35 downto 17));
   p2 <= x17_32_d3 * x17_32_d3;
   ----------------Synchro barrier, entering cycle 4----------------
   s2 <= p2_d1 + ( "00000000000000000" & s1_d1(35 downto 17));
   R <= s2(13 downto 0) & s1_d1(16 downto 0) & p0_d2(16 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_33_f750_uid8
--                     (IntAdderClassical_33_F750_uid10)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 16 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_33_f750_uid8 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(32 downto 0);
          Y : in  std_logic_vector(32 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(32 downto 0)   );
end entity;

architecture arch of IntAdder_33_f750_uid8 is
signal x0 :  std_logic_vector(1 downto 0);
signal y0 :  std_logic_vector(1 downto 0);
signal x1, x1_d1 :  std_logic_vector(1 downto 0);
signal y1, y1_d1 :  std_logic_vector(1 downto 0);
signal x2, x2_d1, x2_d2 :  std_logic_vector(1 downto 0);
signal y2, y2_d1, y2_d2 :  std_logic_vector(1 downto 0);
signal x3, x3_d1, x3_d2, x3_d3 :  std_logic_vector(1 downto 0);
signal y3, y3_d1, y3_d2, y3_d3 :  std_logic_vector(1 downto 0);
signal x4, x4_d1, x4_d2, x4_d3, x4_d4 :  std_logic_vector(1 downto 0);
signal y4, y4_d1, y4_d2, y4_d3, y4_d4 :  std_logic_vector(1 downto 0);
signal x5, x5_d1, x5_d2, x5_d3, x5_d4, x5_d5 :  std_logic_vector(1 downto 0);
signal y5, y5_d1, y5_d2, y5_d3, y5_d4, y5_d5 :  std_logic_vector(1 downto 0);
signal x6, x6_d1, x6_d2, x6_d3, x6_d4, x6_d5, x6_d6 :  std_logic_vector(1 downto 0);
signal y6, y6_d1, y6_d2, y6_d3, y6_d4, y6_d5, y6_d6 :  std_logic_vector(1 downto 0);
signal x7, x7_d1, x7_d2, x7_d3, x7_d4, x7_d5, x7_d6, x7_d7 :  std_logic_vector(1 downto 0);
signal y7, y7_d1, y7_d2, y7_d3, y7_d4, y7_d5, y7_d6, y7_d7 :  std_logic_vector(1 downto 0);
signal x8, x8_d1, x8_d2, x8_d3, x8_d4, x8_d5, x8_d6, x8_d7, x8_d8 :  std_logic_vector(1 downto 0);
signal y8, y8_d1, y8_d2, y8_d3, y8_d4, y8_d5, y8_d6, y8_d7, y8_d8 :  std_logic_vector(1 downto 0);
signal x9, x9_d1, x9_d2, x9_d3, x9_d4, x9_d5, x9_d6, x9_d7, x9_d8, x9_d9 :  std_logic_vector(1 downto 0);
signal y9, y9_d1, y9_d2, y9_d3, y9_d4, y9_d5, y9_d6, y9_d7, y9_d8, y9_d9 :  std_logic_vector(1 downto 0);
signal x10, x10_d1, x10_d2, x10_d3, x10_d4, x10_d5, x10_d6, x10_d7, x10_d8, x10_d9, x10_d10 :  std_logic_vector(1 downto 0);
signal y10, y10_d1, y10_d2, y10_d3, y10_d4, y10_d5, y10_d6, y10_d7, y10_d8, y10_d9, y10_d10 :  std_logic_vector(1 downto 0);
signal x11, x11_d1, x11_d2, x11_d3, x11_d4, x11_d5, x11_d6, x11_d7, x11_d8, x11_d9, x11_d10, x11_d11 :  std_logic_vector(1 downto 0);
signal y11, y11_d1, y11_d2, y11_d3, y11_d4, y11_d5, y11_d6, y11_d7, y11_d8, y11_d9, y11_d10, y11_d11 :  std_logic_vector(1 downto 0);
signal x12, x12_d1, x12_d2, x12_d3, x12_d4, x12_d5, x12_d6, x12_d7, x12_d8, x12_d9, x12_d10, x12_d11, x12_d12 :  std_logic_vector(1 downto 0);
signal y12, y12_d1, y12_d2, y12_d3, y12_d4, y12_d5, y12_d6, y12_d7, y12_d8, y12_d9, y12_d10, y12_d11, y12_d12 :  std_logic_vector(1 downto 0);
signal x13, x13_d1, x13_d2, x13_d3, x13_d4, x13_d5, x13_d6, x13_d7, x13_d8, x13_d9, x13_d10, x13_d11, x13_d12, x13_d13 :  std_logic_vector(1 downto 0);
signal y13, y13_d1, y13_d2, y13_d3, y13_d4, y13_d5, y13_d6, y13_d7, y13_d8, y13_d9, y13_d10, y13_d11, y13_d12, y13_d13 :  std_logic_vector(1 downto 0);
signal x14, x14_d1, x14_d2, x14_d3, x14_d4, x14_d5, x14_d6, x14_d7, x14_d8, x14_d9, x14_d10, x14_d11, x14_d12, x14_d13, x14_d14 :  std_logic_vector(1 downto 0);
signal y14, y14_d1, y14_d2, y14_d3, y14_d4, y14_d5, y14_d6, y14_d7, y14_d8, y14_d9, y14_d10, y14_d11, y14_d12, y14_d13, y14_d14 :  std_logic_vector(1 downto 0);
signal x15, x15_d1, x15_d2, x15_d3, x15_d4, x15_d5, x15_d6, x15_d7, x15_d8, x15_d9, x15_d10, x15_d11, x15_d12, x15_d13, x15_d14, x15_d15 :  std_logic_vector(1 downto 0);
signal y15, y15_d1, y15_d2, y15_d3, y15_d4, y15_d5, y15_d6, y15_d7, y15_d8, y15_d9, y15_d10, y15_d11, y15_d12, y15_d13, y15_d14, y15_d15 :  std_logic_vector(1 downto 0);
signal x16, x16_d1, x16_d2, x16_d3, x16_d4, x16_d5, x16_d6, x16_d7, x16_d8, x16_d9, x16_d10, x16_d11, x16_d12, x16_d13, x16_d14, x16_d15, x16_d16 :  std_logic_vector(0 downto 0);
signal y16, y16_d1, y16_d2, y16_d3, y16_d4, y16_d5, y16_d6, y16_d7, y16_d8, y16_d9, y16_d10, y16_d11, y16_d12, y16_d13, y16_d14, y16_d15, y16_d16 :  std_logic_vector(0 downto 0);
signal sum0, sum0_d1, sum0_d2, sum0_d3, sum0_d4, sum0_d5, sum0_d6, sum0_d7, sum0_d8, sum0_d9, sum0_d10, sum0_d11, sum0_d12, sum0_d13, sum0_d14, sum0_d15, sum0_d16 :  std_logic_vector(2 downto 0);
signal sum1, sum1_d1, sum1_d2, sum1_d3, sum1_d4, sum1_d5, sum1_d6, sum1_d7, sum1_d8, sum1_d9, sum1_d10, sum1_d11, sum1_d12, sum1_d13, sum1_d14, sum1_d15 :  std_logic_vector(2 downto 0);
signal sum2, sum2_d1, sum2_d2, sum2_d3, sum2_d4, sum2_d5, sum2_d6, sum2_d7, sum2_d8, sum2_d9, sum2_d10, sum2_d11, sum2_d12, sum2_d13, sum2_d14 :  std_logic_vector(2 downto 0);
signal sum3, sum3_d1, sum3_d2, sum3_d3, sum3_d4, sum3_d5, sum3_d6, sum3_d7, sum3_d8, sum3_d9, sum3_d10, sum3_d11, sum3_d12, sum3_d13 :  std_logic_vector(2 downto 0);
signal sum4, sum4_d1, sum4_d2, sum4_d3, sum4_d4, sum4_d5, sum4_d6, sum4_d7, sum4_d8, sum4_d9, sum4_d10, sum4_d11, sum4_d12 :  std_logic_vector(2 downto 0);
signal sum5, sum5_d1, sum5_d2, sum5_d3, sum5_d4, sum5_d5, sum5_d6, sum5_d7, sum5_d8, sum5_d9, sum5_d10, sum5_d11 :  std_logic_vector(2 downto 0);
signal sum6, sum6_d1, sum6_d2, sum6_d3, sum6_d4, sum6_d5, sum6_d6, sum6_d7, sum6_d8, sum6_d9, sum6_d10 :  std_logic_vector(2 downto 0);
signal sum7, sum7_d1, sum7_d2, sum7_d3, sum7_d4, sum7_d5, sum7_d6, sum7_d7, sum7_d8, sum7_d9 :  std_logic_vector(2 downto 0);
signal sum8, sum8_d1, sum8_d2, sum8_d3, sum8_d4, sum8_d5, sum8_d6, sum8_d7, sum8_d8 :  std_logic_vector(2 downto 0);
signal sum9, sum9_d1, sum9_d2, sum9_d3, sum9_d4, sum9_d5, sum9_d6, sum9_d7 :  std_logic_vector(2 downto 0);
signal sum10, sum10_d1, sum10_d2, sum10_d3, sum10_d4, sum10_d5, sum10_d6 :  std_logic_vector(2 downto 0);
signal sum11, sum11_d1, sum11_d2, sum11_d3, sum11_d4, sum11_d5 :  std_logic_vector(2 downto 0);
signal sum12, sum12_d1, sum12_d2, sum12_d3, sum12_d4 :  std_logic_vector(2 downto 0);
signal sum13, sum13_d1, sum13_d2, sum13_d3 :  std_logic_vector(2 downto 0);
signal sum14, sum14_d1, sum14_d2 :  std_logic_vector(2 downto 0);
signal sum15, sum15_d1 :  std_logic_vector(2 downto 0);
signal sum16 :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            x1_d1 <=  x1;
            y1_d1 <=  y1;
            x2_d1 <=  x2;
            x2_d2 <=  x2_d1;
            y2_d1 <=  y2;
            y2_d2 <=  y2_d1;
            x3_d1 <=  x3;
            x3_d2 <=  x3_d1;
            x3_d3 <=  x3_d2;
            y3_d1 <=  y3;
            y3_d2 <=  y3_d1;
            y3_d3 <=  y3_d2;
            x4_d1 <=  x4;
            x4_d2 <=  x4_d1;
            x4_d3 <=  x4_d2;
            x4_d4 <=  x4_d3;
            y4_d1 <=  y4;
            y4_d2 <=  y4_d1;
            y4_d3 <=  y4_d2;
            y4_d4 <=  y4_d3;
            x5_d1 <=  x5;
            x5_d2 <=  x5_d1;
            x5_d3 <=  x5_d2;
            x5_d4 <=  x5_d3;
            x5_d5 <=  x5_d4;
            y5_d1 <=  y5;
            y5_d2 <=  y5_d1;
            y5_d3 <=  y5_d2;
            y5_d4 <=  y5_d3;
            y5_d5 <=  y5_d4;
            x6_d1 <=  x6;
            x6_d2 <=  x6_d1;
            x6_d3 <=  x6_d2;
            x6_d4 <=  x6_d3;
            x6_d5 <=  x6_d4;
            x6_d6 <=  x6_d5;
            y6_d1 <=  y6;
            y6_d2 <=  y6_d1;
            y6_d3 <=  y6_d2;
            y6_d4 <=  y6_d3;
            y6_d5 <=  y6_d4;
            y6_d6 <=  y6_d5;
            x7_d1 <=  x7;
            x7_d2 <=  x7_d1;
            x7_d3 <=  x7_d2;
            x7_d4 <=  x7_d3;
            x7_d5 <=  x7_d4;
            x7_d6 <=  x7_d5;
            x7_d7 <=  x7_d6;
            y7_d1 <=  y7;
            y7_d2 <=  y7_d1;
            y7_d3 <=  y7_d2;
            y7_d4 <=  y7_d3;
            y7_d5 <=  y7_d4;
            y7_d6 <=  y7_d5;
            y7_d7 <=  y7_d6;
            x8_d1 <=  x8;
            x8_d2 <=  x8_d1;
            x8_d3 <=  x8_d2;
            x8_d4 <=  x8_d3;
            x8_d5 <=  x8_d4;
            x8_d6 <=  x8_d5;
            x8_d7 <=  x8_d6;
            x8_d8 <=  x8_d7;
            y8_d1 <=  y8;
            y8_d2 <=  y8_d1;
            y8_d3 <=  y8_d2;
            y8_d4 <=  y8_d3;
            y8_d5 <=  y8_d4;
            y8_d6 <=  y8_d5;
            y8_d7 <=  y8_d6;
            y8_d8 <=  y8_d7;
            x9_d1 <=  x9;
            x9_d2 <=  x9_d1;
            x9_d3 <=  x9_d2;
            x9_d4 <=  x9_d3;
            x9_d5 <=  x9_d4;
            x9_d6 <=  x9_d5;
            x9_d7 <=  x9_d6;
            x9_d8 <=  x9_d7;
            x9_d9 <=  x9_d8;
            y9_d1 <=  y9;
            y9_d2 <=  y9_d1;
            y9_d3 <=  y9_d2;
            y9_d4 <=  y9_d3;
            y9_d5 <=  y9_d4;
            y9_d6 <=  y9_d5;
            y9_d7 <=  y9_d6;
            y9_d8 <=  y9_d7;
            y9_d9 <=  y9_d8;
            x10_d1 <=  x10;
            x10_d2 <=  x10_d1;
            x10_d3 <=  x10_d2;
            x10_d4 <=  x10_d3;
            x10_d5 <=  x10_d4;
            x10_d6 <=  x10_d5;
            x10_d7 <=  x10_d6;
            x10_d8 <=  x10_d7;
            x10_d9 <=  x10_d8;
            x10_d10 <=  x10_d9;
            y10_d1 <=  y10;
            y10_d2 <=  y10_d1;
            y10_d3 <=  y10_d2;
            y10_d4 <=  y10_d3;
            y10_d5 <=  y10_d4;
            y10_d6 <=  y10_d5;
            y10_d7 <=  y10_d6;
            y10_d8 <=  y10_d7;
            y10_d9 <=  y10_d8;
            y10_d10 <=  y10_d9;
            x11_d1 <=  x11;
            x11_d2 <=  x11_d1;
            x11_d3 <=  x11_d2;
            x11_d4 <=  x11_d3;
            x11_d5 <=  x11_d4;
            x11_d6 <=  x11_d5;
            x11_d7 <=  x11_d6;
            x11_d8 <=  x11_d7;
            x11_d9 <=  x11_d8;
            x11_d10 <=  x11_d9;
            x11_d11 <=  x11_d10;
            y11_d1 <=  y11;
            y11_d2 <=  y11_d1;
            y11_d3 <=  y11_d2;
            y11_d4 <=  y11_d3;
            y11_d5 <=  y11_d4;
            y11_d6 <=  y11_d5;
            y11_d7 <=  y11_d6;
            y11_d8 <=  y11_d7;
            y11_d9 <=  y11_d8;
            y11_d10 <=  y11_d9;
            y11_d11 <=  y11_d10;
            x12_d1 <=  x12;
            x12_d2 <=  x12_d1;
            x12_d3 <=  x12_d2;
            x12_d4 <=  x12_d3;
            x12_d5 <=  x12_d4;
            x12_d6 <=  x12_d5;
            x12_d7 <=  x12_d6;
            x12_d8 <=  x12_d7;
            x12_d9 <=  x12_d8;
            x12_d10 <=  x12_d9;
            x12_d11 <=  x12_d10;
            x12_d12 <=  x12_d11;
            y12_d1 <=  y12;
            y12_d2 <=  y12_d1;
            y12_d3 <=  y12_d2;
            y12_d4 <=  y12_d3;
            y12_d5 <=  y12_d4;
            y12_d6 <=  y12_d5;
            y12_d7 <=  y12_d6;
            y12_d8 <=  y12_d7;
            y12_d9 <=  y12_d8;
            y12_d10 <=  y12_d9;
            y12_d11 <=  y12_d10;
            y12_d12 <=  y12_d11;
            x13_d1 <=  x13;
            x13_d2 <=  x13_d1;
            x13_d3 <=  x13_d2;
            x13_d4 <=  x13_d3;
            x13_d5 <=  x13_d4;
            x13_d6 <=  x13_d5;
            x13_d7 <=  x13_d6;
            x13_d8 <=  x13_d7;
            x13_d9 <=  x13_d8;
            x13_d10 <=  x13_d9;
            x13_d11 <=  x13_d10;
            x13_d12 <=  x13_d11;
            x13_d13 <=  x13_d12;
            y13_d1 <=  y13;
            y13_d2 <=  y13_d1;
            y13_d3 <=  y13_d2;
            y13_d4 <=  y13_d3;
            y13_d5 <=  y13_d4;
            y13_d6 <=  y13_d5;
            y13_d7 <=  y13_d6;
            y13_d8 <=  y13_d7;
            y13_d9 <=  y13_d8;
            y13_d10 <=  y13_d9;
            y13_d11 <=  y13_d10;
            y13_d12 <=  y13_d11;
            y13_d13 <=  y13_d12;
            x14_d1 <=  x14;
            x14_d2 <=  x14_d1;
            x14_d3 <=  x14_d2;
            x14_d4 <=  x14_d3;
            x14_d5 <=  x14_d4;
            x14_d6 <=  x14_d5;
            x14_d7 <=  x14_d6;
            x14_d8 <=  x14_d7;
            x14_d9 <=  x14_d8;
            x14_d10 <=  x14_d9;
            x14_d11 <=  x14_d10;
            x14_d12 <=  x14_d11;
            x14_d13 <=  x14_d12;
            x14_d14 <=  x14_d13;
            y14_d1 <=  y14;
            y14_d2 <=  y14_d1;
            y14_d3 <=  y14_d2;
            y14_d4 <=  y14_d3;
            y14_d5 <=  y14_d4;
            y14_d6 <=  y14_d5;
            y14_d7 <=  y14_d6;
            y14_d8 <=  y14_d7;
            y14_d9 <=  y14_d8;
            y14_d10 <=  y14_d9;
            y14_d11 <=  y14_d10;
            y14_d12 <=  y14_d11;
            y14_d13 <=  y14_d12;
            y14_d14 <=  y14_d13;
            x15_d1 <=  x15;
            x15_d2 <=  x15_d1;
            x15_d3 <=  x15_d2;
            x15_d4 <=  x15_d3;
            x15_d5 <=  x15_d4;
            x15_d6 <=  x15_d5;
            x15_d7 <=  x15_d6;
            x15_d8 <=  x15_d7;
            x15_d9 <=  x15_d8;
            x15_d10 <=  x15_d9;
            x15_d11 <=  x15_d10;
            x15_d12 <=  x15_d11;
            x15_d13 <=  x15_d12;
            x15_d14 <=  x15_d13;
            x15_d15 <=  x15_d14;
            y15_d1 <=  y15;
            y15_d2 <=  y15_d1;
            y15_d3 <=  y15_d2;
            y15_d4 <=  y15_d3;
            y15_d5 <=  y15_d4;
            y15_d6 <=  y15_d5;
            y15_d7 <=  y15_d6;
            y15_d8 <=  y15_d7;
            y15_d9 <=  y15_d8;
            y15_d10 <=  y15_d9;
            y15_d11 <=  y15_d10;
            y15_d12 <=  y15_d11;
            y15_d13 <=  y15_d12;
            y15_d14 <=  y15_d13;
            y15_d15 <=  y15_d14;
            x16_d1 <=  x16;
            x16_d2 <=  x16_d1;
            x16_d3 <=  x16_d2;
            x16_d4 <=  x16_d3;
            x16_d5 <=  x16_d4;
            x16_d6 <=  x16_d5;
            x16_d7 <=  x16_d6;
            x16_d8 <=  x16_d7;
            x16_d9 <=  x16_d8;
            x16_d10 <=  x16_d9;
            x16_d11 <=  x16_d10;
            x16_d12 <=  x16_d11;
            x16_d13 <=  x16_d12;
            x16_d14 <=  x16_d13;
            x16_d15 <=  x16_d14;
            x16_d16 <=  x16_d15;
            y16_d1 <=  y16;
            y16_d2 <=  y16_d1;
            y16_d3 <=  y16_d2;
            y16_d4 <=  y16_d3;
            y16_d5 <=  y16_d4;
            y16_d6 <=  y16_d5;
            y16_d7 <=  y16_d6;
            y16_d8 <=  y16_d7;
            y16_d9 <=  y16_d8;
            y16_d10 <=  y16_d9;
            y16_d11 <=  y16_d10;
            y16_d12 <=  y16_d11;
            y16_d13 <=  y16_d12;
            y16_d14 <=  y16_d13;
            y16_d15 <=  y16_d14;
            y16_d16 <=  y16_d15;
            sum0_d1 <=  sum0;
            sum0_d2 <=  sum0_d1;
            sum0_d3 <=  sum0_d2;
            sum0_d4 <=  sum0_d3;
            sum0_d5 <=  sum0_d4;
            sum0_d6 <=  sum0_d5;
            sum0_d7 <=  sum0_d6;
            sum0_d8 <=  sum0_d7;
            sum0_d9 <=  sum0_d8;
            sum0_d10 <=  sum0_d9;
            sum0_d11 <=  sum0_d10;
            sum0_d12 <=  sum0_d11;
            sum0_d13 <=  sum0_d12;
            sum0_d14 <=  sum0_d13;
            sum0_d15 <=  sum0_d14;
            sum0_d16 <=  sum0_d15;
            sum1_d1 <=  sum1;
            sum1_d2 <=  sum1_d1;
            sum1_d3 <=  sum1_d2;
            sum1_d4 <=  sum1_d3;
            sum1_d5 <=  sum1_d4;
            sum1_d6 <=  sum1_d5;
            sum1_d7 <=  sum1_d6;
            sum1_d8 <=  sum1_d7;
            sum1_d9 <=  sum1_d8;
            sum1_d10 <=  sum1_d9;
            sum1_d11 <=  sum1_d10;
            sum1_d12 <=  sum1_d11;
            sum1_d13 <=  sum1_d12;
            sum1_d14 <=  sum1_d13;
            sum1_d15 <=  sum1_d14;
            sum2_d1 <=  sum2;
            sum2_d2 <=  sum2_d1;
            sum2_d3 <=  sum2_d2;
            sum2_d4 <=  sum2_d3;
            sum2_d5 <=  sum2_d4;
            sum2_d6 <=  sum2_d5;
            sum2_d7 <=  sum2_d6;
            sum2_d8 <=  sum2_d7;
            sum2_d9 <=  sum2_d8;
            sum2_d10 <=  sum2_d9;
            sum2_d11 <=  sum2_d10;
            sum2_d12 <=  sum2_d11;
            sum2_d13 <=  sum2_d12;
            sum2_d14 <=  sum2_d13;
            sum3_d1 <=  sum3;
            sum3_d2 <=  sum3_d1;
            sum3_d3 <=  sum3_d2;
            sum3_d4 <=  sum3_d3;
            sum3_d5 <=  sum3_d4;
            sum3_d6 <=  sum3_d5;
            sum3_d7 <=  sum3_d6;
            sum3_d8 <=  sum3_d7;
            sum3_d9 <=  sum3_d8;
            sum3_d10 <=  sum3_d9;
            sum3_d11 <=  sum3_d10;
            sum3_d12 <=  sum3_d11;
            sum3_d13 <=  sum3_d12;
            sum4_d1 <=  sum4;
            sum4_d2 <=  sum4_d1;
            sum4_d3 <=  sum4_d2;
            sum4_d4 <=  sum4_d3;
            sum4_d5 <=  sum4_d4;
            sum4_d6 <=  sum4_d5;
            sum4_d7 <=  sum4_d6;
            sum4_d8 <=  sum4_d7;
            sum4_d9 <=  sum4_d8;
            sum4_d10 <=  sum4_d9;
            sum4_d11 <=  sum4_d10;
            sum4_d12 <=  sum4_d11;
            sum5_d1 <=  sum5;
            sum5_d2 <=  sum5_d1;
            sum5_d3 <=  sum5_d2;
            sum5_d4 <=  sum5_d3;
            sum5_d5 <=  sum5_d4;
            sum5_d6 <=  sum5_d5;
            sum5_d7 <=  sum5_d6;
            sum5_d8 <=  sum5_d7;
            sum5_d9 <=  sum5_d8;
            sum5_d10 <=  sum5_d9;
            sum5_d11 <=  sum5_d10;
            sum6_d1 <=  sum6;
            sum6_d2 <=  sum6_d1;
            sum6_d3 <=  sum6_d2;
            sum6_d4 <=  sum6_d3;
            sum6_d5 <=  sum6_d4;
            sum6_d6 <=  sum6_d5;
            sum6_d7 <=  sum6_d6;
            sum6_d8 <=  sum6_d7;
            sum6_d9 <=  sum6_d8;
            sum6_d10 <=  sum6_d9;
            sum7_d1 <=  sum7;
            sum7_d2 <=  sum7_d1;
            sum7_d3 <=  sum7_d2;
            sum7_d4 <=  sum7_d3;
            sum7_d5 <=  sum7_d4;
            sum7_d6 <=  sum7_d5;
            sum7_d7 <=  sum7_d6;
            sum7_d8 <=  sum7_d7;
            sum7_d9 <=  sum7_d8;
            sum8_d1 <=  sum8;
            sum8_d2 <=  sum8_d1;
            sum8_d3 <=  sum8_d2;
            sum8_d4 <=  sum8_d3;
            sum8_d5 <=  sum8_d4;
            sum8_d6 <=  sum8_d5;
            sum8_d7 <=  sum8_d6;
            sum8_d8 <=  sum8_d7;
            sum9_d1 <=  sum9;
            sum9_d2 <=  sum9_d1;
            sum9_d3 <=  sum9_d2;
            sum9_d4 <=  sum9_d3;
            sum9_d5 <=  sum9_d4;
            sum9_d6 <=  sum9_d5;
            sum9_d7 <=  sum9_d6;
            sum10_d1 <=  sum10;
            sum10_d2 <=  sum10_d1;
            sum10_d3 <=  sum10_d2;
            sum10_d4 <=  sum10_d3;
            sum10_d5 <=  sum10_d4;
            sum10_d6 <=  sum10_d5;
            sum11_d1 <=  sum11;
            sum11_d2 <=  sum11_d1;
            sum11_d3 <=  sum11_d2;
            sum11_d4 <=  sum11_d3;
            sum11_d5 <=  sum11_d4;
            sum12_d1 <=  sum12;
            sum12_d2 <=  sum12_d1;
            sum12_d3 <=  sum12_d2;
            sum12_d4 <=  sum12_d3;
            sum13_d1 <=  sum13;
            sum13_d2 <=  sum13_d1;
            sum13_d3 <=  sum13_d2;
            sum14_d1 <=  sum14;
            sum14_d2 <=  sum14_d1;
            sum15_d1 <=  sum15;
         end if;
      end process;
   --Classical
   x0 <= X(1 downto 0);
   y0 <= Y(1 downto 0);
   x1 <= X(3 downto 2);
   y1 <= Y(3 downto 2);
   x2 <= X(5 downto 4);
   y2 <= Y(5 downto 4);
   x3 <= X(7 downto 6);
   y3 <= Y(7 downto 6);
   x4 <= X(9 downto 8);
   y4 <= Y(9 downto 8);
   x5 <= X(11 downto 10);
   y5 <= Y(11 downto 10);
   x6 <= X(13 downto 12);
   y6 <= Y(13 downto 12);
   x7 <= X(15 downto 14);
   y7 <= Y(15 downto 14);
   x8 <= X(17 downto 16);
   y8 <= Y(17 downto 16);
   x9 <= X(19 downto 18);
   y9 <= Y(19 downto 18);
   x10 <= X(21 downto 20);
   y10 <= Y(21 downto 20);
   x11 <= X(23 downto 22);
   y11 <= Y(23 downto 22);
   x12 <= X(25 downto 24);
   y12 <= Y(25 downto 24);
   x13 <= X(27 downto 26);
   y13 <= Y(27 downto 26);
   x14 <= X(29 downto 28);
   y14 <= Y(29 downto 28);
   x15 <= X(31 downto 30);
   y15 <= Y(31 downto 30);
   x16 <= X(32 downto 32);
   y16 <= Y(32 downto 32);
   sum0 <= ( "0" & x0) + ( "0" & y0)  + Cin;
   ----------------Synchro barrier, entering cycle 1----------------
   sum1 <= ( "0" & x1_d1) + ( "0" & y1_d1)  + sum0_d1(2);
   ----------------Synchro barrier, entering cycle 2----------------
   sum2 <= ( "0" & x2_d2) + ( "0" & y2_d2)  + sum1_d1(2);
   ----------------Synchro barrier, entering cycle 3----------------
   sum3 <= ( "0" & x3_d3) + ( "0" & y3_d3)  + sum2_d1(2);
   ----------------Synchro barrier, entering cycle 4----------------
   sum4 <= ( "0" & x4_d4) + ( "0" & y4_d4)  + sum3_d1(2);
   ----------------Synchro barrier, entering cycle 5----------------
   sum5 <= ( "0" & x5_d5) + ( "0" & y5_d5)  + sum4_d1(2);
   ----------------Synchro barrier, entering cycle 6----------------
   sum6 <= ( "0" & x6_d6) + ( "0" & y6_d6)  + sum5_d1(2);
   ----------------Synchro barrier, entering cycle 7----------------
   sum7 <= ( "0" & x7_d7) + ( "0" & y7_d7)  + sum6_d1(2);
   ----------------Synchro barrier, entering cycle 8----------------
   sum8 <= ( "0" & x8_d8) + ( "0" & y8_d8)  + sum7_d1(2);
   ----------------Synchro barrier, entering cycle 9----------------
   sum9 <= ( "0" & x9_d9) + ( "0" & y9_d9)  + sum8_d1(2);
   ----------------Synchro barrier, entering cycle 10----------------
   sum10 <= ( "0" & x10_d10) + ( "0" & y10_d10)  + sum9_d1(2);
   ----------------Synchro barrier, entering cycle 11----------------
   sum11 <= ( "0" & x11_d11) + ( "0" & y11_d11)  + sum10_d1(2);
   ----------------Synchro barrier, entering cycle 12----------------
   sum12 <= ( "0" & x12_d12) + ( "0" & y12_d12)  + sum11_d1(2);
   ----------------Synchro barrier, entering cycle 13----------------
   sum13 <= ( "0" & x13_d13) + ( "0" & y13_d13)  + sum12_d1(2);
   ----------------Synchro barrier, entering cycle 14----------------
   sum14 <= ( "0" & x14_d14) + ( "0" & y14_d14)  + sum13_d1(2);
   ----------------Synchro barrier, entering cycle 15----------------
   sum15 <= ( "0" & x15_d15) + ( "0" & y15_d15)  + sum14_d1(2);
   ----------------Synchro barrier, entering cycle 16----------------
   sum16 <= ( "0" & x16_d16) + ( "0" & y16_d16)  + sum15_d1(2);
   R <= sum16(0 downto 0) & sum15_d1(1 downto 0) & sum14_d2(1 downto 0) & sum13_d3(1 downto 0) & sum12_d4(1 downto 0) & sum11_d5(1 downto 0) & sum10_d6(1 downto 0) & sum9_d7(1 downto 0) & sum8_d8(1 downto 0) & sum7_d9(1 downto 0) & sum6_d10(1 downto 0) & sum5_d11(1 downto 0) & sum4_d12(1 downto 0) & sum3_d13(1 downto 0) & sum2_d14(1 downto 0) & sum1_d15(1 downto 0) & sum0_d16(1 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                                  fp_power
--                        (FPSquare_8_23_23_F750_uid2)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2009)
--------------------------------------------------------------------------------
-- Pipeline depth: 23 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity fp_power is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of fp_power is
   component IntSquarer_24_F750_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             R : out  std_logic_vector(47 downto 0)   );
   end component;

   component IntAdder_33_f750_uid8 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(32 downto 0);
             Y : in  std_logic_vector(32 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(32 downto 0)   );
   end component;

signal exc, exc_d1, exc_d2, exc_d3, exc_d4, exc_d5, exc_d6, exc_d7, exc_d8, exc_d9, exc_d10, exc_d11, exc_d12, exc_d13, exc_d14, exc_d15, exc_d16, exc_d17, exc_d18, exc_d19, exc_d20, exc_d21, exc_d22 :  std_logic_vector(1 downto 0);
signal exp :  std_logic_vector(7 downto 0);
signal frac :  std_logic_vector(23 downto 0);
signal extExponent :  std_logic_vector(9 downto 0);
signal negBias :  std_logic_vector(9 downto 0);
signal extExpPostBiasSub, extExpPostBiasSub_d1, extExpPostBiasSub_d2, extExpPostBiasSub_d3, extExpPostBiasSub_d4, extExpPostBiasSub_d5, extExpPostBiasSub_d6 :  std_logic_vector(9 downto 0);
signal sqrFrac, sqrFrac_d1, sqrFrac_d2 :  std_logic_vector(47 downto 0);
signal sticky :  std_logic;
signal guard :  std_logic;
signal fracULP :  std_logic;
signal extExp :  std_logic_vector(9 downto 0);
signal finalFrac :  std_logic_vector(22 downto 0);
signal concatExpFrac :  std_logic_vector(32 downto 0);
signal addCin :  std_logic;
signal postRound, postRound_d1 :  std_logic_vector(32 downto 0);
signal excConcat, excConcat_d1 :  std_logic_vector(3 downto 0);
signal excR :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            exc_d1 <=  exc;
            exc_d2 <=  exc_d1;
            exc_d3 <=  exc_d2;
            exc_d4 <=  exc_d3;
            exc_d5 <=  exc_d4;
            exc_d6 <=  exc_d5;
            exc_d7 <=  exc_d6;
            exc_d8 <=  exc_d7;
            exc_d9 <=  exc_d8;
            exc_d10 <=  exc_d9;
            exc_d11 <=  exc_d10;
            exc_d12 <=  exc_d11;
            exc_d13 <=  exc_d12;
            exc_d14 <=  exc_d13;
            exc_d15 <=  exc_d14;
            exc_d16 <=  exc_d15;
            exc_d17 <=  exc_d16;
            exc_d18 <=  exc_d17;
            exc_d19 <=  exc_d18;
            exc_d20 <=  exc_d19;
            exc_d21 <=  exc_d20;
            exc_d22 <=  exc_d21;
            extExpPostBiasSub_d1 <=  extExpPostBiasSub;
            extExpPostBiasSub_d2 <=  extExpPostBiasSub_d1;
            extExpPostBiasSub_d3 <=  extExpPostBiasSub_d2;
            extExpPostBiasSub_d4 <=  extExpPostBiasSub_d3;
            extExpPostBiasSub_d5 <=  extExpPostBiasSub_d4;
            extExpPostBiasSub_d6 <=  extExpPostBiasSub_d5;
            sqrFrac_d1 <=  sqrFrac;
            sqrFrac_d2 <=  sqrFrac_d1;
            postRound_d1 <=  postRound;
            excConcat_d1 <=  excConcat;
         end if;
      end process;
   exc <= X(33 downto 32);
   exp <= X(30 downto 23);
   frac <= "1" & X(22 downto 0);
   extExponent<="0" & exp & "0";
   negBias<=CONV_STD_LOGIC_VECTOR(896,10);
   extExpPostBiasSub <= extExponent + negBias + '1';
   FractionSquarer: IntSquarer_24_F750_uid4  -- pipelineDepth=4 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => sqrFrac   ,
                 X => frac);
   ----------------Synchro barrier, entering cycle 4----------------
   ----------------Synchro barrier, entering cycle 5----------------
   ----------------Synchro barrier, entering cycle 6----------------
   sticky<='0' when sqrFrac_d2(21 downto 0)="0000000000000000000000"else '1';
   guard <= sqrFrac_d2(22) when sqrFrac_d2(47)='0' else sqrFrac_d2(23);
   fracULP<=sqrFrac_d2(23) when sqrFrac_d2(47)='0' else sqrFrac_d2(24);
   extExp <= extExpPostBiasSub_d6 + sqrFrac_d2(47);
   finalFrac<= sqrFrac_d2(46 downto 24) when sqrFrac_d2(47)='1' else 
      sqrFrac_d2(45 downto 23);
   concatExpFrac <= extExp & finalFrac;
   addCin <= (guard and sticky) or (fracULP and guard and not(sticky));
   Rounding_Instance: IntAdder_33_f750_uid8  -- pipelineDepth=16 maxInDelay=4.4472e-10
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => addCin,
                 R => postRound,
                 X => concatExpFrac,
                 Y => "000000000000000000000000000000000");
   ----------------Synchro barrier, entering cycle 22----------------
   excConcat <= exc_d22 & postRound(32 downto 31);
   ----------------Synchro barrier, entering cycle 23----------------
   with excConcat_d1 select 
   excR<="00" when "0000",
      "00" when "0001",
      "00" when "0010",
      "00" when "0011",
      "01" when "0100",
      "10" when "0101",
      "00" when "0110",
      "00" when "0111",
      "10" when "1000",
      "10" when "1001",
      "10" when "1010",
      "10" when "1011",
      "11" when "1100",
      "11" when "1101",
      "11" when "1110",
      "11" when "1111",
      "11" when others;
   R <= excR &  "0"  & postRound_d1(30 downto 23) & postRound_d1(22 downto 0);
end architecture;

