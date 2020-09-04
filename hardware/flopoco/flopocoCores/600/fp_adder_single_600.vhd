--------------------------------------------------------------------------------
--                    RightShifter_24_by_max_26_F600_uid4
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2011)
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity RightShifter_24_by_max_26_F600_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          S : in  std_logic_vector(4 downto 0);
          R : out  std_logic_vector(49 downto 0)   );
end entity;

architecture arch of RightShifter_24_by_max_26_F600_uid4 is
signal level0 :  std_logic_vector(23 downto 0);
signal ps, ps_d1, ps_d2 :  std_logic_vector(4 downto 0);
signal level1, level1_d1 :  std_logic_vector(24 downto 0);
signal level2 :  std_logic_vector(26 downto 0);
signal level3, level3_d1 :  std_logic_vector(30 downto 0);
signal level4 :  std_logic_vector(38 downto 0);
signal level5 :  std_logic_vector(54 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            ps_d1 <=  ps;
            ps_d2 <=  ps_d1;
            level1_d1 <=  level1;
            level3_d1 <=  level3;
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
   level5<=  (15 downto 0 => '0') & level4 when ps_d2(4) = '1' else    level4 & (15 downto 0 => '0');
   R <= level5(54 downto 5);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_27_f600_uid8
--                     (IntAdderClassical_27_F600_uid10)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 5 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_27_f600_uid8 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(26 downto 0);
          Y : in  std_logic_vector(26 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(26 downto 0)   );
end entity;

architecture arch of IntAdder_27_f600_uid8 is
signal x0 :  std_logic_vector(4 downto 0);
signal y0 :  std_logic_vector(4 downto 0);
signal x1, x1_d1 :  std_logic_vector(4 downto 0);
signal y1, y1_d1 :  std_logic_vector(4 downto 0);
signal x2, x2_d1, x2_d2 :  std_logic_vector(4 downto 0);
signal y2, y2_d1, y2_d2 :  std_logic_vector(4 downto 0);
signal x3, x3_d1, x3_d2, x3_d3 :  std_logic_vector(4 downto 0);
signal y3, y3_d1, y3_d2, y3_d3 :  std_logic_vector(4 downto 0);
signal x4, x4_d1, x4_d2, x4_d3, x4_d4 :  std_logic_vector(4 downto 0);
signal y4, y4_d1, y4_d2, y4_d3, y4_d4 :  std_logic_vector(4 downto 0);
signal x5, x5_d1, x5_d2, x5_d3, x5_d4, x5_d5 :  std_logic_vector(1 downto 0);
signal y5, y5_d1, y5_d2, y5_d3, y5_d4, y5_d5 :  std_logic_vector(1 downto 0);
signal sum0, sum0_d1, sum0_d2, sum0_d3, sum0_d4, sum0_d5 :  std_logic_vector(5 downto 0);
signal sum1, sum1_d1, sum1_d2, sum1_d3, sum1_d4 :  std_logic_vector(5 downto 0);
signal sum2, sum2_d1, sum2_d2, sum2_d3 :  std_logic_vector(5 downto 0);
signal sum3, sum3_d1, sum3_d2 :  std_logic_vector(5 downto 0);
signal sum4, sum4_d1 :  std_logic_vector(5 downto 0);
signal sum5 :  std_logic_vector(2 downto 0);
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
            sum0_d1 <=  sum0;
            sum0_d2 <=  sum0_d1;
            sum0_d3 <=  sum0_d2;
            sum0_d4 <=  sum0_d3;
            sum0_d5 <=  sum0_d4;
            sum1_d1 <=  sum1;
            sum1_d2 <=  sum1_d1;
            sum1_d3 <=  sum1_d2;
            sum1_d4 <=  sum1_d3;
            sum2_d1 <=  sum2;
            sum2_d2 <=  sum2_d1;
            sum2_d3 <=  sum2_d2;
            sum3_d1 <=  sum3;
            sum3_d2 <=  sum3_d1;
            sum4_d1 <=  sum4;
         end if;
      end process;
   --Classical
   x0 <= X(4 downto 0);
   y0 <= Y(4 downto 0);
   x1 <= X(9 downto 5);
   y1 <= Y(9 downto 5);
   x2 <= X(14 downto 10);
   y2 <= Y(14 downto 10);
   x3 <= X(19 downto 15);
   y3 <= Y(19 downto 15);
   x4 <= X(24 downto 20);
   y4 <= Y(24 downto 20);
   x5 <= X(26 downto 25);
   y5 <= Y(26 downto 25);
   sum0 <= ( "0" & x0) + ( "0" & y0)  + Cin;
   ----------------Synchro barrier, entering cycle 1----------------
   sum1 <= ( "0" & x1_d1) + ( "0" & y1_d1)  + sum0_d1(5);
   ----------------Synchro barrier, entering cycle 2----------------
   sum2 <= ( "0" & x2_d2) + ( "0" & y2_d2)  + sum1_d1(5);
   ----------------Synchro barrier, entering cycle 3----------------
   sum3 <= ( "0" & x3_d3) + ( "0" & y3_d3)  + sum2_d1(5);
   ----------------Synchro barrier, entering cycle 4----------------
   sum4 <= ( "0" & x4_d4) + ( "0" & y4_d4)  + sum3_d1(5);
   ----------------Synchro barrier, entering cycle 5----------------
   sum5 <= ( "0" & x5_d5) + ( "0" & y5_d5)  + sum4_d1(5);
   R <= sum5(1 downto 0) & sum4_d1(4 downto 0) & sum3_d2(4 downto 0) & sum2_d3(4 downto 0) & sum1_d4(4 downto 0) & sum0_d5(4 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                 LZCShifter_28_to_28_counting_32_F600_uid16
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

entity LZCShifter_28_to_28_counting_32_F600_uid16 is
   port ( clk, rst : in std_logic;
          I : in  std_logic_vector(27 downto 0);
          Count : out  std_logic_vector(4 downto 0);
          O : out  std_logic_vector(27 downto 0)   );
end entity;

architecture arch of LZCShifter_28_to_28_counting_32_F600_uid16 is
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
--                           IntAdder_34_f600_uid20
--                     (IntAdderClassical_34_F600_uid22)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 6 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_34_f600_uid20 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(33 downto 0);
          Y : in  std_logic_vector(33 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(33 downto 0)   );
end entity;

architecture arch of IntAdder_34_f600_uid20 is
signal x0 :  std_logic_vector(4 downto 0);
signal y0 :  std_logic_vector(4 downto 0);
signal x1, x1_d1 :  std_logic_vector(4 downto 0);
signal y1, y1_d1 :  std_logic_vector(4 downto 0);
signal x2, x2_d1, x2_d2 :  std_logic_vector(4 downto 0);
signal y2, y2_d1, y2_d2 :  std_logic_vector(4 downto 0);
signal x3, x3_d1, x3_d2, x3_d3 :  std_logic_vector(4 downto 0);
signal y3, y3_d1, y3_d2, y3_d3 :  std_logic_vector(4 downto 0);
signal x4, x4_d1, x4_d2, x4_d3, x4_d4 :  std_logic_vector(4 downto 0);
signal y4, y4_d1, y4_d2, y4_d3, y4_d4 :  std_logic_vector(4 downto 0);
signal x5, x5_d1, x5_d2, x5_d3, x5_d4, x5_d5 :  std_logic_vector(4 downto 0);
signal y5, y5_d1, y5_d2, y5_d3, y5_d4, y5_d5 :  std_logic_vector(4 downto 0);
signal x6, x6_d1, x6_d2, x6_d3, x6_d4, x6_d5, x6_d6 :  std_logic_vector(3 downto 0);
signal y6, y6_d1, y6_d2, y6_d3, y6_d4, y6_d5, y6_d6 :  std_logic_vector(3 downto 0);
signal sum0, sum0_d1, sum0_d2, sum0_d3, sum0_d4, sum0_d5, sum0_d6 :  std_logic_vector(5 downto 0);
signal sum1, sum1_d1, sum1_d2, sum1_d3, sum1_d4, sum1_d5 :  std_logic_vector(5 downto 0);
signal sum2, sum2_d1, sum2_d2, sum2_d3, sum2_d4 :  std_logic_vector(5 downto 0);
signal sum3, sum3_d1, sum3_d2, sum3_d3 :  std_logic_vector(5 downto 0);
signal sum4, sum4_d1, sum4_d2 :  std_logic_vector(5 downto 0);
signal sum5, sum5_d1 :  std_logic_vector(5 downto 0);
signal sum6 :  std_logic_vector(4 downto 0);
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
            sum0_d1 <=  sum0;
            sum0_d2 <=  sum0_d1;
            sum0_d3 <=  sum0_d2;
            sum0_d4 <=  sum0_d3;
            sum0_d5 <=  sum0_d4;
            sum0_d6 <=  sum0_d5;
            sum1_d1 <=  sum1;
            sum1_d2 <=  sum1_d1;
            sum1_d3 <=  sum1_d2;
            sum1_d4 <=  sum1_d3;
            sum1_d5 <=  sum1_d4;
            sum2_d1 <=  sum2;
            sum2_d2 <=  sum2_d1;
            sum2_d3 <=  sum2_d2;
            sum2_d4 <=  sum2_d3;
            sum3_d1 <=  sum3;
            sum3_d2 <=  sum3_d1;
            sum3_d3 <=  sum3_d2;
            sum4_d1 <=  sum4;
            sum4_d2 <=  sum4_d1;
            sum5_d1 <=  sum5;
         end if;
      end process;
   --Classical
   x0 <= X(4 downto 0);
   y0 <= Y(4 downto 0);
   x1 <= X(9 downto 5);
   y1 <= Y(9 downto 5);
   x2 <= X(14 downto 10);
   y2 <= Y(14 downto 10);
   x3 <= X(19 downto 15);
   y3 <= Y(19 downto 15);
   x4 <= X(24 downto 20);
   y4 <= Y(24 downto 20);
   x5 <= X(29 downto 25);
   y5 <= Y(29 downto 25);
   x6 <= X(33 downto 30);
   y6 <= Y(33 downto 30);
   sum0 <= ( "0" & x0) + ( "0" & y0)  + Cin;
   ----------------Synchro barrier, entering cycle 1----------------
   sum1 <= ( "0" & x1_d1) + ( "0" & y1_d1)  + sum0_d1(5);
   ----------------Synchro barrier, entering cycle 2----------------
   sum2 <= ( "0" & x2_d2) + ( "0" & y2_d2)  + sum1_d1(5);
   ----------------Synchro barrier, entering cycle 3----------------
   sum3 <= ( "0" & x3_d3) + ( "0" & y3_d3)  + sum2_d1(5);
   ----------------Synchro barrier, entering cycle 4----------------
   sum4 <= ( "0" & x4_d4) + ( "0" & y4_d4)  + sum3_d1(5);
   ----------------Synchro barrier, entering cycle 5----------------
   sum5 <= ( "0" & x5_d5) + ( "0" & y5_d5)  + sum4_d1(5);
   ----------------Synchro barrier, entering cycle 6----------------
   sum6 <= ( "0" & x6_d6) + ( "0" & y6_d6)  + sum5_d1(5);
   R <= sum6(3 downto 0) & sum5_d1(4 downto 0) & sum4_d2(4 downto 0) & sum3_d3(4 downto 0) & sum2_d4(4 downto 0) & sum1_d5(4 downto 0) & sum0_d6(4 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                              fp_adder_single
--                           (FPAdd_8_23_F600_uid2)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 25 cycles

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
   component RightShifter_24_by_max_26_F600_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             S : in  std_logic_vector(4 downto 0);
             R : out  std_logic_vector(49 downto 0)   );
   end component;

   component IntAdder_27_f600_uid8 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(26 downto 0);
             Y : in  std_logic_vector(26 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(26 downto 0)   );
   end component;

   component LZCShifter_28_to_28_counting_32_F600_uid16 is
      port ( clk, rst : in std_logic;
             I : in  std_logic_vector(27 downto 0);
             Count : out  std_logic_vector(4 downto 0);
             O : out  std_logic_vector(27 downto 0)   );
   end component;

   component IntAdder_34_f600_uid20 is
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
signal newX, newX_d1, newX_d2, newX_d3, newX_d4 :  std_logic_vector(33 downto 0);
signal newY :  std_logic_vector(33 downto 0);
signal expX, expX_d1, expX_d2, expX_d3, expX_d4, expX_d5, expX_d6, expX_d7, expX_d8, expX_d9, expX_d10 :  std_logic_vector(7 downto 0);
signal excX :  std_logic_vector(1 downto 0);
signal excY :  std_logic_vector(1 downto 0);
signal signX, signX_d1 :  std_logic;
signal signY :  std_logic;
signal EffSub, EffSub_d1, EffSub_d2, EffSub_d3, EffSub_d4, EffSub_d5, EffSub_d6, EffSub_d7, EffSub_d8, EffSub_d9, EffSub_d10, EffSub_d11, EffSub_d12, EffSub_d13, EffSub_d14, EffSub_d15, EffSub_d16, EffSub_d17, EffSub_d18, EffSub_d19, EffSub_d20, EffSub_d21, EffSub_d22, EffSub_d23 :  std_logic;
signal sXsYExnXY, sXsYExnXY_d1 :  std_logic_vector(5 downto 0);
signal sdExnXY :  std_logic_vector(3 downto 0);
signal fracY, fracY_d1 :  std_logic_vector(23 downto 0);
signal excRt, excRt_d1, excRt_d2, excRt_d3, excRt_d4, excRt_d5, excRt_d6, excRt_d7, excRt_d8, excRt_d9, excRt_d10, excRt_d11, excRt_d12, excRt_d13, excRt_d14, excRt_d15, excRt_d16, excRt_d17, excRt_d18, excRt_d19, excRt_d20, excRt_d21, excRt_d22 :  std_logic_vector(1 downto 0);
signal signR, signR_d1, signR_d2, signR_d3, signR_d4, signR_d5, signR_d6, signR_d7, signR_d8, signR_d9, signR_d10, signR_d11, signR_d12, signR_d13, signR_d14, signR_d15, signR_d16, signR_d17, signR_d18, signR_d19, signR_d20, signR_d21, signR_d22 :  std_logic;
signal expDiff, expDiff_d1 :  std_logic_vector(8 downto 0);
signal shiftedOut :  std_logic;
signal shiftVal :  std_logic_vector(4 downto 0);
signal shiftedFracY, shiftedFracY_d1 :  std_logic_vector(49 downto 0);
signal sticky, sticky_d1, sticky_d2, sticky_d3, sticky_d4, sticky_d5, sticky_d6 :  std_logic;
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
signal eqdiffsign, eqdiffsign_d1, eqdiffsign_d2, eqdiffsign_d3, eqdiffsign_d4, eqdiffsign_d5, eqdiffsign_d6, eqdiffsign_d7 :  std_logic;
signal expFrac :  std_logic_vector(33 downto 0);
signal stk :  std_logic;
signal rnd :  std_logic;
signal grd :  std_logic;
signal lsb :  std_logic;
signal addToRoundBit, addToRoundBit_d1 :  std_logic;
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
            signX_d1 <=  signX;
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
            sXsYExnXY_d1 <=  sXsYExnXY;
            fracY_d1 <=  fracY;
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
            expDiff_d1 <=  expDiff;
            shiftedFracY_d1 <=  shiftedFracY;
            sticky_d1 <=  sticky;
            sticky_d2 <=  sticky_d1;
            sticky_d3 <=  sticky_d2;
            sticky_d4 <=  sticky_d3;
            sticky_d5 <=  sticky_d4;
            sticky_d6 <=  sticky_d5;
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
            addToRoundBit_d1 <=  addToRoundBit;
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
   fracY <= "000000000000000000000000" when excY="00" else ('1' & newY(22 downto 0));
   ----------------Synchro barrier, entering cycle 3----------------
   with sXsYExnXY_d1 select 
   excRt <= "00" when "000000"|"010000"|"100000"|"110000",
      "01" when "000101"|"010101"|"100101"|"110101"|"000100"|"010100"|"100100"|"110100"|"000001"|"010001"|"100001"|"110001",
      "10" when "111010"|"001010"|"001000"|"011000"|"101000"|"111000"|"000010"|"010010"|"100010"|"110010"|"001001"|"011001"|"101001"|"111001"|"000110"|"010110"|"100110"|"110110", 
      "11" when others;
   signR<= '0' when (sXsYExnXY_d1="100000" or sXsYExnXY_d1="010000") else signX_d1;
   ---------------- cycle 2----------------
   expDiff <= eXmeY_d1 when swap = '0' else eYmeX_d1;
   ----------------Synchro barrier, entering cycle 3----------------
   shiftedOut <= '1' when (expDiff_d1 > 25) else '0';
   shiftVal <= expDiff_d1(4 downto 0) when shiftedOut='0' else CONV_STD_LOGIC_VECTOR(26,5) ;
   RightShifterComponent: RightShifter_24_by_max_26_F600_uid4  -- pipelineDepth=2 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => shiftedFracY,
                 S => shiftVal,
                 X => fracY_d1);
   ----------------Synchro barrier, entering cycle 5----------------
   ----------------Synchro barrier, entering cycle 6----------------
   sticky <= '0' when (shiftedFracY_d1(23 downto 0)=CONV_STD_LOGIC_VECTOR(0,24)) else '1';
   ---------------- cycle 5----------------
   ----------------Synchro barrier, entering cycle 6----------------
   fracYfar <= "0" & shiftedFracY_d1(49 downto 24);
   EffSubVector <= (26 downto 0 => EffSub_d4);
   fracYfarXorOp <= fracYfar xor EffSubVector;
   fracXfar <= "01" & (newX_d4(22 downto 0)) & "00";
   ----------------Synchro barrier, entering cycle 7----------------
   cInAddFar <= EffSub_d5 and not sticky_d1;
   fracAdder: IntAdder_27_f600_uid8  -- pipelineDepth=5 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => cInAddFar,
                 R => fracAddResult,
                 X => fracXfar_d1,
                 Y => fracYfarXorOp_d1);
   ----------------Synchro barrier, entering cycle 12----------------
   fracGRS<= fracAddResult & sticky_d6; 
   extendedExpInc<= ("00" & expX_d10) + '1';
   LZC_component: LZCShifter_28_to_28_counting_32_F600_uid16  -- pipelineDepth=5 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Count => nZerosNew,
                 I => fracGRS,
                 O => shiftedFrac);
   ----------------Synchro barrier, entering cycle 17----------------
   ----------------Synchro barrier, entering cycle 18----------------
   updatedExp <= extendedExpInc_d6 - ("00000" & nZerosNew_d1);
   eqdiffsign <= '1' when nZerosNew_d1="11111" else '0';
   expFrac<= updatedExp & shiftedFrac_d1(26 downto 3);
   ---------------- cycle 17----------------
   stk<= shiftedFrac(1) or shiftedFrac(0);
   rnd<= shiftedFrac(2);
   grd<= shiftedFrac(3);
   lsb<= shiftedFrac(4);
   addToRoundBit<= '0' when (lsb='0' and grd='1' and rnd='0' and stk='0')  else '1';
   ----------------Synchro barrier, entering cycle 18----------------
   roundingAdder: IntAdder_34_f600_uid20  -- pipelineDepth=6 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => addToRoundBit_d1,
                 R => RoundedExpFrac,
                 X => expFrac,
                 Y => "0000000000000000000000000000000000");
   ---------------- cycle 24----------------
   upExc <= RoundedExpFrac(33 downto 32);
   fracR <= RoundedExpFrac(23 downto 1);
   expR <= RoundedExpFrac(31 downto 24);
   ----------------Synchro barrier, entering cycle 25----------------
   exExpExc <= upExc_d1 & excRt_d22;
   with (exExpExc) select 
   excRt2<= "00" when "0000"|"0100"|"1000"|"1100"|"1001"|"1101",
      "01" when "0001",
      "10" when "0010"|"0110"|"1010"|"1110"|"0101",
      "11" when others;
   excR <= "00" when (eqdiffsign_d7='1' and EffSub_d23='1' and not(excRt_d22="11")) else excRt2;
   signR2 <= '0' when (eqdiffsign_d7='1' and EffSub_d23='1') else signR_d22;
   computedR <= excR & signR2 & expR_d1 & fracR_d1;
   R <= computedR;
end architecture;

