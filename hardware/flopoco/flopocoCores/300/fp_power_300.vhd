--------------------------------------------------------------------------------
--                          IntSquarer_24_F300_uid4
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2009)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
library work;
entity IntSquarer_24_F300_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          R : out  std_logic_vector(47 downto 0)   );
end entity;

architecture arch of IntSquarer_24_F300_uid4 is
signal x0_16 :  std_logic_vector(17 downto 0);
signal x17_32, x17_32_d1 :  std_logic_vector(17 downto 0);
signal x17_32_shr :  std_logic_vector(17 downto 0);
signal p0, p0_d1 :  std_logic_vector(35 downto 0);
signal p1_x2, p1_x2_d1 :  std_logic_vector(35 downto 0);
signal s1 :  std_logic_vector(35 downto 0);
signal p2 :  std_logic_vector(35 downto 0);
signal s2 :  std_logic_vector(35 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            x17_32_d1 <=  x17_32;
            p0_d1 <=  p0;
            p1_x2_d1 <=  p1_x2;
         end if;
      end process;
   x0_16 <= "0" & X(16 downto 0);
   x17_32 <= "00" & "000000000" & X(23 downto 17);
   x17_32_shr <= "0" & "000000000" & X(23 downto 17) & "0";
   p0 <= x0_16 * x0_16;
   p1_x2 <= x17_32_shr * x0_16;
   ----------------Synchro barrier, entering cycle 1----------------
   s1 <= p1_x2_d1 + ( "00000000000000000" & p0_d1(35 downto 17));
   p2 <= x17_32_d1 * x17_32_d1;
   s2 <= p2 + ( "00000000000000000" & s1(35 downto 17));
   R <= s2(13 downto 0) & s1(16 downto 0) & p0_d1(16 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_33_f300_uid8
--                    (IntAdderAlternative_33_F300_uid12)
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

entity IntAdder_33_f300_uid8 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(32 downto 0);
          Y : in  std_logic_vector(32 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(32 downto 0)   );
end entity;

architecture arch of IntAdder_33_f300_uid8 is
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
--                                  fp_power
--                        (FPSquare_8_23_23_F300_uid2)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2009)
--------------------------------------------------------------------------------
-- Pipeline depth: 3 cycles

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
   component IntSquarer_24_F300_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             R : out  std_logic_vector(47 downto 0)   );
   end component;

   component IntAdder_33_f300_uid8 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(32 downto 0);
             Y : in  std_logic_vector(32 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(32 downto 0)   );
   end component;

signal exc, exc_d1, exc_d2 :  std_logic_vector(1 downto 0);
signal exp :  std_logic_vector(7 downto 0);
signal frac :  std_logic_vector(23 downto 0);
signal extExponent :  std_logic_vector(9 downto 0);
signal negBias :  std_logic_vector(9 downto 0);
signal extExpPostBiasSub, extExpPostBiasSub_d1, extExpPostBiasSub_d2 :  std_logic_vector(9 downto 0);
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
            extExpPostBiasSub_d1 <=  extExpPostBiasSub;
            extExpPostBiasSub_d2 <=  extExpPostBiasSub_d1;
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
   FractionSquarer: IntSquarer_24_F300_uid4  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => sqrFrac   ,
                 X => frac);
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 2----------------
   sticky<='0' when sqrFrac_d1(21 downto 0)="0000000000000000000000"else '1';
   guard <= sqrFrac_d1(22) when sqrFrac_d1(47)='0' else sqrFrac_d1(23);
   fracULP<=sqrFrac_d1(23) when sqrFrac_d1(47)='0' else sqrFrac_d1(24);
   extExp <= extExpPostBiasSub_d2 + sqrFrac_d1(47);
   finalFrac<= sqrFrac_d1(46 downto 24) when sqrFrac_d1(47)='1' else 
      sqrFrac_d1(45 downto 23);
   concatExpFrac <= extExp & finalFrac;
   addCin <= (guard and sticky) or (fracULP and guard and not(sticky));
   Rounding_Instance: IntAdder_33_f300_uid8  -- pipelineDepth=0 maxInDelay=1.37244e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => addCin,
                 R => postRound,
                 X => concatExpFrac,
                 Y => "000000000000000000000000000000000");
   excConcat <= exc_d2 & postRound(32 downto 31);
   ----------------Synchro barrier, entering cycle 3----------------
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

