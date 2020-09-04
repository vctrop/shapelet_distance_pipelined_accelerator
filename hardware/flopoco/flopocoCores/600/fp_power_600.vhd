--------------------------------------------------------------------------------
--                          IntSquarer_24_F600_uid4
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2009)
--------------------------------------------------------------------------------
-- Pipeline depth: 3 cycles

library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
library work;
entity IntSquarer_24_F600_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          R : out  std_logic_vector(47 downto 0)   );
end entity;

architecture arch of IntSquarer_24_F600_uid4 is
signal x0_16, x0_16_d1 :  std_logic_vector(17 downto 0);
signal x17_32, x17_32_d1, x17_32_d2 :  std_logic_vector(17 downto 0);
signal x17_32_shr, x17_32_shr_d1 :  std_logic_vector(17 downto 0);
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
            x17_32_d1 <=  x17_32;
            x17_32_d2 <=  x17_32_d1;
            x17_32_shr_d1 <=  x17_32_shr;
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
   p0 <= x0_16_d1 * x0_16_d1;
   p1_x2 <= x17_32_shr_d1 * x0_16_d1;
   ----------------Synchro barrier, entering cycle 2----------------
   s1 <= p1_x2_d1 + ( "00000000000000000" & p0_d1(35 downto 17));
   p2 <= x17_32_d2 * x17_32_d2;
   ----------------Synchro barrier, entering cycle 3----------------
   s2 <= p2_d1 + ( "00000000000000000" & s1_d1(35 downto 17));
   R <= s2(13 downto 0) & s1_d1(16 downto 0) & p0_d2(16 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_33_f600_uid8
--                     (IntAdderClassical_33_F600_uid10)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 7 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_33_f600_uid8 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(32 downto 0);
          Y : in  std_logic_vector(32 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(32 downto 0)   );
end entity;

architecture arch of IntAdder_33_f600_uid8 is
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
signal x6, x6_d1, x6_d2, x6_d3, x6_d4, x6_d5, x6_d6 :  std_logic_vector(2 downto 0);
signal y6, y6_d1, y6_d2, y6_d3, y6_d4, y6_d5, y6_d6 :  std_logic_vector(2 downto 0);
signal sum0, sum0_d1, sum0_d2, sum0_d3, sum0_d4, sum0_d5, sum0_d6 :  std_logic_vector(5 downto 0);
signal sum1, sum1_d1, sum1_d2, sum1_d3, sum1_d4, sum1_d5 :  std_logic_vector(5 downto 0);
signal sum2, sum2_d1, sum2_d2, sum2_d3, sum2_d4 :  std_logic_vector(5 downto 0);
signal sum3, sum3_d1, sum3_d2, sum3_d3 :  std_logic_vector(5 downto 0);
signal sum4, sum4_d1, sum4_d2 :  std_logic_vector(5 downto 0);
signal sum5, sum5_d1 :  std_logic_vector(5 downto 0);
signal sum6 :  std_logic_vector(3 downto 0);
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
            X_d1 <=  X;
            Y_d1 <=  Y;
            Cin_d1 <=  Cin;
         end if;
      end process;
   --Classical
   ----------------Synchro barrier, entering cycle 1----------------
   x0 <= X_d1(4 downto 0);
   y0 <= Y_d1(4 downto 0);
   x1 <= X_d1(9 downto 5);
   y1 <= Y_d1(9 downto 5);
   x2 <= X_d1(14 downto 10);
   y2 <= Y_d1(14 downto 10);
   x3 <= X_d1(19 downto 15);
   y3 <= Y_d1(19 downto 15);
   x4 <= X_d1(24 downto 20);
   y4 <= Y_d1(24 downto 20);
   x5 <= X_d1(29 downto 25);
   y5 <= Y_d1(29 downto 25);
   x6 <= X_d1(32 downto 30);
   y6 <= Y_d1(32 downto 30);
   sum0 <= ( "0" & x0) + ( "0" & y0)  + Cin_d1;
   ----------------Synchro barrier, entering cycle 2----------------
   sum1 <= ( "0" & x1_d1) + ( "0" & y1_d1)  + sum0_d1(5);
   ----------------Synchro barrier, entering cycle 3----------------
   sum2 <= ( "0" & x2_d2) + ( "0" & y2_d2)  + sum1_d1(5);
   ----------------Synchro barrier, entering cycle 4----------------
   sum3 <= ( "0" & x3_d3) + ( "0" & y3_d3)  + sum2_d1(5);
   ----------------Synchro barrier, entering cycle 5----------------
   sum4 <= ( "0" & x4_d4) + ( "0" & y4_d4)  + sum3_d1(5);
   ----------------Synchro barrier, entering cycle 6----------------
   sum5 <= ( "0" & x5_d5) + ( "0" & y5_d5)  + sum4_d1(5);
   ----------------Synchro barrier, entering cycle 7----------------
   sum6 <= ( "0" & x6_d6) + ( "0" & y6_d6)  + sum5_d1(5);
   R <= sum6(2 downto 0) & sum5_d1(4 downto 0) & sum4_d2(4 downto 0) & sum3_d3(4 downto 0) & sum2_d4(4 downto 0) & sum1_d5(4 downto 0) & sum0_d6(4 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                                  fp_power
--                        (FPSquare_8_23_23_F600_uid2)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2009)
--------------------------------------------------------------------------------
-- Pipeline depth: 12 cycles

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
   component IntSquarer_24_F600_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             R : out  std_logic_vector(47 downto 0)   );
   end component;

   component IntAdder_33_f600_uid8 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(32 downto 0);
             Y : in  std_logic_vector(32 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(32 downto 0)   );
   end component;

signal exc, exc_d1, exc_d2, exc_d3, exc_d4, exc_d5, exc_d6, exc_d7, exc_d8, exc_d9, exc_d10, exc_d11 :  std_logic_vector(1 downto 0);
signal exp :  std_logic_vector(7 downto 0);
signal frac :  std_logic_vector(23 downto 0);
signal extExponent :  std_logic_vector(9 downto 0);
signal negBias :  std_logic_vector(9 downto 0);
signal extExpPostBiasSub, extExpPostBiasSub_d1, extExpPostBiasSub_d2, extExpPostBiasSub_d3, extExpPostBiasSub_d4 :  std_logic_vector(9 downto 0);
signal sqrFrac, sqrFrac_d1 :  std_logic_vector(47 downto 0);
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
            extExpPostBiasSub_d1 <=  extExpPostBiasSub;
            extExpPostBiasSub_d2 <=  extExpPostBiasSub_d1;
            extExpPostBiasSub_d3 <=  extExpPostBiasSub_d2;
            extExpPostBiasSub_d4 <=  extExpPostBiasSub_d3;
            sqrFrac_d1 <=  sqrFrac;
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
   FractionSquarer: IntSquarer_24_F600_uid4  -- pipelineDepth=3 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => sqrFrac   ,
                 X => frac);
   ----------------Synchro barrier, entering cycle 3----------------
   ----------------Synchro barrier, entering cycle 4----------------
   sticky<='0' when sqrFrac_d1(21 downto 0)="0000000000000000000000"else '1';
   guard <= sqrFrac_d1(22) when sqrFrac_d1(47)='0' else sqrFrac_d1(23);
   fracULP<=sqrFrac_d1(23) when sqrFrac_d1(47)='0' else sqrFrac_d1(24);
   extExp <= extExpPostBiasSub_d4 + sqrFrac_d1(47);
   finalFrac<= sqrFrac_d1(46 downto 24) when sqrFrac_d1(47)='1' else 
      sqrFrac_d1(45 downto 23);
   concatExpFrac <= extExp & finalFrac;
   addCin <= (guard and sticky) or (fracULP and guard and not(sticky));
   Rounding_Instance: IntAdder_33_f600_uid8  -- pipelineDepth=7 maxInDelay=1.37244e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => addCin,
                 R => postRound,
                 X => concatExpFrac,
                 Y => "000000000000000000000000000000000");
   ----------------Synchro barrier, entering cycle 11----------------
   excConcat <= exc_d11 & postRound(32 downto 31);
   ----------------Synchro barrier, entering cycle 12----------------
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

