--------------------------------------------------------------------------------
--                          IntDualSub_26_F400_uid4
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

entity IntDualSub_26_F400_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(25 downto 0);
          Y : in  std_logic_vector(25 downto 0);
          RxMy : out  std_logic_vector(25 downto 0);
          RyMx : out  std_logic_vector(25 downto 0)   );
end entity;

architecture arch of IntDualSub_26_F400_uid4 is
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
--                 LZCShifter_25_to_25_counting_32_F400_uid8
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2007)
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity LZCShifter_25_to_25_counting_32_F400_uid8 is
   port ( clk, rst : in std_logic;
          I : in  std_logic_vector(24 downto 0);
          Count : out  std_logic_vector(4 downto 0);
          O : out  std_logic_vector(24 downto 0)   );
end entity;

architecture arch of LZCShifter_25_to_25_counting_32_F400_uid8 is
signal level5 :  std_logic_vector(24 downto 0);
signal count4, count4_d1, count4_d2 :  std_logic;
signal level4, level4_d1 :  std_logic_vector(24 downto 0);
signal count3, count3_d1 :  std_logic;
signal level3 :  std_logic_vector(24 downto 0);
signal count2, count2_d1 :  std_logic;
signal level2, level2_d1 :  std_logic_vector(24 downto 0);
signal count1 :  std_logic;
signal level1 :  std_logic_vector(24 downto 0);
signal count0 :  std_logic;
signal level0 :  std_logic_vector(24 downto 0);
signal sCount :  std_logic_vector(4 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            count4_d1 <=  count4;
            count4_d2 <=  count4_d1;
            level4_d1 <=  level4;
            count3_d1 <=  count3;
            count2_d1 <=  count2;
            level2_d1 <=  level2;
         end if;
      end process;
   level5 <= I ;
   count4<= '1' when level5(24 downto 9) = (24 downto 9=>'0') else '0';
   level4<= level5(24 downto 0) when count4='0' else level5(8 downto 0) & (15 downto 0 => '0');

   ----------------Synchro barrier, entering cycle 1----------------
   count3<= '1' when level4_d1(24 downto 17) = (24 downto 17=>'0') else '0';
   level3<= level4_d1(24 downto 0) when count3='0' else level4_d1(16 downto 0) & (7 downto 0 => '0');

   count2<= '1' when level3(24 downto 21) = (24 downto 21=>'0') else '0';
   level2<= level3(24 downto 0) when count2='0' else level3(20 downto 0) & (3 downto 0 => '0');

   ----------------Synchro barrier, entering cycle 2----------------
   count1<= '1' when level2_d1(24 downto 23) = (24 downto 23=>'0') else '0';
   level1<= level2_d1(24 downto 0) when count1='0' else level2_d1(22 downto 0) & (1 downto 0 => '0');

   count0<= '1' when level1(24 downto 24) = (24 downto 24=>'0') else '0';
   level0<= level1(24 downto 0) when count0='0' else level1(23 downto 0) & (0 downto 0 => '0');

   O <= level0;
   sCount <= count4_d2 & count3_d1 & count2_d1 & count1 & count0;
   Count <= sCount;
end architecture;

--------------------------------------------------------------------------------
--                    RightShifter_24_by_max_26_F400_uid12
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2011)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity RightShifter_24_by_max_26_F400_uid12 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          S : in  std_logic_vector(4 downto 0);
          R : out  std_logic_vector(49 downto 0)   );
end entity;

architecture arch of RightShifter_24_by_max_26_F400_uid12 is
signal level0 :  std_logic_vector(23 downto 0);
signal ps, ps_d1 :  std_logic_vector(4 downto 0);
signal level1 :  std_logic_vector(24 downto 0);
signal level2, level2_d1 :  std_logic_vector(26 downto 0);
signal level3 :  std_logic_vector(30 downto 0);
signal level4 :  std_logic_vector(38 downto 0);
signal level5 :  std_logic_vector(54 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            ps_d1 <=  ps;
            level2_d1 <=  level2;
         end if;
      end process;
   level0<= X;
   ps<= S;
   level1<=  (0 downto 0 => '0') & level0 when ps(0) = '1' else    level0 & (0 downto 0 => '0');
   level2<=  (1 downto 0 => '0') & level1 when ps(1) = '1' else    level1 & (1 downto 0 => '0');
   ----------------Synchro barrier, entering cycle 1----------------
   level3<=  (3 downto 0 => '0') & level2_d1 when ps_d1(2) = '1' else    level2_d1 & (3 downto 0 => '0');
   level4<=  (7 downto 0 => '0') & level3 when ps_d1(3) = '1' else    level3 & (7 downto 0 => '0');
   level5<=  (15 downto 0 => '0') & level4 when ps_d1(4) = '1' else    level4 & (15 downto 0 => '0');
   R <= level5(54 downto 5);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_27_f400_uid16
--                     (IntAdderClassical_27_F400_uid18)
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

entity IntAdder_27_f400_uid16 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(26 downto 0);
          Y : in  std_logic_vector(26 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(26 downto 0)   );
end entity;

architecture arch of IntAdder_27_f400_uid16 is
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
--                     FPAdd_8_23_F400_uid2_finalRoundAdd
--                          (IntAdder_33_f400_uid24)
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

entity FPAdd_8_23_F400_uid2_finalRoundAdd is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(32 downto 0);
          Y : in  std_logic_vector(32 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(32 downto 0)   );
end entity;

architecture arch of FPAdd_8_23_F400_uid2_finalRoundAdd is
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   --Alternative
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--                               fp_adder_dual
--                           (FPAdd_8_23_F400_uid2)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008)
--------------------------------------------------------------------------------
-- Pipeline depth: 7 cycles

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
   component IntDualSub_26_F400_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(25 downto 0);
             Y : in  std_logic_vector(25 downto 0);
             RxMy : out  std_logic_vector(25 downto 0);
             RyMx : out  std_logic_vector(25 downto 0)   );
   end component;

   component LZCShifter_25_to_25_counting_32_F400_uid8 is
      port ( clk, rst : in std_logic;
             I : in  std_logic_vector(24 downto 0);
             Count : out  std_logic_vector(4 downto 0);
             O : out  std_logic_vector(24 downto 0)   );
   end component;

   component RightShifter_24_by_max_26_F400_uid12 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             S : in  std_logic_vector(4 downto 0);
             R : out  std_logic_vector(49 downto 0)   );
   end component;

   component IntAdder_27_f400_uid16 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(26 downto 0);
             Y : in  std_logic_vector(26 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(26 downto 0)   );
   end component;

   component FPAdd_8_23_F400_uid2_finalRoundAdd is
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
signal newX, newX_d1, newX_d2, newX_d3, newX_d4, newX_d5, newX_d6, newX_d7 :  std_logic_vector(33 downto 0);
signal newY, newY_d1 :  std_logic_vector(33 downto 0);
signal exponentDifference, exponentDifference_d1 :  std_logic_vector(7 downto 0);
signal shiftedOut :  std_logic;
signal shiftVal, shiftVal_d1 :  std_logic_vector(4 downto 0);
signal EffSub, EffSub_d1, EffSub_d2, EffSub_d3, EffSub_d4, EffSub_d5, EffSub_d6 :  std_logic;
signal selectClosePath, selectClosePath_d1, selectClosePath_d2, selectClosePath_d3, selectClosePath_d4, selectClosePath_d5 :  std_logic;
signal sdExnXY, sdExnXY_d1, sdExnXY_d2, sdExnXY_d3, sdExnXY_d4, sdExnXY_d5, sdExnXY_d6 :  std_logic_vector(3 downto 0);
signal pipeSignY, pipeSignY_d1, pipeSignY_d2, pipeSignY_d3, pipeSignY_d4, pipeSignY_d5, pipeSignY_d6 :  std_logic;
signal fracXClose1 :  std_logic_vector(25 downto 0);
signal fracYClose1 :  std_logic_vector(25 downto 0);
signal fracRClosexMy, fracRClosexMy_d1 :  std_logic_vector(25 downto 0);
signal fracRCloseyMx, fracRCloseyMx_d1 :  std_logic_vector(25 downto 0);
signal fracSignClose :  std_logic;
signal fracRClose1 :  std_logic_vector(24 downto 0);
signal resSign, resSign_d1, resSign_d2, resSign_d3, resSign_d4, resSign_d5 :  std_logic;
signal nZerosNew, nZerosNew_d1 :  std_logic_vector(4 downto 0);
signal shiftedFrac, shiftedFrac_d1, shiftedFrac_d2 :  std_logic_vector(24 downto 0);
signal roundClose0, roundClose0_d1 :  std_logic;
signal resultCloseIsZero0, resultCloseIsZero0_d1 :  std_logic;
signal exponentResultClose, exponentResultClose_d1 :  std_logic_vector(9 downto 0);
signal resultBeforeRoundClose :  std_logic_vector(32 downto 0);
signal roundClose :  std_logic;
signal resultCloseIsZero :  std_logic;
signal fracNewY :  std_logic_vector(23 downto 0);
signal shiftedFracY, shiftedFracY_d1, shiftedFracY_d2 :  std_logic_vector(49 downto 0);
signal sticky, sticky_d1, sticky_d2 :  std_logic;
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
signal zeroFromClose, zeroFromClose_d1 :  std_logic;
signal resultRounded, resultRounded_d1 :  std_logic_vector(32 downto 0);
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
            newY_d1 <=  newY;
            exponentDifference_d1 <=  exponentDifference;
            shiftVal_d1 <=  shiftVal;
            EffSub_d1 <=  EffSub;
            EffSub_d2 <=  EffSub_d1;
            EffSub_d3 <=  EffSub_d2;
            EffSub_d4 <=  EffSub_d3;
            EffSub_d5 <=  EffSub_d4;
            EffSub_d6 <=  EffSub_d5;
            selectClosePath_d1 <=  selectClosePath;
            selectClosePath_d2 <=  selectClosePath_d1;
            selectClosePath_d3 <=  selectClosePath_d2;
            selectClosePath_d4 <=  selectClosePath_d3;
            selectClosePath_d5 <=  selectClosePath_d4;
            sdExnXY_d1 <=  sdExnXY;
            sdExnXY_d2 <=  sdExnXY_d1;
            sdExnXY_d3 <=  sdExnXY_d2;
            sdExnXY_d4 <=  sdExnXY_d3;
            sdExnXY_d5 <=  sdExnXY_d4;
            sdExnXY_d6 <=  sdExnXY_d5;
            pipeSignY_d1 <=  pipeSignY;
            pipeSignY_d2 <=  pipeSignY_d1;
            pipeSignY_d3 <=  pipeSignY_d2;
            pipeSignY_d4 <=  pipeSignY_d3;
            pipeSignY_d5 <=  pipeSignY_d4;
            pipeSignY_d6 <=  pipeSignY_d5;
            fracRClosexMy_d1 <=  fracRClosexMy;
            fracRCloseyMx_d1 <=  fracRCloseyMx;
            resSign_d1 <=  resSign;
            resSign_d2 <=  resSign_d1;
            resSign_d3 <=  resSign_d2;
            resSign_d4 <=  resSign_d3;
            resSign_d5 <=  resSign_d4;
            nZerosNew_d1 <=  nZerosNew;
            shiftedFrac_d1 <=  shiftedFrac;
            shiftedFrac_d2 <=  shiftedFrac_d1;
            roundClose0_d1 <=  roundClose0;
            resultCloseIsZero0_d1 <=  resultCloseIsZero0;
            exponentResultClose_d1 <=  exponentResultClose;
            shiftedFracY_d1 <=  shiftedFracY;
            shiftedFracY_d2 <=  shiftedFracY_d1;
            sticky_d1 <=  sticky;
            sticky_d2 <=  sticky_d1;
            fracResultfar0_d1 <=  fracResultfar0;
            fracResultFar1_d1 <=  fracResultFar1;
            roundFar1_d1 <=  roundFar1;
            exponentResultFar1_d1 <=  exponentResultFar1;
            zeroFromClose_d1 <=  zeroFromClose;
            resultRounded_d1 <=  resultRounded;
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
   shiftedOut <= exponentDifference(7) or exponentDifference(6) or exponentDifference(5);
   shiftVal <= exponentDifference(4 downto 0) when shiftedOut='0'
          else CONV_STD_LOGIC_VECTOR(26,5) ;
   ----------------Synchro barrier, entering cycle 1----------------
   EffSub <= newX_d1(31) xor newY_d1(31);
   selectClosePath <= EffSub when exponentDifference_d1(7 downto 1) = (7 downto 1 => '0') else '0';
   sdExnXY <= newX_d1(33 downto 32) & newY_d1(33 downto 32);
   pipeSignY <= newY_d1(31);

-- Close Path --
   fracXClose1 <= "01" & newX_d1(22 downto 0) & '0';
   with exponentDifference_d1(0) select
   fracYClose1 <=  "01" & newY_d1(22 downto 0) & '0' when '0',
                  "001" & newY_d1(22 downto 0)       when others;
   DualSubO: IntDualSub_26_F400_uid4  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 RxMy => fracRClosexMy,
                 RyMx => fracRCloseyMx,
                 X => fracXClose1,
                 Y => fracYClose1);
   ----------------Synchro barrier, entering cycle 2----------------
   fracSignClose <= fracRClosexMy_d1(25);
   fracRClose1 <= fracRClosexMy_d1(24 downto 0) when fracSignClose='0' else fracRCloseyMx_d1(24 downto 0);
   resSign <= '0' when selectClosePath_d1='1' and fracRClose1 = (24 downto 0 => '0') else
             newX_d2(31) xor (selectClosePath_d1 and fracSignClose);
   LZC_component: LZCShifter_25_to_25_counting_32_F400_uid8  -- pipelineDepth=2 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Count => nZerosNew,
                 I => fracRClose1,
                 O => shiftedFrac);
   ----------------Synchro barrier, entering cycle 4----------------
   ----------------Synchro barrier, entering cycle 5----------------
   roundClose0 <= shiftedFrac_d1(0) and shiftedFrac_d1(1);
   resultCloseIsZero0 <= '1' when nZerosNew_d1 = CONV_STD_LOGIC_VECTOR(31, 5) else '0';
   exponentResultClose <= ("00" & newX_d5(30 downto 23)) - (CONV_STD_LOGIC_VECTOR(0,5) & nZerosNew_d1);
   ----------------Synchro barrier, entering cycle 6----------------
   resultBeforeRoundClose <= exponentResultClose_d1(9 downto 0) & shiftedFrac_d2(23 downto 1);
   roundClose <= roundClose0_d1;
   resultCloseIsZero <= resultCloseIsZero0_d1;

-- Far Path --
   ---------------- cycle 1----------------
   fracNewY <= '1' & newY_d1(22 downto 0);
   RightShifterComponent: RightShifter_24_by_max_26_F400_uid12  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => shiftedFracY,
                 S => shiftVal_d1,
                 X => fracNewY);
   ----------------Synchro barrier, entering cycle 3----------------
   sticky <= '0' when (shiftedFracY_d1(23 downto 0)=CONV_STD_LOGIC_VECTOR(0,24)) else '1';
   ----------------Synchro barrier, entering cycle 4----------------
   fracYfar <= "0" & shiftedFracY_d2(49 downto 24);
   EffSubVector <= (26 downto 0 => EffSub_d3);
   fracYfarXorOp <= fracYfar xor EffSubVector;
   fracXfar <= "01" & (newX_d4(22 downto 0)) & "00";
   cInAddFar <= EffSub_d3 and not sticky_d1;
   fracAdderFar: IntAdder_27_f400_uid16  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => cInAddFar,
                 R => fracResultfar0,
                 X => fracXfar,
                 Y => fracYfarXorOp);
   ----------------Synchro barrier, entering cycle 5----------------
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
           sticky_d2 	 when fracLeadingBits = "00" 
      else fracResultFarNormStage(0) or  sticky_d2   when fracLeadingBits = "01" 
      else fracResultFarNormStage(1) or fracResultFarNormStage(0) or sticky_d2;
   roundFar1 <= fracResultRoundBit and (fracResultStickyBit or fracResultFar1(0));
   expOperationSel <= "11" when fracLeadingBits = "00" -- add -1 to exponent
               else   "00" when fracLeadingBits = "01" -- add 0 
               else   "01";                              -- add 1
   exponentUpdate <= (9 downto 1 => expOperationSel(1)) & expOperationSel(0);
   exponentResultfar0<="00" & (newX_d5(30 downto 23));
   exponentResultFar1 <= exponentResultfar0 + exponentUpdate;
   ----------------Synchro barrier, entering cycle 6----------------
   resultBeforeRoundFar <= exponentResultFar1_d1 & fracResultFar1_d1;
   roundFar <= roundFar1_d1;

-- Synchronization of both paths --
   ---------------- cycle 6----------------
   syncClose <= selectClosePath_d5;
   with syncClose select
   resultBeforeRound <= resultBeforeRoundClose when '1',
                        resultBeforeRoundFar   when others;
   with syncClose select
   round <= roundClose when '1',
            roundFar   when others;
   zeroFromClose <= syncClose and resultCloseIsZero;

-- Rounding --
   finalRoundAdder: FPAdd_8_23_F400_uid2_finalRoundAdd  -- pipelineDepth=0 maxInDelay=9.4872e-10
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => round,
                 R => resultRounded,
                 X => resultBeforeRound,
                 Y => (32 downto 0 => '0') );
   ----------------Synchro barrier, entering cycle 7----------------
   syncEffSub <= EffSub_d6;
   syncX <= newX_d7;
   syncSignY <= pipeSignY_d6;
   syncResSign <= resSign_d5;
   UnderflowOverflow <= resultRounded_d1(32 downto 31);
   with UnderflowOverflow select
   resultNoExn(33 downto 32) <=   (not zeroFromClose_d1) & "0" when "01", -- overflow
                                 "00" when "10" | "11",  -- underflow
                                 "0" &  not zeroFromClose_d1  when others; -- normal 
   resultNoExn(31 downto 0) <= syncResSign & resultRounded_d1(30 downto 0);
   syncExnXY <= sdExnXY_d6;
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

