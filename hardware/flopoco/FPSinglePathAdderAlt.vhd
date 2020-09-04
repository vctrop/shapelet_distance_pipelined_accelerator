--------------------------------------------------------------------------------
--                    RightShifter_24_by_max_26_F400_uid4
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

entity RightShifter_24_by_max_26_F400_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          S : in  std_logic_vector(4 downto 0);
          R : out  std_logic_vector(49 downto 0)   );
end entity;

architecture arch of RightShifter_24_by_max_26_F400_uid4 is
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
--                           IntAdder_27_f400_uid8
--                     (IntAdderClassical_27_F400_uid10)
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

entity IntAdder_27_f400_uid8 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(26 downto 0);
          Y : in  std_logic_vector(26 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(26 downto 0)   );
end entity;

architecture arch of IntAdder_27_f400_uid8 is
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
--                 LZCShifter_28_to_28_counting_32_F400_uid16
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

entity LZCShifter_28_to_28_counting_32_F400_uid16 is
   port ( clk, rst : in std_logic;
          I : in  std_logic_vector(27 downto 0);
          Count : out  std_logic_vector(4 downto 0);
          O : out  std_logic_vector(27 downto 0)   );
end entity;

architecture arch of LZCShifter_28_to_28_counting_32_F400_uid16 is
signal level5 :  std_logic_vector(27 downto 0);
signal count4, count4_d1, count4_d2 :  std_logic;
signal level4, level4_d1 :  std_logic_vector(27 downto 0);
signal count3, count3_d1 :  std_logic;
signal level3 :  std_logic_vector(27 downto 0);
signal count2, count2_d1 :  std_logic;
signal level2, level2_d1 :  std_logic_vector(27 downto 0);
signal count1 :  std_logic;
signal level1 :  std_logic_vector(27 downto 0);
signal count0 :  std_logic;
signal level0 :  std_logic_vector(27 downto 0);
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
   count4<= '1' when level5(27 downto 12) = (27 downto 12=>'0') else '0';
   level4<= level5(27 downto 0) when count4='0' else level5(11 downto 0) & (15 downto 0 => '0');

   ----------------Synchro barrier, entering cycle 1----------------
   count3<= '1' when level4_d1(27 downto 20) = (27 downto 20=>'0') else '0';
   level3<= level4_d1(27 downto 0) when count3='0' else level4_d1(19 downto 0) & (7 downto 0 => '0');

   count2<= '1' when level3(27 downto 24) = (27 downto 24=>'0') else '0';
   level2<= level3(27 downto 0) when count2='0' else level3(23 downto 0) & (3 downto 0 => '0');

   ----------------Synchro barrier, entering cycle 2----------------
   count1<= '1' when level2_d1(27 downto 26) = (27 downto 26=>'0') else '0';
   level1<= level2_d1(27 downto 0) when count1='0' else level2_d1(25 downto 0) & (1 downto 0 => '0');

   count0<= '1' when level1(27 downto 27) = (27 downto 27=>'0') else '0';
   level0<= level1(27 downto 0) when count0='0' else level1(26 downto 0) & (0 downto 0 => '0');

   O <= level0;
   sCount <= count4_d2 & count3_d1 & count2_d1 & count1 & count0;
   Count <= sCount;
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_34_f400_uid20
--                     (IntAdderClassical_34_F400_uid22)
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

entity IntAdder_34_f400_uid20 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(33 downto 0);
          Y : in  std_logic_vector(33 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(33 downto 0)   );
end entity;

architecture arch of IntAdder_34_f400_uid20 is
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
--                            FPAdd_8_23_F400_uid2
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 7 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FPAdd_8_23_F400_uid2 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          Y : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of FPAdd_8_23_F400_uid2 is
   component RightShifter_24_by_max_26_F400_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             S : in  std_logic_vector(4 downto 0);
             R : out  std_logic_vector(49 downto 0)   );
   end component;

   component IntAdder_27_f400_uid8 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(26 downto 0);
             Y : in  std_logic_vector(26 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(26 downto 0)   );
   end component;

   component LZCShifter_28_to_28_counting_32_F400_uid16 is
      port ( clk, rst : in std_logic;
             I : in  std_logic_vector(27 downto 0);
             Count : out  std_logic_vector(4 downto 0);
             O : out  std_logic_vector(27 downto 0)   );
   end component;

   component IntAdder_34_f400_uid20 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(33 downto 0);
             Y : in  std_logic_vector(33 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(33 downto 0)   );
   end component;

signal excExpFracX :  std_logic_vector(32 downto 0);
signal excExpFracY :  std_logic_vector(32 downto 0);
signal eXmeY :  std_logic_vector(8 downto 0);
signal eYmeX :  std_logic_vector(8 downto 0);
signal swap :  std_logic;
signal newX, newX_d1, newX_d2, newX_d3 :  std_logic_vector(33 downto 0);
signal newY, newY_d1 :  std_logic_vector(33 downto 0);
signal expX, expX_d1, expX_d2, expX_d3 :  std_logic_vector(7 downto 0);
signal excX :  std_logic_vector(1 downto 0);
signal excY, excY_d1 :  std_logic_vector(1 downto 0);
signal signX, signX_d1 :  std_logic;
signal signY :  std_logic;
signal EffSub, EffSub_d1, EffSub_d2, EffSub_d3, EffSub_d4, EffSub_d5, EffSub_d6, EffSub_d7 :  std_logic;
signal sXsYExnXY, sXsYExnXY_d1 :  std_logic_vector(5 downto 0);
signal sdExnXY :  std_logic_vector(3 downto 0);
signal fracY :  std_logic_vector(23 downto 0);
signal excRt, excRt_d1, excRt_d2, excRt_d3, excRt_d4, excRt_d5, excRt_d6 :  std_logic_vector(1 downto 0);
signal signR, signR_d1, signR_d2, signR_d3, signR_d4, signR_d5, signR_d6 :  std_logic;
signal expDiff, expDiff_d1 :  std_logic_vector(8 downto 0);
signal shiftedOut :  std_logic;
signal shiftVal :  std_logic_vector(4 downto 0);
signal shiftedFracY, shiftedFracY_d1 :  std_logic_vector(49 downto 0);
signal sticky :  std_logic;
signal fracYfar :  std_logic_vector(26 downto 0);
signal EffSubVector :  std_logic_vector(26 downto 0);
signal fracYfarXorOp :  std_logic_vector(26 downto 0);
signal fracXfar :  std_logic_vector(26 downto 0);
signal cInAddFar :  std_logic;
signal fracAddResult :  std_logic_vector(26 downto 0);
signal fracGRS :  std_logic_vector(27 downto 0);
signal extendedExpInc, extendedExpInc_d1, extendedExpInc_d2, extendedExpInc_d3 :  std_logic_vector(9 downto 0);
signal nZerosNew, nZerosNew_d1 :  std_logic_vector(4 downto 0);
signal shiftedFrac, shiftedFrac_d1 :  std_logic_vector(27 downto 0);
signal updatedExp :  std_logic_vector(9 downto 0);
signal eqdiffsign, eqdiffsign_d1 :  std_logic;
signal expFrac :  std_logic_vector(33 downto 0);
signal stk :  std_logic;
signal rnd :  std_logic;
signal grd :  std_logic;
signal lsb :  std_logic;
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
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            newX_d1 <=  newX;
            newX_d2 <=  newX_d1;
            newX_d3 <=  newX_d2;
            newY_d1 <=  newY;
            expX_d1 <=  expX;
            expX_d2 <=  expX_d1;
            expX_d3 <=  expX_d2;
            excY_d1 <=  excY;
            signX_d1 <=  signX;
            EffSub_d1 <=  EffSub;
            EffSub_d2 <=  EffSub_d1;
            EffSub_d3 <=  EffSub_d2;
            EffSub_d4 <=  EffSub_d3;
            EffSub_d5 <=  EffSub_d4;
            EffSub_d6 <=  EffSub_d5;
            EffSub_d7 <=  EffSub_d6;
            sXsYExnXY_d1 <=  sXsYExnXY;
            excRt_d1 <=  excRt;
            excRt_d2 <=  excRt_d1;
            excRt_d3 <=  excRt_d2;
            excRt_d4 <=  excRt_d3;
            excRt_d5 <=  excRt_d4;
            excRt_d6 <=  excRt_d5;
            signR_d1 <=  signR;
            signR_d2 <=  signR_d1;
            signR_d3 <=  signR_d2;
            signR_d4 <=  signR_d3;
            signR_d5 <=  signR_d4;
            signR_d6 <=  signR_d5;
            expDiff_d1 <=  expDiff;
            shiftedFracY_d1 <=  shiftedFracY;
            extendedExpInc_d1 <=  extendedExpInc;
            extendedExpInc_d2 <=  extendedExpInc_d1;
            extendedExpInc_d3 <=  extendedExpInc_d2;
            nZerosNew_d1 <=  nZerosNew;
            shiftedFrac_d1 <=  shiftedFrac;
            eqdiffsign_d1 <=  eqdiffsign;
            upExc_d1 <=  upExc;
            fracR_d1 <=  fracR;
            expR_d1 <=  expR;
         end if;
      end process;
-- Exponent difference and swap  --
   excExpFracX <= X(33 downto 32) & X(30 downto 0);
   excExpFracY <= Y(33 downto 32) & Y(30 downto 0);
   eXmeY <= ("0" & X(30 downto 23)) - ("0" & Y(30 downto 23));
   eYmeX <= ("0" & Y(30 downto 23)) - ("0" & X(30 downto 23));
   swap <= '0' when excExpFracX >= excExpFracY else '1';
   newX <= X when swap = '0' else Y;
   newY <= Y when swap = '0' else X;
   expX<= newX(30 downto 23);
   excX<= newX(33 downto 32);
   excY<= newY(33 downto 32);
   signX<= newX(31);
   signY<= newY(31);
   EffSub <= signX xor signY;
   sXsYExnXY <= signX & signY & excX & excY;
   sdExnXY <= excX & excY;
   ----------------Synchro barrier, entering cycle 1----------------
   fracY <= "000000000000000000000000" when excY_d1="00" else ('1' & newY_d1(22 downto 0));
   with sXsYExnXY_d1 select 
   excRt <= "00" when "000000"|"010000"|"100000"|"110000",
      "01" when "000101"|"010101"|"100101"|"110101"|"000100"|"010100"|"100100"|"110100"|"000001"|"010001"|"100001"|"110001",
      "10" when "111010"|"001010"|"001000"|"011000"|"101000"|"111000"|"000010"|"010010"|"100010"|"110010"|"001001"|"011001"|"101001"|"111001"|"000110"|"010110"|"100110"|"110110", 
      "11" when others;
   signR<= '0' when (sXsYExnXY_d1="100000" or sXsYExnXY_d1="010000") else signX_d1;
   ---------------- cycle 0----------------
   expDiff <= eXmeY when swap = '0' else eYmeX;
   ----------------Synchro barrier, entering cycle 1----------------
   shiftedOut <= '1' when (expDiff_d1 > 25) else '0';
   shiftVal <= expDiff_d1(4 downto 0) when shiftedOut='0' else CONV_STD_LOGIC_VECTOR(26,5) ;
   RightShifterComponent: RightShifter_24_by_max_26_F400_uid4  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => shiftedFracY,
                 S => shiftVal,
                 X => fracY);
   ----------------Synchro barrier, entering cycle 2----------------
   ----------------Synchro barrier, entering cycle 3----------------
   sticky <= '0' when (shiftedFracY_d1(23 downto 0)=CONV_STD_LOGIC_VECTOR(0,24)) else '1';
   ---------------- cycle 2----------------
   ----------------Synchro barrier, entering cycle 3----------------
   fracYfar <= "0" & shiftedFracY_d1(49 downto 24);
   EffSubVector <= (26 downto 0 => EffSub_d3);
   fracYfarXorOp <= fracYfar xor EffSubVector;
   fracXfar <= "01" & (newX_d3(22 downto 0)) & "00";
   cInAddFar <= EffSub_d3 and not sticky;
   fracAdder: IntAdder_27_f400_uid8  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => cInAddFar,
                 R => fracAddResult,
                 X => fracXfar,
                 Y => fracYfarXorOp);
   fracGRS<= fracAddResult & sticky; 
   extendedExpInc<= ("00" & expX_d3) + '1';
   LZC_component: LZCShifter_28_to_28_counting_32_F400_uid16  -- pipelineDepth=2 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Count => nZerosNew,
                 I => fracGRS,
                 O => shiftedFrac);
   ----------------Synchro barrier, entering cycle 5----------------
   ----------------Synchro barrier, entering cycle 6----------------
   updatedExp <= extendedExpInc_d3 - ("00000" & nZerosNew_d1);
   eqdiffsign <= '1' when nZerosNew_d1="11111" else '0';
   expFrac<= updatedExp & shiftedFrac_d1(26 downto 3);
   ---------------- cycle 5----------------
   ----------------Synchro barrier, entering cycle 6----------------
   stk<= shiftedFrac_d1(1) or shiftedFrac_d1(0);
   rnd<= shiftedFrac_d1(2);
   grd<= shiftedFrac_d1(3);
   lsb<= shiftedFrac_d1(4);
   addToRoundBit<= '0' when (lsb='0' and grd='1' and rnd='0' and stk='0')  else '1';
   roundingAdder: IntAdder_34_f400_uid20  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => addToRoundBit,
                 R => RoundedExpFrac,
                 X => expFrac,
                 Y => "0000000000000000000000000000000000");
   ---------------- cycle 6----------------
   upExc <= RoundedExpFrac(33 downto 32);
   fracR <= RoundedExpFrac(23 downto 1);
   expR <= RoundedExpFrac(31 downto 24);
   ----------------Synchro barrier, entering cycle 7----------------
   exExpExc <= upExc_d1 & excRt_d6;
   with (exExpExc) select 
   excRt2<= "00" when "0000"|"0100"|"1000"|"1100"|"1001"|"1101",
      "01" when "0001",
      "10" when "0010"|"0110"|"1010"|"1110"|"0101",
      "11" when others;
   excR <= "00" when (eqdiffsign_d1='1' and EffSub_d7='1' and not(excRt_d6="11")) else excRt2;
   signR2 <= '0' when (eqdiffsign_d1='1' and EffSub_d7='1') else signR_d6;
   computedR <= excR & signR2 & expR_d1 & fracR_d1;
   R <= computedR;
end architecture;

--------------------------------------------------------------------------------
--                 TestBench_FPAdd_8_23_F400_uid2_F400_uid28
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Cristian Klein, Nicolas Brunie (2007-2010)
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity TestBench_FPAdd_8_23_F400_uid2_F400_uid28 is
end entity;

architecture behavorial of TestBench_FPAdd_8_23_F400_uid2_F400_uid28 is
   component FPAdd_8_23_F400_uid2 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(8+23+2 downto 0);
             Y : in  std_logic_vector(8+23+2 downto 0);
             R : out  std_logic_vector(8+23+2 downto 0)   );
   end component;
   signal X :  std_logic_vector(33 downto 0);
   signal Y :  std_logic_vector(33 downto 0);
   signal R :  std_logic_vector(8+23+2 downto 0);
   signal clk :  std_logic;
   signal rst :  std_logic;

   -- FP compare function (found vs. real)
   function fp_equal(a : std_logic_vector; b : std_logic_vector) return boolean is
   begin
      if b(b'high downto b'high-1) = "01" then
         return a = b;
      elsif b(b'high downto b'high-1) = "11" then
         return (a(a'high downto a'high-1)=b(b'high downto b'high-1));
      else
         return a(a'high downto a'high-2) = b(b'high downto b'high-2);
      end if;
   end;



 -- converts std_logic into a character
   function chr(sl: std_logic) return character is
      variable c: character;
   begin
      case sl is
         when 'U' => c:= 'U';
         when 'X' => c:= 'X';
         when '0' => c:= '0';
         when '1' => c:= '1';
         when 'Z' => c:= 'Z';
         when 'W' => c:= 'W';
         when 'L' => c:= 'L';
         when 'H' => c:= 'H';
         when '-' => c:= '-';
      end case;
      return c;
   end chr;
   -- converts bit to std_logic (1 to 1)
   function to_stdlogic(b : bit) return std_logic is
       variable sl : std_logic;
   begin
      case b is 
         when '0' => sl := '0';
         when '1' => sl := '1';
      end case;
      return sl;
   end to_stdlogic;
   -- converts std_logic into a string (1 to 1)
   function str(sl: std_logic) return string is
    variable s: string(1 to 1);
    begin
      s(1) := chr(sl);
      return s;
   end str;
   -- converts std_logic_vector into a string (binary base)
   -- (this also takes care of the fact that the range of
   --  a string is natural while a std_logic_vector may
   --  have an integer range)
   function str(slv: std_logic_vector) return string is
      variable result : string (1 to slv'length);
      variable r : integer;
   begin
      r := 1;
      for i in slv'range loop
         result(r) := chr(slv(i));
         r := r + 1;
      end loop;
      return result;
   end str;




   -- test isZero
   function iszero(a : std_logic_vector) return boolean is
   begin
      return  a = (a'high downto 0 => '0');
   end;


   -- FP IEEE compare function (found vs. real)
   function fp_equal_ieee(a : std_logic_vector; b : std_logic_vector; we : integer; wf : integer) return boolean is
   begin
      if a(wf+we downto wf) = b(wf+we downto wf) and b(we+wf-1 downto wf) = (we downto 1 => '1') then
         if iszero(b(wf-1 downto 0)) then return  iszero(a(wf-1 downto 0));
         else return not iszero(a(wf - 1 downto 0));
         end if;
      else
         return a(a'high downto 0) = b(b'high downto 0);
      end if;
   end;

   -- FP subtypes for casting
   subtype fp34 is std_logic_vector(33 downto 0);
begin
   test: FPAdd_8_23_F400_uid2  -- pipelineDepth=7 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => R,
                 X => X,
                 Y => Y);
   -- Ticking clock signal
   process
   begin
      clk <= '0';
      wait for 5 ns;
      clk <= '1';
      wait for 5 ns;
   end process;

   -- Setting the inputs
   process
   begin
      -- Send reset
      rst <= '1';
      wait for 10 ns;
      rst <= '0';
      X <= "0100111111100000000000000000000000"; 
      Y <= "0110111111100000000000000000000000"; 
      wait for 10 ns;
      X <= "0100111111100000000000000000000000"; 
      Y <= "0000010011110011010111111011111011"; 
      wait for 10 ns;
      X <= "0100111111100000000000000000000000"; 
      Y <= "0010001011111011000011101110110000"; 
      wait for 10 ns;
      X <= "1000010100101010101001000001100010"; 
      Y <= "1010111011110000100100110011110000"; 
      wait for 10 ns;
      X <= "1001101011100101100000011010111110"; 
      Y <= "1000100011101110110101010001111110"; 
      wait for 10 ns;
      X <= "1011100110000101101001010111010011"; 
      Y <= "1010111010110010111111001000010110"; 
      wait for 10 ns;
      X <= "0111000010001011110000000000000000"; 
      Y <= "0101000010001011110000000000000000"; 
      wait for 10 ns;
      X <= "0100111111100000000000000000000000"; 
      Y <= "0110110011010000000000000000000000"; 
      wait for 10 ns;
      X <= "0101100010110101101010100010000111"; 
      Y <= "0111100010111111000010000101010011"; 
      wait for 10 ns;
      X <= "0110101111100101100111111110110110"; 
      Y <= "0100101111011110101000111100111111"; 
      wait for 10 ns;
      X <= "0111000000011110100111010111110001"; 
      Y <= "0101000000111100000001100001101101"; 
      wait for 10 ns;
      X <= "0101000010011001000110110101101010"; 
      Y <= "0110110010111000010111110111100101"; 
      wait for 10 ns;
      X <= "0110010100100110111100000000001101"; 
      Y <= "0100000111101101100100111011011001"; 
      wait for 10 ns;
      X <= "0101010100110101001100101000111000"; 
      Y <= "0101011110000110101101110110001001"; 
      wait for 10 ns;
      X <= "0100101010110010000100100001011101"; 
      Y <= "0100101101000001110011111110100110"; 
      wait for 10 ns;
      X <= "1110101010111100110011011111001010"; 
      Y <= "1001000001011111000010000011000011"; 
      wait for 10 ns;
      X <= "0100001000001000011101011011100101"; 
      Y <= "0110001000010100001011001000110110"; 
      wait for 10 ns;
      X <= "0110010000111111111011110010111111"; 
      Y <= "0100010000001011010010101110111001"; 
      wait for 10 ns;
      X <= "0110000011000000111011011010011011"; 
      Y <= "0100000011101000011100100110101010"; 
      wait for 10 ns;
      X <= "0101010101111011001001001010110111"; 
      Y <= "0111001111001111001001101010110111"; 
      wait for 10 ns;
      X <= "0110001111101111110000011110000111"; 
      Y <= "0100000110001100110100001000010001"; 
      wait for 10 ns;
      X <= "0110000000101101011100010000100010"; 
      Y <= "0101110111011001011111000000000101"; 
      wait for 10 ns;
      X <= "0100001110000001000110101111001111"; 
      Y <= "0100000000001001010001110001011001"; 
      wait for 10 ns;
      X <= "1111101110011001110111000001100101"; 
      Y <= "0011000110111111011111101010000101"; 
      wait for 10 ns;
      X <= "0100000000000110101101010101100010"; 
      Y <= "0110000000010101100110000001001011"; 
      wait for 10 ns;
      X <= "0110000100111000110101110110111011"; 
      Y <= "0100000100001011101000111001011010"; 
      wait for 10 ns;
      X <= "0100001100100110010100101110011111"; 
      Y <= "0110001100001001000010110100010001"; 
      wait for 10 ns;
      X <= "0110011100010011001010010101111001"; 
      Y <= "0100100101111001111000111111100000"; 
      wait for 10 ns;
      wait for 100000 ns; -- allow simulation to finish
   end process;

   -- Checking the outputs
   process
   begin
      wait for 10 ns; -- wait for reset to complete
      wait for 70 ns; -- wait for pipeline to flush
      -- current time: 80
      -- input: X <= "0100111111100000000000000000000000"; 
      -- input: Y <= "0110111111100000000000000000000000"; 
      assert false or fp_equal(R,fp34'("0000000000000000000000000000000000")) report "Incorrect output value for R, expected 0000000000000000000000000000000000 | Test Number : 0  " severity ERROR; 
      wait for 10 ns;
      -- current time: 90
      -- input: X <= "0100111111100000000000000000000000"; 
      -- input: Y <= "0000010011110011010111111011111011"; 
      assert false or fp_equal(R,fp34'("0100111111100000000000000000000000")) report "Incorrect output value for R, expected 0100111111100000000000000000000000 | Test Number : 1  " severity ERROR; 
      wait for 10 ns;
      -- current time: 100
      -- input: X <= "0100111111100000000000000000000000"; 
      -- input: Y <= "0010001011111011000011101110110000"; 
      assert false or fp_equal(R,fp34'("0100111111100000000000000000000000")) report "Incorrect output value for R, expected 0100111111100000000000000000000000 | Test Number : 2  " severity ERROR; 
      wait for 10 ns;
      -- current time: 110
      -- input: X <= "1000010100101010101001000001100010"; 
      -- input: Y <= "1010111011110000100100110011110000"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 3  " severity ERROR; 
      wait for 10 ns;
      -- current time: 120
      -- input: X <= "1001101011100101100000011010111110"; 
      -- input: Y <= "1000100011101110110101010001111110"; 
      assert false or fp_equal(R,fp34'("1000000000000000000000000000000000")) report "Incorrect output value for R, expected 1000000000000000000000000000000000 | Test Number : 4  " severity ERROR; 
      wait for 10 ns;
      -- current time: 130
      -- input: X <= "1011100110000101101001010111010011"; 
      -- input: Y <= "1010111010110010111111001000010110"; 
      assert false or fp_equal(R,fp34'("1010000000000000000000000000000000")) report "Incorrect output value for R, expected 1010000000000000000000000000000000 | Test Number : 5  " severity ERROR; 
      wait for 10 ns;
      -- current time: 140
      -- input: X <= "0111000010001011110000000000000000"; 
      -- input: Y <= "0101000010001011110000000000000000"; 
      assert false or fp_equal(R,fp34'("0000000000000000000000000000000000")) report "Incorrect output value for R, expected 0000000000000000000000000000000000 | Test Number : 6  " severity ERROR; 
      wait for 10 ns;
      -- current time: 150
      -- input: X <= "0100111111100000000000000000000000"; 
      -- input: Y <= "0110110011010000000000000000000000"; 
      assert false or fp_equal(R,fp34'("0100111111011111111111111111111111")) report "Incorrect output value for R, expected 0100111111011111111111111111111111 | Test Number : 7  " severity ERROR; 
      wait for 10 ns;
      -- current time: 160
      -- input: X <= "0101100010110101101010100010000111"; 
      -- input: Y <= "0111100010111111000010000101010011"; 
      assert false or fp_equal(R,fp34'("0111100001100101011110001100110000")) report "Incorrect output value for R, expected 0111100001100101011110001100110000 | Test Number : 8  " severity ERROR; 
      wait for 10 ns;
      -- current time: 170
      -- input: X <= "0110101111100101100111111110110110"; 
      -- input: Y <= "0100101111011110101000111100111111"; 
      assert false or fp_equal(R,fp34'("0110101110010010011100000010110100")) report "Incorrect output value for R, expected 0110101110010010011100000010110100 | Test Number : 9  " severity ERROR; 
      wait for 10 ns;
      -- current time: 180
      -- input: X <= "0111000000011110100111010111110001"; 
      -- input: Y <= "0101000000111100000001100001101101"; 
      assert false or fp_equal(R,fp34'("0101000000011001011011101011101001")) report "Incorrect output value for R, expected 0101000000011001011011101011101001 | Test Number : 10  " severity ERROR; 
      wait for 10 ns;
      -- current time: 190
      -- input: X <= "0101000010011001000110110101101010"; 
      -- input: Y <= "0110110010111000010111110111100101"; 
      assert false or fp_equal(R,fp34'("0101000010011001000110110101101010")) report "Incorrect output value for R, expected 0101000010011001000110110101101010 | Test Number : 11  " severity ERROR; 
      wait for 10 ns;
      -- current time: 200
      -- input: X <= "0110010100100110111100000000001101"; 
      -- input: Y <= "0100000111101101100100111011011001"; 
      assert false or fp_equal(R,fp34'("0110010100100110111100000000001101")) report "Incorrect output value for R, expected 0110010100100110111100000000001101 | Test Number : 12  " severity ERROR; 
      wait for 10 ns;
      -- current time: 210
      -- input: X <= "0101010100110101001100101000111000"; 
      -- input: Y <= "0101011110000110101101110110001001"; 
      assert false or fp_equal(R,fp34'("0101011110000110101101110110100100")) report "Incorrect output value for R, expected 0101011110000110101101110110100100 | Test Number : 13  " severity ERROR; 
      wait for 10 ns;
      -- current time: 220
      -- input: X <= "0100101010110010000100100001011101"; 
      -- input: Y <= "0100101101000001110011111110100110"; 
      assert false or fp_equal(R,fp34'("0100101101000011011000000111101001")) report "Incorrect output value for R, expected 0100101101000011011000000111101001 | Test Number : 14  " severity ERROR; 
      wait for 10 ns;
      -- current time: 230
      -- input: X <= "1110101010111100110011011111001010"; 
      -- input: Y <= "1001000001011111000010000011000011"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 15  " severity ERROR; 
      wait for 10 ns;
      -- current time: 240
      -- input: X <= "0100001000001000011101011011100101"; 
      -- input: Y <= "0110001000010100001011001000110110"; 
      assert false or fp_equal(R,fp34'("0110000111001110110110110101000100")) report "Incorrect output value for R, expected 0110000111001110110110110101000100 | Test Number : 16  " severity ERROR; 
      wait for 10 ns;
      -- current time: 250
      -- input: X <= "0110010000111111111011110010111111"; 
      -- input: Y <= "0100010000001011010010101110111001"; 
      assert false or fp_equal(R,fp34'("0110010000101010010010011011100010")) report "Incorrect output value for R, expected 0110010000101010010010011011100010 | Test Number : 17  " severity ERROR; 
      wait for 10 ns;
      -- current time: 260
      -- input: X <= "0110000011000000111011011010011011"; 
      -- input: Y <= "0100000011101000011100100110101010"; 
      assert false or fp_equal(R,fp34'("0100000011001111111101110010111001")) report "Incorrect output value for R, expected 0100000011001111111101110010111001 | Test Number : 18  " severity ERROR; 
      wait for 10 ns;
      -- current time: 270
      -- input: X <= "0101010101111011001001001010110111"; 
      -- input: Y <= "0111001111001111001001101010110111"; 
      assert false or fp_equal(R,fp34'("0101010101111011001000110011010010")) report "Incorrect output value for R, expected 0101010101111011001000110011010010 | Test Number : 19  " severity ERROR; 
      wait for 10 ns;
      -- current time: 280
      -- input: X <= "0110001111101111110000011110000111"; 
      -- input: Y <= "0100000110001100110100001000010001"; 
      assert false or fp_equal(R,fp34'("0110001111101111110000011101110001")) report "Incorrect output value for R, expected 0110001111101111110000011101110001 | Test Number : 20  " severity ERROR; 
      wait for 10 ns;
      -- current time: 290
      -- input: X <= "0110000000101101011100010000100010"; 
      -- input: Y <= "0101110111011001011111000000000101"; 
      assert false or fp_equal(R,fp34'("0101110111011001011111000000000101")) report "Incorrect output value for R, expected 0101110111011001011111000000000101 | Test Number : 21  " severity ERROR; 
      wait for 10 ns;
      -- current time: 300
      -- input: X <= "0100001110000001000110101111001111"; 
      -- input: Y <= "0100000000001001010001110001011001"; 
      assert false or fp_equal(R,fp34'("0100001110000001000110101111001111")) report "Incorrect output value for R, expected 0100001110000001000110101111001111 | Test Number : 22  " severity ERROR; 
      wait for 10 ns;
      -- current time: 310
      -- input: X <= "1111101110011001110111000001100101"; 
      -- input: Y <= "0011000110111111011111101010000101"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 23  " severity ERROR; 
      wait for 10 ns;
      -- current time: 320
      -- input: X <= "0100000000000110101101010101100010"; 
      -- input: Y <= "0110000000010101100110000001001011"; 
      assert false or fp_equal(R,fp34'("0010000000000000000000000000000000")) report "Incorrect output value for R, expected 0010000000000000000000000000000000 | Test Number : 24  " severity ERROR; 
      wait for 10 ns;
      -- current time: 330
      -- input: X <= "0110000100111000110101110110111011"; 
      -- input: Y <= "0100000100001011101000111001011010"; 
      assert false or fp_equal(R,fp34'("0110000100100011000001011010001110")) report "Incorrect output value for R, expected 0110000100100011000001011010001110 | Test Number : 25  " severity ERROR; 
      wait for 10 ns;
      -- current time: 340
      -- input: X <= "0100001100100110010100101110011111"; 
      -- input: Y <= "0110001100001001000010110100010001"; 
      assert false or fp_equal(R,fp34'("0100001100000011100110101000101101")) report "Incorrect output value for R, expected 0100001100000011100110101000101101 | Test Number : 26  " severity ERROR; 
      wait for 10 ns;
      -- current time: 350
      -- input: X <= "0110011100010011001010010101111001"; 
      -- input: Y <= "0100100101111001111000111111100000"; 
      assert false or fp_equal(R,fp34'("0100100101111001111000111111000110")) report "Incorrect output value for R, expected 0100100101111001111000111111000110 | Test Number : 27  " severity ERROR; 
      wait for 10 ns;
      assert false report "End of simulation" severity failure;
   end process;

end architecture;

