--------------------------------------------------------------------------------
--                          IntDualSub_26_F750_uid4
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

entity IntDualSub_26_F750_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(25 downto 0);
          Y : in  std_logic_vector(25 downto 0);
          RxMy : out  std_logic_vector(25 downto 0);
          RyMx : out  std_logic_vector(25 downto 0)   );
end entity;

architecture arch of IntDualSub_26_F750_uid4 is
signal sX0 :  std_logic_vector(25 downto 0);
signal sY0 :  std_logic_vector(25 downto 0);
signal xMy0 :  std_logic_vector(26 downto 0);
signal yMx0 :  std_logic_vector(26 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   sX0 <= X(25 downto 0);
   sY0 <= Y(25 downto 0);
   xMy0  <= ("0" & sX0) + ("0" & not(sY0)) + '1';
   yMx0 <= ("0" & sY0) + ("0" & not(sX0))+ '1';
   RxMy <= xMy0(25 downto 0);
   RyMx <= yMx0(25 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                 LZCShifter_25_to_25_counting_32_F750_uid8
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

entity LZCShifter_25_to_25_counting_32_F750_uid8 is
   port ( clk, rst : in std_logic;
          I : in  std_logic_vector(24 downto 0);
          Count : out  std_logic_vector(4 downto 0);
          O : out  std_logic_vector(24 downto 0)   );
end entity;

architecture arch of LZCShifter_25_to_25_counting_32_F750_uid8 is
signal level5, level5_d1 :  std_logic_vector(24 downto 0);
signal count4, count4_d1, count4_d2, count4_d3, count4_d4, count4_d5 :  std_logic;
signal level4, level4_d1 :  std_logic_vector(24 downto 0);
signal count3, count3_d1, count3_d2, count3_d3, count3_d4 :  std_logic;
signal level3, level3_d1 :  std_logic_vector(24 downto 0);
signal count2, count2_d1, count2_d2, count2_d3 :  std_logic;
signal level2, level2_d1 :  std_logic_vector(24 downto 0);
signal count1, count1_d1, count1_d2 :  std_logic;
signal level1, level1_d1 :  std_logic_vector(24 downto 0);
signal count0, count0_d1 :  std_logic;
signal level0 :  std_logic_vector(24 downto 0);
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
   count4<= '1' when level5(24 downto 9) = (24 downto 9=>'0') else '0';
   ----------------Synchro barrier, entering cycle 1----------------
   level4<= level5_d1(24 downto 0) when count4_d1='0' else level5_d1(8 downto 0) & (15 downto 0 => '0');

   count3<= '1' when level4(24 downto 17) = (24 downto 17=>'0') else '0';
   ----------------Synchro barrier, entering cycle 2----------------
   level3<= level4_d1(24 downto 0) when count3_d1='0' else level4_d1(16 downto 0) & (7 downto 0 => '0');

   count2<= '1' when level3(24 downto 21) = (24 downto 21=>'0') else '0';
   ----------------Synchro barrier, entering cycle 3----------------
   level2<= level3_d1(24 downto 0) when count2_d1='0' else level3_d1(20 downto 0) & (3 downto 0 => '0');

   count1<= '1' when level2(24 downto 23) = (24 downto 23=>'0') else '0';
   ----------------Synchro barrier, entering cycle 4----------------
   level1<= level2_d1(24 downto 0) when count1_d1='0' else level2_d1(22 downto 0) & (1 downto 0 => '0');

   count0<= '1' when level1(24 downto 24) = (24 downto 24=>'0') else '0';
   ----------------Synchro barrier, entering cycle 5----------------
   level0<= level1_d1(24 downto 0) when count0_d1='0' else level1_d1(23 downto 0) & (0 downto 0 => '0');

   O <= level0;
   sCount <= count4_d5 & count3_d4 & count2_d3 & count1_d2 & count0_d1;
   Count <= sCount;
end architecture;

--------------------------------------------------------------------------------
--                    RightShifter_24_by_max_26_F750_uid12
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

entity RightShifter_24_by_max_26_F750_uid12 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          S : in  std_logic_vector(4 downto 0);
          R : out  std_logic_vector(49 downto 0)   );
end entity;

architecture arch of RightShifter_24_by_max_26_F750_uid12 is
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
--                           IntAdder_27_f750_uid16
--                     (IntAdderClassical_27_F750_uid18)
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

entity IntAdder_27_f750_uid16 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(26 downto 0);
          Y : in  std_logic_vector(26 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(26 downto 0)   );
end entity;

architecture arch of IntAdder_27_f750_uid16 is
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
--                     FPAdd_8_23_F750_uid2_finalRoundAdd
--                          (IntAdder_33_f750_uid24)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 17 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FPAdd_8_23_F750_uid2_finalRoundAdd is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(32 downto 0);
          Y : in  std_logic_vector(32 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(32 downto 0)   );
end entity;

architecture arch of FPAdd_8_23_F750_uid2_finalRoundAdd is
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
signal X_d1 :  std_logic_vector(32 downto 0);
signal Y_d1 :  std_logic_vector(32 downto 0);
signal Cin_d1 :  std_logic;
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
            X_d1 <=  X;
            Y_d1 <=  Y;
            Cin_d1 <=  Cin;
         end if;
      end process;
   --Classical
   ----------------Synchro barrier, entering cycle 1----------------
   x0 <= X_d1(1 downto 0);
   y0 <= Y_d1(1 downto 0);
   x1 <= X_d1(3 downto 2);
   y1 <= Y_d1(3 downto 2);
   x2 <= X_d1(5 downto 4);
   y2 <= Y_d1(5 downto 4);
   x3 <= X_d1(7 downto 6);
   y3 <= Y_d1(7 downto 6);
   x4 <= X_d1(9 downto 8);
   y4 <= Y_d1(9 downto 8);
   x5 <= X_d1(11 downto 10);
   y5 <= Y_d1(11 downto 10);
   x6 <= X_d1(13 downto 12);
   y6 <= Y_d1(13 downto 12);
   x7 <= X_d1(15 downto 14);
   y7 <= Y_d1(15 downto 14);
   x8 <= X_d1(17 downto 16);
   y8 <= Y_d1(17 downto 16);
   x9 <= X_d1(19 downto 18);
   y9 <= Y_d1(19 downto 18);
   x10 <= X_d1(21 downto 20);
   y10 <= Y_d1(21 downto 20);
   x11 <= X_d1(23 downto 22);
   y11 <= Y_d1(23 downto 22);
   x12 <= X_d1(25 downto 24);
   y12 <= Y_d1(25 downto 24);
   x13 <= X_d1(27 downto 26);
   y13 <= Y_d1(27 downto 26);
   x14 <= X_d1(29 downto 28);
   y14 <= Y_d1(29 downto 28);
   x15 <= X_d1(31 downto 30);
   y15 <= Y_d1(31 downto 30);
   x16 <= X_d1(32 downto 32);
   y16 <= Y_d1(32 downto 32);
   sum0 <= ( "0" & x0) + ( "0" & y0)  + Cin_d1;
   ----------------Synchro barrier, entering cycle 2----------------
   sum1 <= ( "0" & x1_d1) + ( "0" & y1_d1)  + sum0_d1(2);
   ----------------Synchro barrier, entering cycle 3----------------
   sum2 <= ( "0" & x2_d2) + ( "0" & y2_d2)  + sum1_d1(2);
   ----------------Synchro barrier, entering cycle 4----------------
   sum3 <= ( "0" & x3_d3) + ( "0" & y3_d3)  + sum2_d1(2);
   ----------------Synchro barrier, entering cycle 5----------------
   sum4 <= ( "0" & x4_d4) + ( "0" & y4_d4)  + sum3_d1(2);
   ----------------Synchro barrier, entering cycle 6----------------
   sum5 <= ( "0" & x5_d5) + ( "0" & y5_d5)  + sum4_d1(2);
   ----------------Synchro barrier, entering cycle 7----------------
   sum6 <= ( "0" & x6_d6) + ( "0" & y6_d6)  + sum5_d1(2);
   ----------------Synchro barrier, entering cycle 8----------------
   sum7 <= ( "0" & x7_d7) + ( "0" & y7_d7)  + sum6_d1(2);
   ----------------Synchro barrier, entering cycle 9----------------
   sum8 <= ( "0" & x8_d8) + ( "0" & y8_d8)  + sum7_d1(2);
   ----------------Synchro barrier, entering cycle 10----------------
   sum9 <= ( "0" & x9_d9) + ( "0" & y9_d9)  + sum8_d1(2);
   ----------------Synchro barrier, entering cycle 11----------------
   sum10 <= ( "0" & x10_d10) + ( "0" & y10_d10)  + sum9_d1(2);
   ----------------Synchro barrier, entering cycle 12----------------
   sum11 <= ( "0" & x11_d11) + ( "0" & y11_d11)  + sum10_d1(2);
   ----------------Synchro barrier, entering cycle 13----------------
   sum12 <= ( "0" & x12_d12) + ( "0" & y12_d12)  + sum11_d1(2);
   ----------------Synchro barrier, entering cycle 14----------------
   sum13 <= ( "0" & x13_d13) + ( "0" & y13_d13)  + sum12_d1(2);
   ----------------Synchro barrier, entering cycle 15----------------
   sum14 <= ( "0" & x14_d14) + ( "0" & y14_d14)  + sum13_d1(2);
   ----------------Synchro barrier, entering cycle 16----------------
   sum15 <= ( "0" & x15_d15) + ( "0" & y15_d15)  + sum14_d1(2);
   ----------------Synchro barrier, entering cycle 17----------------
   sum16 <= ( "0" & x16_d16) + ( "0" & y16_d16)  + sum15_d1(2);
   R <= sum16(0 downto 0) & sum15_d1(1 downto 0) & sum14_d2(1 downto 0) & sum13_d3(1 downto 0) & sum12_d4(1 downto 0) & sum11_d5(1 downto 0) & sum10_d6(1 downto 0) & sum9_d7(1 downto 0) & sum8_d8(1 downto 0) & sum7_d9(1 downto 0) & sum6_d10(1 downto 0) & sum5_d11(1 downto 0) & sum4_d12(1 downto 0) & sum3_d13(1 downto 0) & sum2_d14(1 downto 0) & sum1_d15(1 downto 0) & sum0_d16(1 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                               fp_adder_dual
--                           (FPAdd_8_23_F750_uid2)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008)
--------------------------------------------------------------------------------
-- Pipeline depth: 39 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity fp_adder_dual is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          Y : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of fp_adder_dual is
   component IntDualSub_26_F750_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(25 downto 0);
             Y : in  std_logic_vector(25 downto 0);
             RxMy : out  std_logic_vector(25 downto 0);
             RyMx : out  std_logic_vector(25 downto 0)   );
   end component;

   component LZCShifter_25_to_25_counting_32_F750_uid8 is
      port ( clk, rst : in std_logic;
             I : in  std_logic_vector(24 downto 0);
             Count : out  std_logic_vector(4 downto 0);
             O : out  std_logic_vector(24 downto 0)   );
   end component;

   component RightShifter_24_by_max_26_F750_uid12 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             S : in  std_logic_vector(4 downto 0);
             R : out  std_logic_vector(49 downto 0)   );
   end component;

   component IntAdder_27_f750_uid16 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(26 downto 0);
             Y : in  std_logic_vector(26 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(26 downto 0)   );
   end component;

   component FPAdd_8_23_F750_uid2_finalRoundAdd is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(32 downto 0);
             Y : in  std_logic_vector(32 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(32 downto 0)   );
   end component;

signal inX :  std_logic_vector(33 downto 0);
signal inY :  std_logic_vector(33 downto 0);
signal exceptionXSuperiorY :  std_logic;
signal exceptionXEqualY :  std_logic;
signal signedExponentX :  std_logic_vector(8 downto 0);
signal signedExponentY :  std_logic_vector(8 downto 0);
signal exponentDifferenceXY :  std_logic_vector(8 downto 0);
signal exponentDifferenceYX :  std_logic_vector(7 downto 0);
signal swap :  std_logic;
signal newX, newX_d1, newX_d2, newX_d3, newX_d4, newX_d5, newX_d6, newX_d7, newX_d8, newX_d9, newX_d10, newX_d11, newX_d12, newX_d13, newX_d14, newX_d15, newX_d16, newX_d17, newX_d18, newX_d19, newX_d20, newX_d21, newX_d22, newX_d23, newX_d24, newX_d25, newX_d26, newX_d27, newX_d28, newX_d29, newX_d30, newX_d31, newX_d32, newX_d33, newX_d34, newX_d35, newX_d36, newX_d37, newX_d38, newX_d39 :  std_logic_vector(33 downto 0);
signal newY, newY_d1, newY_d2 :  std_logic_vector(33 downto 0);
signal exponentDifference, exponentDifference_d1, exponentDifference_d2 :  std_logic_vector(7 downto 0);
signal shiftedOut, shiftedOut_d1 :  std_logic;
signal shiftVal, shiftVal_d1 :  std_logic_vector(4 downto 0);
signal EffSub, EffSub_d1, EffSub_d2, EffSub_d3, EffSub_d4, EffSub_d5, EffSub_d6, EffSub_d7, EffSub_d8, EffSub_d9, EffSub_d10, EffSub_d11, EffSub_d12, EffSub_d13, EffSub_d14, EffSub_d15, EffSub_d16, EffSub_d17, EffSub_d18, EffSub_d19, EffSub_d20, EffSub_d21, EffSub_d22, EffSub_d23, EffSub_d24, EffSub_d25, EffSub_d26, EffSub_d27, EffSub_d28, EffSub_d29, EffSub_d30, EffSub_d31, EffSub_d32, EffSub_d33, EffSub_d34, EffSub_d35, EffSub_d36, EffSub_d37 :  std_logic;
signal selectClosePath, selectClosePath_d1, selectClosePath_d2, selectClosePath_d3, selectClosePath_d4, selectClosePath_d5, selectClosePath_d6, selectClosePath_d7, selectClosePath_d8, selectClosePath_d9, selectClosePath_d10, selectClosePath_d11, selectClosePath_d12, selectClosePath_d13, selectClosePath_d14, selectClosePath_d15, selectClosePath_d16, selectClosePath_d17, selectClosePath_d18, selectClosePath_d19, selectClosePath_d20 :  std_logic;
signal sdExnXY, sdExnXY_d1, sdExnXY_d2, sdExnXY_d3, sdExnXY_d4, sdExnXY_d5, sdExnXY_d6, sdExnXY_d7, sdExnXY_d8, sdExnXY_d9, sdExnXY_d10, sdExnXY_d11, sdExnXY_d12, sdExnXY_d13, sdExnXY_d14, sdExnXY_d15, sdExnXY_d16, sdExnXY_d17, sdExnXY_d18, sdExnXY_d19, sdExnXY_d20, sdExnXY_d21, sdExnXY_d22, sdExnXY_d23, sdExnXY_d24, sdExnXY_d25, sdExnXY_d26, sdExnXY_d27, sdExnXY_d28, sdExnXY_d29, sdExnXY_d30, sdExnXY_d31, sdExnXY_d32, sdExnXY_d33, sdExnXY_d34, sdExnXY_d35, sdExnXY_d36, sdExnXY_d37 :  std_logic_vector(3 downto 0);
signal pipeSignY, pipeSignY_d1, pipeSignY_d2, pipeSignY_d3, pipeSignY_d4, pipeSignY_d5, pipeSignY_d6, pipeSignY_d7, pipeSignY_d8, pipeSignY_d9, pipeSignY_d10, pipeSignY_d11, pipeSignY_d12, pipeSignY_d13, pipeSignY_d14, pipeSignY_d15, pipeSignY_d16, pipeSignY_d17, pipeSignY_d18, pipeSignY_d19, pipeSignY_d20, pipeSignY_d21, pipeSignY_d22, pipeSignY_d23, pipeSignY_d24, pipeSignY_d25, pipeSignY_d26, pipeSignY_d27, pipeSignY_d28, pipeSignY_d29, pipeSignY_d30, pipeSignY_d31, pipeSignY_d32, pipeSignY_d33, pipeSignY_d34, pipeSignY_d35, pipeSignY_d36, pipeSignY_d37 :  std_logic;
signal fracXClose1 :  std_logic_vector(25 downto 0);
signal fracYClose1 :  std_logic_vector(25 downto 0);
signal fracRClosexMy, fracRClosexMy_d1 :  std_logic_vector(25 downto 0);
signal fracRCloseyMx, fracRCloseyMx_d1 :  std_logic_vector(25 downto 0);
signal fracSignClose :  std_logic;
signal fracRClose1 :  std_logic_vector(24 downto 0);
signal resSign, resSign_d1, resSign_d2, resSign_d3, resSign_d4, resSign_d5, resSign_d6, resSign_d7, resSign_d8, resSign_d9, resSign_d10, resSign_d11, resSign_d12, resSign_d13, resSign_d14, resSign_d15, resSign_d16, resSign_d17, resSign_d18, resSign_d19, resSign_d20, resSign_d21, resSign_d22, resSign_d23, resSign_d24, resSign_d25, resSign_d26, resSign_d27, resSign_d28, resSign_d29, resSign_d30, resSign_d31, resSign_d32, resSign_d33, resSign_d34, resSign_d35, resSign_d36 :  std_logic;
signal nZerosNew, nZerosNew_d1 :  std_logic_vector(4 downto 0);
signal shiftedFrac, shiftedFrac_d1, shiftedFrac_d2 :  std_logic_vector(24 downto 0);
signal roundClose0, roundClose0_d1 :  std_logic;
signal resultCloseIsZero0, resultCloseIsZero0_d1 :  std_logic;
signal exponentResultClose, exponentResultClose_d1 :  std_logic_vector(9 downto 0);
signal resultBeforeRoundClose, resultBeforeRoundClose_d1, resultBeforeRoundClose_d2, resultBeforeRoundClose_d3, resultBeforeRoundClose_d4, resultBeforeRoundClose_d5, resultBeforeRoundClose_d6, resultBeforeRoundClose_d7, resultBeforeRoundClose_d8, resultBeforeRoundClose_d9, resultBeforeRoundClose_d10, resultBeforeRoundClose_d11, resultBeforeRoundClose_d12 :  std_logic_vector(32 downto 0);
signal roundClose, roundClose_d1, roundClose_d2, roundClose_d3, roundClose_d4, roundClose_d5, roundClose_d6, roundClose_d7, roundClose_d8, roundClose_d9, roundClose_d10, roundClose_d11, roundClose_d12 :  std_logic;
signal resultCloseIsZero, resultCloseIsZero_d1, resultCloseIsZero_d2, resultCloseIsZero_d3, resultCloseIsZero_d4, resultCloseIsZero_d5, resultCloseIsZero_d6, resultCloseIsZero_d7, resultCloseIsZero_d8, resultCloseIsZero_d9, resultCloseIsZero_d10, resultCloseIsZero_d11, resultCloseIsZero_d12 :  std_logic;
signal fracNewY :  std_logic_vector(23 downto 0);
signal shiftedFracY, shiftedFracY_d1, shiftedFracY_d2 :  std_logic_vector(49 downto 0);
signal sticky, sticky_d1, sticky_d2, sticky_d3, sticky_d4, sticky_d5, sticky_d6, sticky_d7, sticky_d8, sticky_d9, sticky_d10, sticky_d11, sticky_d12, sticky_d13, sticky_d14, sticky_d15 :  std_logic;
signal fracYfar :  std_logic_vector(26 downto 0);
signal EffSubVector :  std_logic_vector(26 downto 0);
signal fracYfarXorOp :  std_logic_vector(26 downto 0);
signal fracXfar :  std_logic_vector(26 downto 0);
signal cInAddFar :  std_logic;
signal fracResultfar0, fracResultfar0_d1 :  std_logic_vector(26 downto 0);
signal fracResultFarNormStage :  std_logic_vector(26 downto 0);
signal fracLeadingBits :  std_logic_vector(1 downto 0);
signal fracResultFar1, fracResultFar1_d1 :  std_logic_vector(22 downto 0);
signal fracResultRoundBit :  std_logic;
signal fracResultStickyBit :  std_logic;
signal roundFar1, roundFar1_d1 :  std_logic;
signal expOperationSel :  std_logic_vector(1 downto 0);
signal exponentUpdate :  std_logic_vector(9 downto 0);
signal exponentResultfar0 :  std_logic_vector(9 downto 0);
signal exponentResultFar1, exponentResultFar1_d1 :  std_logic_vector(9 downto 0);
signal resultBeforeRoundFar :  std_logic_vector(32 downto 0);
signal roundFar :  std_logic;
signal syncClose :  std_logic;
signal resultBeforeRound :  std_logic_vector(32 downto 0);
signal round :  std_logic;
signal zeroFromClose, zeroFromClose_d1, zeroFromClose_d2, zeroFromClose_d3, zeroFromClose_d4, zeroFromClose_d5, zeroFromClose_d6, zeroFromClose_d7, zeroFromClose_d8, zeroFromClose_d9, zeroFromClose_d10, zeroFromClose_d11, zeroFromClose_d12, zeroFromClose_d13, zeroFromClose_d14, zeroFromClose_d15, zeroFromClose_d16, zeroFromClose_d17 :  std_logic;
signal resultRounded :  std_logic_vector(32 downto 0);
signal syncEffSub :  std_logic;
signal syncX :  std_logic_vector(33 downto 0);
signal syncSignY :  std_logic;
signal syncResSign :  std_logic;
signal UnderflowOverflow :  std_logic_vector(1 downto 0);
signal resultNoExn :  std_logic_vector(33 downto 0);
signal syncExnXY :  std_logic_vector(3 downto 0);
signal exnR :  std_logic_vector(1 downto 0);
signal sgnR :  std_logic;
signal expsigR :  std_logic_vector(30 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            newX_d1 <=  newX;
            newX_d2 <=  newX_d1;
            newX_d3 <=  newX_d2;
            newX_d4 <=  newX_d3;
            newX_d5 <=  newX_d4;
            newX_d6 <=  newX_d5;
            newX_d7 <=  newX_d6;
            newX_d8 <=  newX_d7;
            newX_d9 <=  newX_d8;
            newX_d10 <=  newX_d9;
            newX_d11 <=  newX_d10;
            newX_d12 <=  newX_d11;
            newX_d13 <=  newX_d12;
            newX_d14 <=  newX_d13;
            newX_d15 <=  newX_d14;
            newX_d16 <=  newX_d15;
            newX_d17 <=  newX_d16;
            newX_d18 <=  newX_d17;
            newX_d19 <=  newX_d18;
            newX_d20 <=  newX_d19;
            newX_d21 <=  newX_d20;
            newX_d22 <=  newX_d21;
            newX_d23 <=  newX_d22;
            newX_d24 <=  newX_d23;
            newX_d25 <=  newX_d24;
            newX_d26 <=  newX_d25;
            newX_d27 <=  newX_d26;
            newX_d28 <=  newX_d27;
            newX_d29 <=  newX_d28;
            newX_d30 <=  newX_d29;
            newX_d31 <=  newX_d30;
            newX_d32 <=  newX_d31;
            newX_d33 <=  newX_d32;
            newX_d34 <=  newX_d33;
            newX_d35 <=  newX_d34;
            newX_d36 <=  newX_d35;
            newX_d37 <=  newX_d36;
            newX_d38 <=  newX_d37;
            newX_d39 <=  newX_d38;
            newY_d1 <=  newY;
            newY_d2 <=  newY_d1;
            exponentDifference_d1 <=  exponentDifference;
            exponentDifference_d2 <=  exponentDifference_d1;
            shiftedOut_d1 <=  shiftedOut;
            shiftVal_d1 <=  shiftVal;
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
            selectClosePath_d1 <=  selectClosePath;
            selectClosePath_d2 <=  selectClosePath_d1;
            selectClosePath_d3 <=  selectClosePath_d2;
            selectClosePath_d4 <=  selectClosePath_d3;
            selectClosePath_d5 <=  selectClosePath_d4;
            selectClosePath_d6 <=  selectClosePath_d5;
            selectClosePath_d7 <=  selectClosePath_d6;
            selectClosePath_d8 <=  selectClosePath_d7;
            selectClosePath_d9 <=  selectClosePath_d8;
            selectClosePath_d10 <=  selectClosePath_d9;
            selectClosePath_d11 <=  selectClosePath_d10;
            selectClosePath_d12 <=  selectClosePath_d11;
            selectClosePath_d13 <=  selectClosePath_d12;
            selectClosePath_d14 <=  selectClosePath_d13;
            selectClosePath_d15 <=  selectClosePath_d14;
            selectClosePath_d16 <=  selectClosePath_d15;
            selectClosePath_d17 <=  selectClosePath_d16;
            selectClosePath_d18 <=  selectClosePath_d17;
            selectClosePath_d19 <=  selectClosePath_d18;
            selectClosePath_d20 <=  selectClosePath_d19;
            sdExnXY_d1 <=  sdExnXY;
            sdExnXY_d2 <=  sdExnXY_d1;
            sdExnXY_d3 <=  sdExnXY_d2;
            sdExnXY_d4 <=  sdExnXY_d3;
            sdExnXY_d5 <=  sdExnXY_d4;
            sdExnXY_d6 <=  sdExnXY_d5;
            sdExnXY_d7 <=  sdExnXY_d6;
            sdExnXY_d8 <=  sdExnXY_d7;
            sdExnXY_d9 <=  sdExnXY_d8;
            sdExnXY_d10 <=  sdExnXY_d9;
            sdExnXY_d11 <=  sdExnXY_d10;
            sdExnXY_d12 <=  sdExnXY_d11;
            sdExnXY_d13 <=  sdExnXY_d12;
            sdExnXY_d14 <=  sdExnXY_d13;
            sdExnXY_d15 <=  sdExnXY_d14;
            sdExnXY_d16 <=  sdExnXY_d15;
            sdExnXY_d17 <=  sdExnXY_d16;
            sdExnXY_d18 <=  sdExnXY_d17;
            sdExnXY_d19 <=  sdExnXY_d18;
            sdExnXY_d20 <=  sdExnXY_d19;
            sdExnXY_d21 <=  sdExnXY_d20;
            sdExnXY_d22 <=  sdExnXY_d21;
            sdExnXY_d23 <=  sdExnXY_d22;
            sdExnXY_d24 <=  sdExnXY_d23;
            sdExnXY_d25 <=  sdExnXY_d24;
            sdExnXY_d26 <=  sdExnXY_d25;
            sdExnXY_d27 <=  sdExnXY_d26;
            sdExnXY_d28 <=  sdExnXY_d27;
            sdExnXY_d29 <=  sdExnXY_d28;
            sdExnXY_d30 <=  sdExnXY_d29;
            sdExnXY_d31 <=  sdExnXY_d30;
            sdExnXY_d32 <=  sdExnXY_d31;
            sdExnXY_d33 <=  sdExnXY_d32;
            sdExnXY_d34 <=  sdExnXY_d33;
            sdExnXY_d35 <=  sdExnXY_d34;
            sdExnXY_d36 <=  sdExnXY_d35;
            sdExnXY_d37 <=  sdExnXY_d36;
            pipeSignY_d1 <=  pipeSignY;
            pipeSignY_d2 <=  pipeSignY_d1;
            pipeSignY_d3 <=  pipeSignY_d2;
            pipeSignY_d4 <=  pipeSignY_d3;
            pipeSignY_d5 <=  pipeSignY_d4;
            pipeSignY_d6 <=  pipeSignY_d5;
            pipeSignY_d7 <=  pipeSignY_d6;
            pipeSignY_d8 <=  pipeSignY_d7;
            pipeSignY_d9 <=  pipeSignY_d8;
            pipeSignY_d10 <=  pipeSignY_d9;
            pipeSignY_d11 <=  pipeSignY_d10;
            pipeSignY_d12 <=  pipeSignY_d11;
            pipeSignY_d13 <=  pipeSignY_d12;
            pipeSignY_d14 <=  pipeSignY_d13;
            pipeSignY_d15 <=  pipeSignY_d14;
            pipeSignY_d16 <=  pipeSignY_d15;
            pipeSignY_d17 <=  pipeSignY_d16;
            pipeSignY_d18 <=  pipeSignY_d17;
            pipeSignY_d19 <=  pipeSignY_d18;
            pipeSignY_d20 <=  pipeSignY_d19;
            pipeSignY_d21 <=  pipeSignY_d20;
            pipeSignY_d22 <=  pipeSignY_d21;
            pipeSignY_d23 <=  pipeSignY_d22;
            pipeSignY_d24 <=  pipeSignY_d23;
            pipeSignY_d25 <=  pipeSignY_d24;
            pipeSignY_d26 <=  pipeSignY_d25;
            pipeSignY_d27 <=  pipeSignY_d26;
            pipeSignY_d28 <=  pipeSignY_d27;
            pipeSignY_d29 <=  pipeSignY_d28;
            pipeSignY_d30 <=  pipeSignY_d29;
            pipeSignY_d31 <=  pipeSignY_d30;
            pipeSignY_d32 <=  pipeSignY_d31;
            pipeSignY_d33 <=  pipeSignY_d32;
            pipeSignY_d34 <=  pipeSignY_d33;
            pipeSignY_d35 <=  pipeSignY_d34;
            pipeSignY_d36 <=  pipeSignY_d35;
            pipeSignY_d37 <=  pipeSignY_d36;
            fracRClosexMy_d1 <=  fracRClosexMy;
            fracRCloseyMx_d1 <=  fracRCloseyMx;
            resSign_d1 <=  resSign;
            resSign_d2 <=  resSign_d1;
            resSign_d3 <=  resSign_d2;
            resSign_d4 <=  resSign_d3;
            resSign_d5 <=  resSign_d4;
            resSign_d6 <=  resSign_d5;
            resSign_d7 <=  resSign_d6;
            resSign_d8 <=  resSign_d7;
            resSign_d9 <=  resSign_d8;
            resSign_d10 <=  resSign_d9;
            resSign_d11 <=  resSign_d10;
            resSign_d12 <=  resSign_d11;
            resSign_d13 <=  resSign_d12;
            resSign_d14 <=  resSign_d13;
            resSign_d15 <=  resSign_d14;
            resSign_d16 <=  resSign_d15;
            resSign_d17 <=  resSign_d16;
            resSign_d18 <=  resSign_d17;
            resSign_d19 <=  resSign_d18;
            resSign_d20 <=  resSign_d19;
            resSign_d21 <=  resSign_d20;
            resSign_d22 <=  resSign_d21;
            resSign_d23 <=  resSign_d22;
            resSign_d24 <=  resSign_d23;
            resSign_d25 <=  resSign_d24;
            resSign_d26 <=  resSign_d25;
            resSign_d27 <=  resSign_d26;
            resSign_d28 <=  resSign_d27;
            resSign_d29 <=  resSign_d28;
            resSign_d30 <=  resSign_d29;
            resSign_d31 <=  resSign_d30;
            resSign_d32 <=  resSign_d31;
            resSign_d33 <=  resSign_d32;
            resSign_d34 <=  resSign_d33;
            resSign_d35 <=  resSign_d34;
            resSign_d36 <=  resSign_d35;
            nZerosNew_d1 <=  nZerosNew;
            shiftedFrac_d1 <=  shiftedFrac;
            shiftedFrac_d2 <=  shiftedFrac_d1;
            roundClose0_d1 <=  roundClose0;
            resultCloseIsZero0_d1 <=  resultCloseIsZero0;
            exponentResultClose_d1 <=  exponentResultClose;
            resultBeforeRoundClose_d1 <=  resultBeforeRoundClose;
            resultBeforeRoundClose_d2 <=  resultBeforeRoundClose_d1;
            resultBeforeRoundClose_d3 <=  resultBeforeRoundClose_d2;
            resultBeforeRoundClose_d4 <=  resultBeforeRoundClose_d3;
            resultBeforeRoundClose_d5 <=  resultBeforeRoundClose_d4;
            resultBeforeRoundClose_d6 <=  resultBeforeRoundClose_d5;
            resultBeforeRoundClose_d7 <=  resultBeforeRoundClose_d6;
            resultBeforeRoundClose_d8 <=  resultBeforeRoundClose_d7;
            resultBeforeRoundClose_d9 <=  resultBeforeRoundClose_d8;
            resultBeforeRoundClose_d10 <=  resultBeforeRoundClose_d9;
            resultBeforeRoundClose_d11 <=  resultBeforeRoundClose_d10;
            resultBeforeRoundClose_d12 <=  resultBeforeRoundClose_d11;
            roundClose_d1 <=  roundClose;
            roundClose_d2 <=  roundClose_d1;
            roundClose_d3 <=  roundClose_d2;
            roundClose_d4 <=  roundClose_d3;
            roundClose_d5 <=  roundClose_d4;
            roundClose_d6 <=  roundClose_d5;
            roundClose_d7 <=  roundClose_d6;
            roundClose_d8 <=  roundClose_d7;
            roundClose_d9 <=  roundClose_d8;
            roundClose_d10 <=  roundClose_d9;
            roundClose_d11 <=  roundClose_d10;
            roundClose_d12 <=  roundClose_d11;
            resultCloseIsZero_d1 <=  resultCloseIsZero;
            resultCloseIsZero_d2 <=  resultCloseIsZero_d1;
            resultCloseIsZero_d3 <=  resultCloseIsZero_d2;
            resultCloseIsZero_d4 <=  resultCloseIsZero_d3;
            resultCloseIsZero_d5 <=  resultCloseIsZero_d4;
            resultCloseIsZero_d6 <=  resultCloseIsZero_d5;
            resultCloseIsZero_d7 <=  resultCloseIsZero_d6;
            resultCloseIsZero_d8 <=  resultCloseIsZero_d7;
            resultCloseIsZero_d9 <=  resultCloseIsZero_d8;
            resultCloseIsZero_d10 <=  resultCloseIsZero_d9;
            resultCloseIsZero_d11 <=  resultCloseIsZero_d10;
            resultCloseIsZero_d12 <=  resultCloseIsZero_d11;
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
            sticky_d14 <=  sticky_d13;
            sticky_d15 <=  sticky_d14;
            fracResultfar0_d1 <=  fracResultfar0;
            fracResultFar1_d1 <=  fracResultFar1;
            roundFar1_d1 <=  roundFar1;
            exponentResultFar1_d1 <=  exponentResultFar1;
            zeroFromClose_d1 <=  zeroFromClose;
            zeroFromClose_d2 <=  zeroFromClose_d1;
            zeroFromClose_d3 <=  zeroFromClose_d2;
            zeroFromClose_d4 <=  zeroFromClose_d3;
            zeroFromClose_d5 <=  zeroFromClose_d4;
            zeroFromClose_d6 <=  zeroFromClose_d5;
            zeroFromClose_d7 <=  zeroFromClose_d6;
            zeroFromClose_d8 <=  zeroFromClose_d7;
            zeroFromClose_d9 <=  zeroFromClose_d8;
            zeroFromClose_d10 <=  zeroFromClose_d9;
            zeroFromClose_d11 <=  zeroFromClose_d10;
            zeroFromClose_d12 <=  zeroFromClose_d11;
            zeroFromClose_d13 <=  zeroFromClose_d12;
            zeroFromClose_d14 <=  zeroFromClose_d13;
            zeroFromClose_d15 <=  zeroFromClose_d14;
            zeroFromClose_d16 <=  zeroFromClose_d15;
            zeroFromClose_d17 <=  zeroFromClose_d16;
         end if;
      end process;
-- Exponent difference and swap  --
   inX <= X;
   inY <= Y;
   exceptionXSuperiorY <= '1' when inX(33 downto 32) >= inY(33 downto 32) else '0';
   exceptionXEqualY <= '1' when inX(33 downto 32) = inY(33 downto 32) else '0';
   signedExponentX <= "0" & inX(30 downto 23);
   signedExponentY <= "0" & inY(30 downto 23);
   exponentDifferenceXY <= signedExponentX - signedExponentY ;
   exponentDifferenceYX <= signedExponentY(7 downto 0) - signedExponentX(7 downto 0);
   swap <= (exceptionXEqualY and exponentDifferenceXY(8)) or (not(exceptionXSuperiorY));
   newX <= inY when swap = '1' else inX;
   newY <= inX when swap = '1' else inY;
   exponentDifference <= exponentDifferenceYX when swap = '1' else exponentDifferenceXY(7 downto 0);
   shiftedOut <=    ----------------Synchro barrier, entering cycle 1----------------
exponentDifference_d1(7) or exponentDifference_d1(6) or exponentDifference_d1(5);
   shiftVal <= exponentDifference_d1(4 downto 0) when shiftedOut_d1='0'
          else CONV_STD_LOGIC_VECTOR(26,5) ;
   ----------------Synchro barrier, entering cycle 2----------------
   EffSub <= newX_d2(31) xor newY_d2(31);
   selectClosePath <= EffSub when exponentDifference_d2(7 downto 1) = (7 downto 1 => '0') else '0';
   sdExnXY <= newX_d2(33 downto 32) & newY_d2(33 downto 32);
   pipeSignY <= newY_d2(31);

-- Close Path --
   fracXClose1 <= "01" & newX_d2(22 downto 0) & '0';
   with exponentDifference_d2(0) select
   fracYClose1 <=  "01" & newY_d2(22 downto 0) & '0' when '0',
                  "001" & newY_d2(22 downto 0)       when others;
   DualSubO: IntDualSub_26_F750_uid4  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 RxMy => fracRClosexMy,
                 RyMx => fracRCloseyMx,
                 X => fracXClose1,
                 Y => fracYClose1);
   ----------------Synchro barrier, entering cycle 3----------------
   fracSignClose <= fracRClosexMy_d1(25);
   fracRClose1 <= fracRClosexMy_d1(24 downto 0) when fracSignClose='0' else fracRCloseyMx_d1(24 downto 0);
   resSign <= '0' when selectClosePath_d1='1' and fracRClose1 = (24 downto 0 => '0') else
             newX_d3(31) xor (selectClosePath_d1 and fracSignClose);
   LZC_component: LZCShifter_25_to_25_counting_32_F750_uid8  -- pipelineDepth=5 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Count => nZerosNew,
                 I => fracRClose1,
                 O => shiftedFrac);
   ----------------Synchro barrier, entering cycle 8----------------
   ----------------Synchro barrier, entering cycle 9----------------
   roundClose0 <= shiftedFrac_d1(0) and shiftedFrac_d1(1);
   resultCloseIsZero0 <= '1' when nZerosNew_d1 = CONV_STD_LOGIC_VECTOR(31, 5) else '0';
   exponentResultClose <= ("00" & newX_d9(30 downto 23)) - (CONV_STD_LOGIC_VECTOR(0,5) & nZerosNew_d1);
   ----------------Synchro barrier, entering cycle 10----------------
   resultBeforeRoundClose <= exponentResultClose_d1(9 downto 0) & shiftedFrac_d2(23 downto 1);
   roundClose <= roundClose0_d1;
   resultCloseIsZero <= resultCloseIsZero0_d1;

-- Far Path --
   ---------------- cycle 2----------------
   fracNewY <= '1' & newY_d2(22 downto 0);
   RightShifterComponent: RightShifter_24_by_max_26_F750_uid12  -- pipelineDepth=3 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => shiftedFracY,
                 S => shiftVal_d1,
                 X => fracNewY);
   ----------------Synchro barrier, entering cycle 6----------------
   sticky <= '0' when (shiftedFracY_d1(23 downto 0)=CONV_STD_LOGIC_VECTOR(0,24)) else '1';
   ----------------Synchro barrier, entering cycle 7----------------
   fracYfar <= "0" & shiftedFracY_d2(49 downto 24);
   EffSubVector <= (26 downto 0 => EffSub_d5);
   fracYfarXorOp <= fracYfar xor EffSubVector;
   fracXfar <= "01" & (newX_d7(22 downto 0)) & "00";
   cInAddFar <= EffSub_d5 and not sticky_d1;
   fracAdderFar: IntAdder_27_f750_uid16  -- pipelineDepth=13 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => cInAddFar,
                 R => fracResultfar0,
                 X => fracXfar,
                 Y => fracYfarXorOp);
   ----------------Synchro barrier, entering cycle 20----------------
   ----------------Synchro barrier, entering cycle 21----------------
   -- 2-bit normalisation
   fracResultFarNormStage <= fracResultfar0_d1;
   fracLeadingBits <= fracResultFarNormStage(26 downto 25) ;
   fracResultFar1 <=
           fracResultFarNormStage(23 downto 1)  when fracLeadingBits = "00" 
      else fracResultFarNormStage(24 downto 2)  when fracLeadingBits = "01" 
      else fracResultFarNormStage(25 downto 3);
   fracResultRoundBit <=
           fracResultFarNormStage(0) 	 when fracLeadingBits = "00" 
      else fracResultFarNormStage(1)    when fracLeadingBits = "01" 
      else fracResultFarNormStage(2) ;
   fracResultStickyBit <=
           sticky_d15 	 when fracLeadingBits = "00" 
      else fracResultFarNormStage(0) or  sticky_d15   when fracLeadingBits = "01" 
      else fracResultFarNormStage(1) or fracResultFarNormStage(0) or sticky_d15;
   roundFar1 <= fracResultRoundBit and (fracResultStickyBit or fracResultFar1(0));
   expOperationSel <= "11" when fracLeadingBits = "00" -- add -1 to exponent
               else   "00" when fracLeadingBits = "01" -- add 0 
               else   "01";                              -- add 1
   exponentUpdate <= (9 downto 1 => expOperationSel(1)) & expOperationSel(0);
   exponentResultfar0<="00" & (newX_d21(30 downto 23));
   exponentResultFar1 <= exponentResultfar0 + exponentUpdate;
   ----------------Synchro barrier, entering cycle 22----------------
   resultBeforeRoundFar <= exponentResultFar1_d1 & fracResultFar1_d1;
   roundFar <= roundFar1_d1;

-- Synchronization of both paths --
   ---------------- cycle 22----------------
   syncClose <= selectClosePath_d20;
   with syncClose select
   resultBeforeRound <= resultBeforeRoundClose_d12 when '1',
                        resultBeforeRoundFar   when others;
   with syncClose select
   round <= roundClose_d12 when '1',
            roundFar   when others;
   zeroFromClose <= syncClose and resultCloseIsZero_d12;

-- Rounding --
   finalRoundAdder: FPAdd_8_23_F750_uid2_finalRoundAdd  -- pipelineDepth=17 maxInDelay=9.4872e-10
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => round,
                 R => resultRounded,
                 X => resultBeforeRound,
                 Y => (32 downto 0 => '0') );
   syncEffSub <= EffSub_d37;
   syncX <= newX_d39;
   syncSignY <= pipeSignY_d37;
   syncResSign <= resSign_d36;
   UnderflowOverflow <= resultRounded(32 downto 31);
   with UnderflowOverflow select
   resultNoExn(33 downto 32) <=   (not zeroFromClose_d17) & "0" when "01", -- overflow
                                 "00" when "10" | "11",  -- underflow
                                 "0" &  not zeroFromClose_d17  when others; -- normal 
   resultNoExn(31 downto 0) <= syncResSign & resultRounded(30 downto 0);
   syncExnXY <= sdExnXY_d37;
   -- Exception bits of the result
   with syncExnXY select -- remember that ExnX > ExnY 
      exnR <= resultNoExn(33 downto 32) when "0101",
              "1" & syncEffSub          when "1010",
              "11"                      when "1110",
              syncExnXY(3 downto 2)     when others;
   -- Sign bit of the result
   with syncExnXY select
      sgnR <= resultNoExn(31)         when "0101",
              syncX(31) and syncSignY when "0000",
              syncX(31)               when others;
   -- Exponent and significand of the result
   with syncExnXY select  
      expsigR <= resultNoExn(30 downto 0)   when "0101" ,
                 syncX(30 downto  0)        when others; -- 0100, or at least one NaN or one infty 
   R <= exnR & sgnR & expsigR;
end architecture;

