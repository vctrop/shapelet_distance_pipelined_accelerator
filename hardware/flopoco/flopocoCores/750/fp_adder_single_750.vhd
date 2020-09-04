--------------------------------------------------------------------------------
--                    RightShifter_24_by_max_26_F750_uid4
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2011)
--------------------------------------------------------------------------------
-- Pipeline depth: 3 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity RightShifter_24_by_max_26_F750_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          S : in  std_logic_vector(4 downto 0);
          R : out  std_logic_vector(49 downto 0)   );
end entity;

architecture arch of RightShifter_24_by_max_26_F750_uid4 is
signal level0 :  std_logic_vector(23 downto 0);
signal ps, ps_d1, ps_d2, ps_d3 :  std_logic_vector(4 downto 0);
signal level1, level1_d1 :  std_logic_vector(24 downto 0);
signal level2 :  std_logic_vector(26 downto 0);
signal level3, level3_d1 :  std_logic_vector(30 downto 0);
signal level4, level4_d1 :  std_logic_vector(38 downto 0);
signal level5 :  std_logic_vector(54 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            ps_d1 <=  ps;
            ps_d2 <=  ps_d1;
            ps_d3 <=  ps_d2;
            level1_d1 <=  level1;
            level3_d1 <=  level3;
            level4_d1 <=  level4;
         end if;
      end process;
   level0<= X;
   ps<= S;
   level1<=  (0 downto 0 => '0') & level0 when ps(0) = '1' else    level0 & (0 downto 0 => '0');
   ----------------Synchro barrier, entering cycle 1----------------
   level2<=  (1 downto 0 => '0') & level1_d1 when ps_d1(1) = '1' else    level1_d1 & (1 downto 0 => '0');
   level3<=  (3 downto 0 => '0') & level2 when ps_d1(2) = '1' else    level2 & (3 downto 0 => '0');
   ----------------Synchro barrier, entering cycle 2----------------
   level4<=  (7 downto 0 => '0') & level3_d1 when ps_d2(3) = '1' else    level3_d1 & (7 downto 0 => '0');
   ----------------Synchro barrier, entering cycle 3----------------
   level5<=  (15 downto 0 => '0') & level4_d1 when ps_d3(4) = '1' else    level4_d1 & (15 downto 0 => '0');
   R <= level5(54 downto 5);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_27_f750_uid8
--                     (IntAdderClassical_27_F750_uid10)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 13 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_27_f750_uid8 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(26 downto 0);
          Y : in  std_logic_vector(26 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(26 downto 0)   );
end entity;

architecture arch of IntAdder_27_f750_uid8 is
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
signal x13, x13_d1, x13_d2, x13_d3, x13_d4, x13_d5, x13_d6, x13_d7, x13_d8, x13_d9, x13_d10, x13_d11, x13_d12, x13_d13 :  std_logic_vector(0 downto 0);
signal y13, y13_d1, y13_d2, y13_d3, y13_d4, y13_d5, y13_d6, y13_d7, y13_d8, y13_d9, y13_d10, y13_d11, y13_d12, y13_d13 :  std_logic_vector(0 downto 0);
signal sum0, sum0_d1, sum0_d2, sum0_d3, sum0_d4, sum0_d5, sum0_d6, sum0_d7, sum0_d8, sum0_d9, sum0_d10, sum0_d11, sum0_d12, sum0_d13 :  std_logic_vector(2 downto 0);
signal sum1, sum1_d1, sum1_d2, sum1_d3, sum1_d4, sum1_d5, sum1_d6, sum1_d7, sum1_d8, sum1_d9, sum1_d10, sum1_d11, sum1_d12 :  std_logic_vector(2 downto 0);
signal sum2, sum2_d1, sum2_d2, sum2_d3, sum2_d4, sum2_d5, sum2_d6, sum2_d7, sum2_d8, sum2_d9, sum2_d10, sum2_d11 :  std_logic_vector(2 downto 0);
signal sum3, sum3_d1, sum3_d2, sum3_d3, sum3_d4, sum3_d5, sum3_d6, sum3_d7, sum3_d8, sum3_d9, sum3_d10 :  std_logic_vector(2 downto 0);
signal sum4, sum4_d1, sum4_d2, sum4_d3, sum4_d4, sum4_d5, sum4_d6, sum4_d7, sum4_d8, sum4_d9 :  std_logic_vector(2 downto 0);
signal sum5, sum5_d1, sum5_d2, sum5_d3, sum5_d4, sum5_d5, sum5_d6, sum5_d7, sum5_d8 :  std_logic_vector(2 downto 0);
signal sum6, sum6_d1, sum6_d2, sum6_d3, sum6_d4, sum6_d5, sum6_d6, sum6_d7 :  std_logic_vector(2 downto 0);
signal sum7, sum7_d1, sum7_d2, sum7_d3, sum7_d4, sum7_d5, sum7_d6 :  std_logic_vector(2 downto 0);
signal sum8, sum8_d1, sum8_d2, sum8_d3, sum8_d4, sum8_d5 :  std_logic_vector(2 downto 0);
signal sum9, sum9_d1, sum9_d2, sum9_d3, sum9_d4 :  std_logic_vector(2 downto 0);
signal sum10, sum10_d1, sum10_d2, sum10_d3 :  std_logic_vector(2 downto 0);
signal sum11, sum11_d1, sum11_d2 :  std_logic_vector(2 downto 0);
signal sum12, sum12_d1 :  std_logic_vector(2 downto 0);
signal sum13 :  std_logic_vector(1 downto 0);
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
            sum4_d1 <=  sum4;
            sum4_d2 <=  sum4_d1;
            sum4_d3 <=  sum4_d2;
            sum4_d4 <=  sum4_d3;
            sum4_d5 <=  sum4_d4;
            sum4_d6 <=  sum4_d5;
            sum4_d7 <=  sum4_d6;
            sum4_d8 <=  sum4_d7;
            sum4_d9 <=  sum4_d8;
            sum5_d1 <=  sum5;
            sum5_d2 <=  sum5_d1;
            sum5_d3 <=  sum5_d2;
            sum5_d4 <=  sum5_d3;
            sum5_d5 <=  sum5_d4;
            sum5_d6 <=  sum5_d5;
            sum5_d7 <=  sum5_d6;
            sum5_d8 <=  sum5_d7;
            sum6_d1 <=  sum6;
            sum6_d2 <=  sum6_d1;
            sum6_d3 <=  sum6_d2;
            sum6_d4 <=  sum6_d3;
            sum6_d5 <=  sum6_d4;
            sum6_d6 <=  sum6_d5;
            sum6_d7 <=  sum6_d6;
            sum7_d1 <=  sum7;
            sum7_d2 <=  sum7_d1;
            sum7_d3 <=  sum7_d2;
            sum7_d4 <=  sum7_d3;
            sum7_d5 <=  sum7_d4;
            sum7_d6 <=  sum7_d5;
            sum8_d1 <=  sum8;
            sum8_d2 <=  sum8_d1;
            sum8_d3 <=  sum8_d2;
            sum8_d4 <=  sum8_d3;
            sum8_d5 <=  sum8_d4;
            sum9_d1 <=  sum9;
            sum9_d2 <=  sum9_d1;
            sum9_d3 <=  sum9_d2;
            sum9_d4 <=  sum9_d3;
            sum10_d1 <=  sum10;
            sum10_d2 <=  sum10_d1;
            sum10_d3 <=  sum10_d2;
            sum11_d1 <=  sum11;
            sum11_d2 <=  sum11_d1;
            sum12_d1 <=  sum12;
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
   x13 <= X(26 downto 26);
   y13 <= Y(26 downto 26);
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
   R <= sum13(0 downto 0) & sum12_d1(1 downto 0) & sum11_d2(1 downto 0) & sum10_d3(1 downto 0) & sum9_d4(1 downto 0) & sum8_d5(1 downto 0) & sum7_d6(1 downto 0) & sum6_d7(1 downto 0) & sum5_d8(1 downto 0) & sum4_d9(1 downto 0) & sum3_d10(1 downto 0) & sum2_d11(1 downto 0) & sum1_d12(1 downto 0) & sum0_d13(1 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                 LZCShifter_28_to_28_counting_32_F750_uid16
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2007)
--------------------------------------------------------------------------------
-- Pipeline depth: 5 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity LZCShifter_28_to_28_counting_32_F750_uid16 is
   port ( clk, rst : in std_logic;
          I : in  std_logic_vector(27 downto 0);
          Count : out  std_logic_vector(4 downto 0);
          O : out  std_logic_vector(27 downto 0)   );
end entity;

architecture arch of LZCShifter_28_to_28_counting_32_F750_uid16 is
signal level5, level5_d1 :  std_logic_vector(27 downto 0);
signal count4, count4_d1, count4_d2, count4_d3, count4_d4, count4_d5 :  std_logic;
signal level4, level4_d1 :  std_logic_vector(27 downto 0);
signal count3, count3_d1, count3_d2, count3_d3, count3_d4 :  std_logic;
signal level3, level3_d1 :  std_logic_vector(27 downto 0);
signal count2, count2_d1, count2_d2, count2_d3 :  std_logic;
signal level2, level2_d1 :  std_logic_vector(27 downto 0);
signal count1, count1_d1, count1_d2 :  std_logic;
signal level1, level1_d1 :  std_logic_vector(27 downto 0);
signal count0, count0_d1 :  std_logic;
signal level0 :  std_logic_vector(27 downto 0);
signal sCount :  std_logic_vector(4 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            level5_d1 <=  level5;
            count4_d1 <=  count4;
            count4_d2 <=  count4_d1;
            count4_d3 <=  count4_d2;
            count4_d4 <=  count4_d3;
            count4_d5 <=  count4_d4;
            level4_d1 <=  level4;
            count3_d1 <=  count3;
            count3_d2 <=  count3_d1;
            count3_d3 <=  count3_d2;
            count3_d4 <=  count3_d3;
            level3_d1 <=  level3;
            count2_d1 <=  count2;
            count2_d2 <=  count2_d1;
            count2_d3 <=  count2_d2;
            level2_d1 <=  level2;
            count1_d1 <=  count1;
            count1_d2 <=  count1_d1;
            level1_d1 <=  level1;
            count0_d1 <=  count0;
         end if;
      end process;
   level5 <= I ;
   count4<= '1' when level5(27 downto 12) = (27 downto 12=>'0') else '0';
   ----------------Synchro barrier, entering cycle 1----------------
   level4<= level5_d1(27 downto 0) when count4_d1='0' else level5_d1(11 downto 0) & (15 downto 0 => '0');

   count3<= '1' when level4(27 downto 20) = (27 downto 20=>'0') else '0';
   ----------------Synchro barrier, entering cycle 2----------------
   level3<= level4_d1(27 downto 0) when count3_d1='0' else level4_d1(19 downto 0) & (7 downto 0 => '0');

   count2<= '1' when level3(27 downto 24) = (27 downto 24=>'0') else '0';
   ----------------Synchro barrier, entering cycle 3----------------
   level2<= level3_d1(27 downto 0) when count2_d1='0' else level3_d1(23 downto 0) & (3 downto 0 => '0');

   count1<= '1' when level2(27 downto 26) = (27 downto 26=>'0') else '0';
   ----------------Synchro barrier, entering cycle 4----------------
   level1<= level2_d1(27 downto 0) when count1_d1='0' else level2_d1(25 downto 0) & (1 downto 0 => '0');

   count0<= '1' when level1(27 downto 27) = (27 downto 27=>'0') else '0';
   ----------------Synchro barrier, entering cycle 5----------------
   level0<= level1_d1(27 downto 0) when count0_d1='0' else level1_d1(26 downto 0) & (0 downto 0 => '0');

   O <= level0;
   sCount <= count4_d5 & count3_d4 & count2_d3 & count1_d2 & count0_d1;
   Count <= sCount;
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_34_f750_uid20
--                     (IntAdderClassical_34_F750_uid22)
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

entity IntAdder_34_f750_uid20 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(33 downto 0);
          Y : in  std_logic_vector(33 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(33 downto 0)   );
end entity;

architecture arch of IntAdder_34_f750_uid20 is
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
signal x16, x16_d1, x16_d2, x16_d3, x16_d4, x16_d5, x16_d6, x16_d7, x16_d8, x16_d9, x16_d10, x16_d11, x16_d12, x16_d13, x16_d14, x16_d15, x16_d16 :  std_logic_vector(1 downto 0);
signal y16, y16_d1, y16_d2, y16_d3, y16_d4, y16_d5, y16_d6, y16_d7, y16_d8, y16_d9, y16_d10, y16_d11, y16_d12, y16_d13, y16_d14, y16_d15, y16_d16 :  std_logic_vector(1 downto 0);
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
signal sum16 :  std_logic_vector(2 downto 0);
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
   x16 <= X(33 downto 32);
   y16 <= Y(33 downto 32);
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
   R <= sum16(1 downto 0) & sum15_d1(1 downto 0) & sum14_d2(1 downto 0) & sum13_d3(1 downto 0) & sum12_d4(1 downto 0) & sum11_d5(1 downto 0) & sum10_d6(1 downto 0) & sum9_d7(1 downto 0) & sum8_d8(1 downto 0) & sum7_d9(1 downto 0) & sum6_d10(1 downto 0) & sum5_d11(1 downto 0) & sum4_d12(1 downto 0) & sum3_d13(1 downto 0) & sum2_d14(1 downto 0) & sum1_d15(1 downto 0) & sum0_d16(1 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                              fp_adder_single
--                           (FPAdd_8_23_F750_uid2)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 44 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity fp_adder_single is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          Y : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of fp_adder_single is
   component RightShifter_24_by_max_26_F750_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             S : in  std_logic_vector(4 downto 0);
             R : out  std_logic_vector(49 downto 0)   );
   end component;

   component IntAdder_27_f750_uid8 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(26 downto 0);
             Y : in  std_logic_vector(26 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(26 downto 0)   );
   end component;

   component LZCShifter_28_to_28_counting_32_F750_uid16 is
      port ( clk, rst : in std_logic;
             I : in  std_logic_vector(27 downto 0);
             Count : out  std_logic_vector(4 downto 0);
             O : out  std_logic_vector(27 downto 0)   );
   end component;

   component IntAdder_34_f750_uid20 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(33 downto 0);
             Y : in  std_logic_vector(33 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(33 downto 0)   );
   end component;

signal excExpFracX, excExpFracX_d1, excExpFracX_d2 :  std_logic_vector(32 downto 0);
signal excExpFracY, excExpFracY_d1, excExpFracY_d2 :  std_logic_vector(32 downto 0);
signal eXmeY, eXmeY_d1 :  std_logic_vector(8 downto 0);
signal eYmeX, eYmeX_d1 :  std_logic_vector(8 downto 0);
signal swap :  std_logic;
signal newX, newX_d1, newX_d2, newX_d3, newX_d4, newX_d5 :  std_logic_vector(33 downto 0);
signal newY, newY_d1 :  std_logic_vector(33 downto 0);
signal expX, expX_d1, expX_d2, expX_d3, expX_d4, expX_d5, expX_d6, expX_d7, expX_d8, expX_d9, expX_d10, expX_d11, expX_d12, expX_d13, expX_d14, expX_d15, expX_d16, expX_d17, expX_d18, expX_d19 :  std_logic_vector(7 downto 0);
signal excX :  std_logic_vector(1 downto 0);
signal excY, excY_d1 :  std_logic_vector(1 downto 0);
signal signX, signX_d1, signX_d2 :  std_logic;
signal signY :  std_logic;
signal EffSub, EffSub_d1, EffSub_d2, EffSub_d3, EffSub_d4, EffSub_d5, EffSub_d6, EffSub_d7, EffSub_d8, EffSub_d9, EffSub_d10, EffSub_d11, EffSub_d12, EffSub_d13, EffSub_d14, EffSub_d15, EffSub_d16, EffSub_d17, EffSub_d18, EffSub_d19, EffSub_d20, EffSub_d21, EffSub_d22, EffSub_d23, EffSub_d24, EffSub_d25, EffSub_d26, EffSub_d27, EffSub_d28, EffSub_d29, EffSub_d30, EffSub_d31, EffSub_d32, EffSub_d33, EffSub_d34, EffSub_d35, EffSub_d36, EffSub_d37, EffSub_d38, EffSub_d39, EffSub_d40, EffSub_d41, EffSub_d42 :  std_logic;
signal sXsYExnXY, sXsYExnXY_d1, sXsYExnXY_d2 :  std_logic_vector(5 downto 0);
signal sdExnXY :  std_logic_vector(3 downto 0);
signal fracY :  std_logic_vector(23 downto 0);
signal excRt, excRt_d1, excRt_d2, excRt_d3, excRt_d4, excRt_d5, excRt_d6, excRt_d7, excRt_d8, excRt_d9, excRt_d10, excRt_d11, excRt_d12, excRt_d13, excRt_d14, excRt_d15, excRt_d16, excRt_d17, excRt_d18, excRt_d19, excRt_d20, excRt_d21, excRt_d22, excRt_d23, excRt_d24, excRt_d25, excRt_d26, excRt_d27, excRt_d28, excRt_d29, excRt_d30, excRt_d31, excRt_d32, excRt_d33, excRt_d34, excRt_d35, excRt_d36, excRt_d37, excRt_d38, excRt_d39, excRt_d40, excRt_d41 :  std_logic_vector(1 downto 0);
signal signR, signR_d1, signR_d2, signR_d3, signR_d4, signR_d5, signR_d6, signR_d7, signR_d8, signR_d9, signR_d10, signR_d11, signR_d12, signR_d13, signR_d14, signR_d15, signR_d16, signR_d17, signR_d18, signR_d19, signR_d20, signR_d21, signR_d22, signR_d23, signR_d24, signR_d25, signR_d26, signR_d27, signR_d28, signR_d29, signR_d30, signR_d31, signR_d32, signR_d33, signR_d34, signR_d35, signR_d36, signR_d37, signR_d38, signR_d39, signR_d40 :  std_logic;
signal expDiff, expDiff_d1 :  std_logic_vector(8 downto 0);
signal shiftedOut :  std_logic;
signal shiftVal :  std_logic_vector(4 downto 0);
signal shiftedFracY, shiftedFracY_d1, shiftedFracY_d2 :  std_logic_vector(49 downto 0);
signal sticky, sticky_d1, sticky_d2, sticky_d3, sticky_d4, sticky_d5, sticky_d6, sticky_d7, sticky_d8, sticky_d9, sticky_d10, sticky_d11, sticky_d12, sticky_d13 :  std_logic;
signal fracYfar :  std_logic_vector(26 downto 0);
signal EffSubVector :  std_logic_vector(26 downto 0);
signal fracYfarXorOp, fracYfarXorOp_d1 :  std_logic_vector(26 downto 0);
signal fracXfar, fracXfar_d1 :  std_logic_vector(26 downto 0);
signal cInAddFar :  std_logic;
signal fracAddResult :  std_logic_vector(26 downto 0);
signal fracGRS :  std_logic_vector(27 downto 0);
signal extendedExpInc, extendedExpInc_d1, extendedExpInc_d2, extendedExpInc_d3, extendedExpInc_d4, extendedExpInc_d5, extendedExpInc_d6 :  std_logic_vector(9 downto 0);
signal nZerosNew, nZerosNew_d1 :  std_logic_vector(4 downto 0);
signal shiftedFrac, shiftedFrac_d1 :  std_logic_vector(27 downto 0);
signal updatedExp :  std_logic_vector(9 downto 0);
signal eqdiffsign, eqdiffsign_d1, eqdiffsign_d2, eqdiffsign_d3, eqdiffsign_d4, eqdiffsign_d5, eqdiffsign_d6, eqdiffsign_d7, eqdiffsign_d8, eqdiffsign_d9, eqdiffsign_d10, eqdiffsign_d11, eqdiffsign_d12, eqdiffsign_d13, eqdiffsign_d14, eqdiffsign_d15, eqdiffsign_d16, eqdiffsign_d17 :  std_logic;
signal expFrac :  std_logic_vector(33 downto 0);
signal stk, stk_d1 :  std_logic;
signal rnd, rnd_d1 :  std_logic;
signal grd, grd_d1 :  std_logic;
signal lsb, lsb_d1 :  std_logic;
signal addToRoundBit :  std_logic;
signal RoundedExpFrac :  std_logic_vector(33 downto 0);
signal upExc, upExc_d1 :  std_logic_vector(1 downto 0);
signal fracR, fracR_d1 :  std_logic_vector(22 downto 0);
signal expR, expR_d1 :  std_logic_vector(7 downto 0);
signal exExpExc :  std_logic_vector(3 downto 0);
signal excRt2 :  std_logic_vector(1 downto 0);
signal excR :  std_logic_vector(1 downto 0);
signal signR2 :  std_logic;
signal computedR :  std_logic_vector(33 downto 0);
signal X_d1, X_d2 :  std_logic_vector(8+23+2 downto 0);
signal Y_d1, Y_d2 :  std_logic_vector(8+23+2 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            excExpFracX_d1 <=  excExpFracX;
            excExpFracX_d2 <=  excExpFracX_d1;
            excExpFracY_d1 <=  excExpFracY;
            excExpFracY_d2 <=  excExpFracY_d1;
            eXmeY_d1 <=  eXmeY;
            eYmeX_d1 <=  eYmeX;
            newX_d1 <=  newX;
            newX_d2 <=  newX_d1;
            newX_d3 <=  newX_d2;
            newX_d4 <=  newX_d3;
            newX_d5 <=  newX_d4;
            newY_d1 <=  newY;
            expX_d1 <=  expX;
            expX_d2 <=  expX_d1;
            expX_d3 <=  expX_d2;
            expX_d4 <=  expX_d3;
            expX_d5 <=  expX_d4;
            expX_d6 <=  expX_d5;
            expX_d7 <=  expX_d6;
            expX_d8 <=  expX_d7;
            expX_d9 <=  expX_d8;
            expX_d10 <=  expX_d9;
            expX_d11 <=  expX_d10;
            expX_d12 <=  expX_d11;
            expX_d13 <=  expX_d12;
            expX_d14 <=  expX_d13;
            expX_d15 <=  expX_d14;
            expX_d16 <=  expX_d15;
            expX_d17 <=  expX_d16;
            expX_d18 <=  expX_d17;
            expX_d19 <=  expX_d18;
            excY_d1 <=  excY;
            signX_d1 <=  signX;
            signX_d2 <=  signX_d1;
            EffSub_d1 <=  EffSub;
            EffSub_d2 <=  EffSub_d1;
            EffSub_d3 <=  EffSub_d2;
            EffSub_d4 <=  EffSub_d3;
            EffSub_d5 <=  EffSub_d4;
            EffSub_d6 <=  EffSub_d5;
            EffSub_d7 <=  EffSub_d6;
            EffSub_d8 <=  EffSub_d7;
            EffSub_d9 <=  EffSub_d8;
            EffSub_d10 <=  EffSub_d9;
            EffSub_d11 <=  EffSub_d10;
            EffSub_d12 <=  EffSub_d11;
            EffSub_d13 <=  EffSub_d12;
            EffSub_d14 <=  EffSub_d13;
            EffSub_d15 <=  EffSub_d14;
            EffSub_d16 <=  EffSub_d15;
            EffSub_d17 <=  EffSub_d16;
            EffSub_d18 <=  EffSub_d17;
            EffSub_d19 <=  EffSub_d18;
            EffSub_d20 <=  EffSub_d19;
            EffSub_d21 <=  EffSub_d20;
            EffSub_d22 <=  EffSub_d21;
            EffSub_d23 <=  EffSub_d22;
            EffSub_d24 <=  EffSub_d23;
            EffSub_d25 <=  EffSub_d24;
            EffSub_d26 <=  EffSub_d25;
            EffSub_d27 <=  EffSub_d26;
            EffSub_d28 <=  EffSub_d27;
            EffSub_d29 <=  EffSub_d28;
            EffSub_d30 <=  EffSub_d29;
            EffSub_d31 <=  EffSub_d30;
            EffSub_d32 <=  EffSub_d31;
            EffSub_d33 <=  EffSub_d32;
            EffSub_d34 <=  EffSub_d33;
            EffSub_d35 <=  EffSub_d34;
            EffSub_d36 <=  EffSub_d35;
            EffSub_d37 <=  EffSub_d36;
            EffSub_d38 <=  EffSub_d37;
            EffSub_d39 <=  EffSub_d38;
            EffSub_d40 <=  EffSub_d39;
            EffSub_d41 <=  EffSub_d40;
            EffSub_d42 <=  EffSub_d41;
            sXsYExnXY_d1 <=  sXsYExnXY;
            sXsYExnXY_d2 <=  sXsYExnXY_d1;
            excRt_d1 <=  excRt;
            excRt_d2 <=  excRt_d1;
            excRt_d3 <=  excRt_d2;
            excRt_d4 <=  excRt_d3;
            excRt_d5 <=  excRt_d4;
            excRt_d6 <=  excRt_d5;
            excRt_d7 <=  excRt_d6;
            excRt_d8 <=  excRt_d7;
            excRt_d9 <=  excRt_d8;
            excRt_d10 <=  excRt_d9;
            excRt_d11 <=  excRt_d10;
            excRt_d12 <=  excRt_d11;
            excRt_d13 <=  excRt_d12;
            excRt_d14 <=  excRt_d13;
            excRt_d15 <=  excRt_d14;
            excRt_d16 <=  excRt_d15;
            excRt_d17 <=  excRt_d16;
            excRt_d18 <=  excRt_d17;
            excRt_d19 <=  excRt_d18;
            excRt_d20 <=  excRt_d19;
            excRt_d21 <=  excRt_d20;
            excRt_d22 <=  excRt_d21;
            excRt_d23 <=  excRt_d22;
            excRt_d24 <=  excRt_d23;
            excRt_d25 <=  excRt_d24;
            excRt_d26 <=  excRt_d25;
            excRt_d27 <=  excRt_d26;
            excRt_d28 <=  excRt_d27;
            excRt_d29 <=  excRt_d28;
            excRt_d30 <=  excRt_d29;
            excRt_d31 <=  excRt_d30;
            excRt_d32 <=  excRt_d31;
            excRt_d33 <=  excRt_d32;
            excRt_d34 <=  excRt_d33;
            excRt_d35 <=  excRt_d34;
            excRt_d36 <=  excRt_d35;
            excRt_d37 <=  excRt_d36;
            excRt_d38 <=  excRt_d37;
            excRt_d39 <=  excRt_d38;
            excRt_d40 <=  excRt_d39;
            excRt_d41 <=  excRt_d40;
            signR_d1 <=  signR;
            signR_d2 <=  signR_d1;
            signR_d3 <=  signR_d2;
            signR_d4 <=  signR_d3;
            signR_d5 <=  signR_d4;
            signR_d6 <=  signR_d5;
            signR_d7 <=  signR_d6;
            signR_d8 <=  signR_d7;
            signR_d9 <=  signR_d8;
            signR_d10 <=  signR_d9;
            signR_d11 <=  signR_d10;
            signR_d12 <=  signR_d11;
            signR_d13 <=  signR_d12;
            signR_d14 <=  signR_d13;
            signR_d15 <=  signR_d14;
            signR_d16 <=  signR_d15;
            signR_d17 <=  signR_d16;
            signR_d18 <=  signR_d17;
            signR_d19 <=  signR_d18;
            signR_d20 <=  signR_d19;
            signR_d21 <=  signR_d20;
            signR_d22 <=  signR_d21;
            signR_d23 <=  signR_d22;
            signR_d24 <=  signR_d23;
            signR_d25 <=  signR_d24;
            signR_d26 <=  signR_d25;
            signR_d27 <=  signR_d26;
            signR_d28 <=  signR_d27;
            signR_d29 <=  signR_d28;
            signR_d30 <=  signR_d29;
            signR_d31 <=  signR_d30;
            signR_d32 <=  signR_d31;
            signR_d33 <=  signR_d32;
            signR_d34 <=  signR_d33;
            signR_d35 <=  signR_d34;
            signR_d36 <=  signR_d35;
            signR_d37 <=  signR_d36;
            signR_d38 <=  signR_d37;
            signR_d39 <=  signR_d38;
            signR_d40 <=  signR_d39;
            expDiff_d1 <=  expDiff;
            shiftedFracY_d1 <=  shiftedFracY;
            shiftedFracY_d2 <=  shiftedFracY_d1;
            sticky_d1 <=  sticky;
            sticky_d2 <=  sticky_d1;
            sticky_d3 <=  sticky_d2;
            sticky_d4 <=  sticky_d3;
            sticky_d5 <=  sticky_d4;
            sticky_d6 <=  sticky_d5;
            sticky_d7 <=  sticky_d6;
            sticky_d8 <=  sticky_d7;
            sticky_d9 <=  sticky_d8;
            sticky_d10 <=  sticky_d9;
            sticky_d11 <=  sticky_d10;
            sticky_d12 <=  sticky_d11;
            sticky_d13 <=  sticky_d12;
            fracYfarXorOp_d1 <=  fracYfarXorOp;
            fracXfar_d1 <=  fracXfar;
            extendedExpInc_d1 <=  extendedExpInc;
            extendedExpInc_d2 <=  extendedExpInc_d1;
            extendedExpInc_d3 <=  extendedExpInc_d2;
            extendedExpInc_d4 <=  extendedExpInc_d3;
            extendedExpInc_d5 <=  extendedExpInc_d4;
            extendedExpInc_d6 <=  extendedExpInc_d5;
            nZerosNew_d1 <=  nZerosNew;
            shiftedFrac_d1 <=  shiftedFrac;
            eqdiffsign_d1 <=  eqdiffsign;
            eqdiffsign_d2 <=  eqdiffsign_d1;
            eqdiffsign_d3 <=  eqdiffsign_d2;
            eqdiffsign_d4 <=  eqdiffsign_d3;
            eqdiffsign_d5 <=  eqdiffsign_d4;
            eqdiffsign_d6 <=  eqdiffsign_d5;
            eqdiffsign_d7 <=  eqdiffsign_d6;
            eqdiffsign_d8 <=  eqdiffsign_d7;
            eqdiffsign_d9 <=  eqdiffsign_d8;
            eqdiffsign_d10 <=  eqdiffsign_d9;
            eqdiffsign_d11 <=  eqdiffsign_d10;
            eqdiffsign_d12 <=  eqdiffsign_d11;
            eqdiffsign_d13 <=  eqdiffsign_d12;
            eqdiffsign_d14 <=  eqdiffsign_d13;
            eqdiffsign_d15 <=  eqdiffsign_d14;
            eqdiffsign_d16 <=  eqdiffsign_d15;
            eqdiffsign_d17 <=  eqdiffsign_d16;
            stk_d1 <=  stk;
            rnd_d1 <=  rnd;
            grd_d1 <=  grd;
            lsb_d1 <=  lsb;
            upExc_d1 <=  upExc;
            fracR_d1 <=  fracR;
            expR_d1 <=  expR;
            X_d1 <=  X;
            X_d2 <=  X_d1;
            Y_d1 <=  Y;
            Y_d2 <=  Y_d1;
         end if;
      end process;
-- Exponent difference and swap  --
   excExpFracX <= X(33 downto 32) & X(30 downto 0);
   excExpFracY <= Y(33 downto 32) & Y(30 downto 0);
   ----------------Synchro barrier, entering cycle 1----------------
   eXmeY <= ("0" & X_d1(30 downto 23)) - ("0" & Y_d1(30 downto 23));
   eYmeX <= ("0" & Y_d1(30 downto 23)) - ("0" & X_d1(30 downto 23));
   ----------------Synchro barrier, entering cycle 2----------------
   swap <= '0' when excExpFracX_d2 >= excExpFracY_d2 else '1';
   newX <= X_d2 when swap = '0' else Y_d2;
   newY <= Y_d2 when swap = '0' else X_d2;
   expX<= newX(30 downto 23);
   excX<= newX(33 downto 32);
   excY<= newY(33 downto 32);
   signX<= newX(31);
   signY<= newY(31);
   EffSub <= signX xor signY;
   sXsYExnXY <= signX & signY & excX & excY;
   sdExnXY <= excX & excY;
   ----------------Synchro barrier, entering cycle 3----------------
   fracY <= "000000000000000000000000" when excY_d1="00" else ('1' & newY_d1(22 downto 0));
   with sXsYExnXY_d1 select 
   excRt <= "00" when "000000"|"010000"|"100000"|"110000",
      "01" when "000101"|"010101"|"100101"|"110101"|"000100"|"010100"|"100100"|"110100"|"000001"|"010001"|"100001"|"110001",
      "10" when "111010"|"001010"|"001000"|"011000"|"101000"|"111000"|"000010"|"010010"|"100010"|"110010"|"001001"|"011001"|"101001"|"111001"|"000110"|"010110"|"100110"|"110110", 
      "11" when others;
   ----------------Synchro barrier, entering cycle 4----------------
   signR<= '0' when (sXsYExnXY_d2="100000" or sXsYExnXY_d2="010000") else signX_d2;
   ---------------- cycle 2----------------
   expDiff <= eXmeY_d1 when swap = '0' else eYmeX_d1;
   ----------------Synchro barrier, entering cycle 3----------------
   shiftedOut <= '1' when (expDiff_d1 > 25) else '0';
   shiftVal <= expDiff_d1(4 downto 0) when shiftedOut='0' else CONV_STD_LOGIC_VECTOR(26,5) ;
   RightShifterComponent: RightShifter_24_by_max_26_F750_uid4  -- pipelineDepth=3 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => shiftedFracY,
                 S => shiftVal,
                 X => fracY);
   ----------------Synchro barrier, entering cycle 6----------------
   ----------------Synchro barrier, entering cycle 7----------------
   ----------------Synchro barrier, entering cycle 8----------------
   sticky <= '0' when (shiftedFracY_d2(23 downto 0)=CONV_STD_LOGIC_VECTOR(0,24)) else '1';
   ---------------- cycle 6----------------
   ----------------Synchro barrier, entering cycle 7----------------
   fracYfar <= "0" & shiftedFracY_d1(49 downto 24);
   EffSubVector <= (26 downto 0 => EffSub_d5);
   fracYfarXorOp <= fracYfar xor EffSubVector;
   fracXfar <= "01" & (newX_d5(22 downto 0)) & "00";
   ----------------Synchro barrier, entering cycle 8----------------
   cInAddFar <= EffSub_d6 and not sticky;
   fracAdder: IntAdder_27_f750_uid8  -- pipelineDepth=13 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => cInAddFar,
                 R => fracAddResult,
                 X => fracXfar_d1,
                 Y => fracYfarXorOp_d1);
   ----------------Synchro barrier, entering cycle 21----------------
   fracGRS<= fracAddResult & sticky_d13; 
   extendedExpInc<= ("00" & expX_d19) + '1';
   LZC_component: LZCShifter_28_to_28_counting_32_F750_uid16  -- pipelineDepth=5 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Count => nZerosNew,
                 I => fracGRS,
                 O => shiftedFrac);
   ----------------Synchro barrier, entering cycle 26----------------
   ----------------Synchro barrier, entering cycle 27----------------
   updatedExp <= extendedExpInc_d6 - ("00000" & nZerosNew_d1);
   eqdiffsign <= '1' when nZerosNew_d1="11111" else '0';
   expFrac<= updatedExp & shiftedFrac_d1(26 downto 3);
   ---------------- cycle 26----------------
   stk<= shiftedFrac(1) or shiftedFrac(0);
   rnd<= shiftedFrac(2);
   grd<= shiftedFrac(3);
   lsb<= shiftedFrac(4);
   ----------------Synchro barrier, entering cycle 27----------------
   addToRoundBit<= '0' when (lsb_d1='0' and grd_d1='1' and rnd_d1='0' and stk_d1='0')  else '1';
   roundingAdder: IntAdder_34_f750_uid20  -- pipelineDepth=16 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => addToRoundBit,
                 R => RoundedExpFrac,
                 X => expFrac,
                 Y => "0000000000000000000000000000000000");
   ---------------- cycle 43----------------
   upExc <= RoundedExpFrac(33 downto 32);
   fracR <= RoundedExpFrac(23 downto 1);
   expR <= RoundedExpFrac(31 downto 24);
   ----------------Synchro barrier, entering cycle 44----------------
   exExpExc <= upExc_d1 & excRt_d41;
   with (exExpExc) select 
   excRt2<= "00" when "0000"|"0100"|"1000"|"1100"|"1001"|"1101",
      "01" when "0001",
      "10" when "0010"|"0110"|"1010"|"1110"|"0101",
      "11" when others;
   excR <= "00" when (eqdiffsign_d17='1' and EffSub_d42='1' and not(excRt_d41="11")) else excRt2;
   signR2 <= '0' when (eqdiffsign_d17='1' and EffSub_d42='1') else signR_d40;
   computedR <= excR & signR2 & expR_d1 & fracR_d1;
   R <= computedR;
end architecture;

