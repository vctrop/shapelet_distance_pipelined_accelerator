--------------------------------------------------------------------------------
--                           IntAdder_42_f400_uid15
--                     (IntAdderClassical_42_F400_uid17)
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

entity IntAdder_42_f400_uid15 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(41 downto 0);
          Y : in  std_logic_vector(41 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(41 downto 0)   );
end entity;

architecture arch of IntAdder_42_f400_uid15 is
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
--             IntMultiplier_UsingDSP_24_24_48_unsigned_F400_uid4
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

entity IntMultiplier_UsingDSP_24_24_48_unsigned_F400_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          Y : in  std_logic_vector(23 downto 0);
          R : out  std_logic_vector(47 downto 0)   );
end entity;

architecture arch of IntMultiplier_UsingDSP_24_24_48_unsigned_F400_uid4 is
   component IntAdder_42_f400_uid15 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(41 downto 0);
             Y : in  std_logic_vector(41 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(41 downto 0)   );
   end component;

signal XX_m5 :  std_logic_vector(23 downto 0);
signal YY_m5 :  std_logic_vector(23 downto 0);
signal DSP_bh6_ch0_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w47_0, heap_bh6_w47_0_d1 :  std_logic;
signal heap_bh6_w46_0, heap_bh6_w46_0_d1 :  std_logic;
signal heap_bh6_w45_0, heap_bh6_w45_0_d1 :  std_logic;
signal heap_bh6_w44_0, heap_bh6_w44_0_d1 :  std_logic;
signal heap_bh6_w43_0, heap_bh6_w43_0_d1 :  std_logic;
signal heap_bh6_w42_0, heap_bh6_w42_0_d1 :  std_logic;
signal heap_bh6_w41_0, heap_bh6_w41_0_d1 :  std_logic;
signal heap_bh6_w40_0, heap_bh6_w40_0_d1 :  std_logic;
signal heap_bh6_w39_0, heap_bh6_w39_0_d1 :  std_logic;
signal heap_bh6_w38_0, heap_bh6_w38_0_d1 :  std_logic;
signal heap_bh6_w37_0, heap_bh6_w37_0_d1 :  std_logic;
signal heap_bh6_w36_0, heap_bh6_w36_0_d1 :  std_logic;
signal heap_bh6_w35_0, heap_bh6_w35_0_d1 :  std_logic;
signal heap_bh6_w34_0, heap_bh6_w34_0_d1 :  std_logic;
signal heap_bh6_w33_0, heap_bh6_w33_0_d1 :  std_logic;
signal heap_bh6_w32_0, heap_bh6_w32_0_d1 :  std_logic;
signal heap_bh6_w31_0, heap_bh6_w31_0_d1 :  std_logic;
signal heap_bh6_w30_0, heap_bh6_w30_0_d1 :  std_logic;
signal heap_bh6_w29_0, heap_bh6_w29_0_d1 :  std_logic;
signal heap_bh6_w28_0, heap_bh6_w28_0_d1 :  std_logic;
signal heap_bh6_w27_0, heap_bh6_w27_0_d1 :  std_logic;
signal heap_bh6_w26_0, heap_bh6_w26_0_d1 :  std_logic;
signal heap_bh6_w25_0, heap_bh6_w25_0_d1 :  std_logic;
signal heap_bh6_w24_0, heap_bh6_w24_0_d1 :  std_logic;
signal heap_bh6_w23_0, heap_bh6_w23_0_d1 :  std_logic;
signal heap_bh6_w22_0, heap_bh6_w22_0_d1 :  std_logic;
signal heap_bh6_w21_0, heap_bh6_w21_0_d1 :  std_logic;
signal heap_bh6_w20_0, heap_bh6_w20_0_d1 :  std_logic;
signal heap_bh6_w19_0, heap_bh6_w19_0_d1 :  std_logic;
signal heap_bh6_w18_0, heap_bh6_w18_0_d1 :  std_logic;
signal heap_bh6_w17_0, heap_bh6_w17_0_d1 :  std_logic;
signal heap_bh6_w16_0, heap_bh6_w16_0_d1 :  std_logic;
signal heap_bh6_w15_0, heap_bh6_w15_0_d1 :  std_logic;
signal heap_bh6_w14_0, heap_bh6_w14_0_d1 :  std_logic;
signal heap_bh6_w13_0, heap_bh6_w13_0_d1 :  std_logic;
signal heap_bh6_w12_0, heap_bh6_w12_0_d1 :  std_logic;
signal heap_bh6_w11_0, heap_bh6_w11_0_d1 :  std_logic;
signal heap_bh6_w10_0, heap_bh6_w10_0_d1 :  std_logic;
signal heap_bh6_w9_0, heap_bh6_w9_0_d1 :  std_logic;
signal heap_bh6_w8_0, heap_bh6_w8_0_d1 :  std_logic;
signal heap_bh6_w7_0, heap_bh6_w7_0_d1 :  std_logic;
signal DSP_bh6_ch1_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w30_1, heap_bh6_w30_1_d1 :  std_logic;
signal heap_bh6_w29_1, heap_bh6_w29_1_d1 :  std_logic;
signal heap_bh6_w28_1, heap_bh6_w28_1_d1 :  std_logic;
signal heap_bh6_w27_1, heap_bh6_w27_1_d1 :  std_logic;
signal heap_bh6_w26_1, heap_bh6_w26_1_d1 :  std_logic;
signal heap_bh6_w25_1, heap_bh6_w25_1_d1 :  std_logic;
signal heap_bh6_w24_1, heap_bh6_w24_1_d1 :  std_logic;
signal heap_bh6_w23_1, heap_bh6_w23_1_d1 :  std_logic;
signal heap_bh6_w22_1, heap_bh6_w22_1_d1 :  std_logic;
signal heap_bh6_w21_1, heap_bh6_w21_1_d1 :  std_logic;
signal heap_bh6_w20_1, heap_bh6_w20_1_d1 :  std_logic;
signal heap_bh6_w19_1, heap_bh6_w19_1_d1 :  std_logic;
signal heap_bh6_w18_1, heap_bh6_w18_1_d1 :  std_logic;
signal heap_bh6_w17_1, heap_bh6_w17_1_d1 :  std_logic;
signal heap_bh6_w16_1, heap_bh6_w16_1_d1 :  std_logic;
signal heap_bh6_w15_1, heap_bh6_w15_1_d1 :  std_logic;
signal heap_bh6_w14_1, heap_bh6_w14_1_d1 :  std_logic;
signal heap_bh6_w13_1, heap_bh6_w13_1_d1 :  std_logic;
signal heap_bh6_w12_1, heap_bh6_w12_1_d1 :  std_logic;
signal heap_bh6_w11_1, heap_bh6_w11_1_d1 :  std_logic;
signal heap_bh6_w10_1, heap_bh6_w10_1_d1 :  std_logic;
signal heap_bh6_w9_1, heap_bh6_w9_1_d1 :  std_logic;
signal heap_bh6_w8_1, heap_bh6_w8_1_d1 :  std_logic;
signal heap_bh6_w7_1, heap_bh6_w7_1_d1 :  std_logic;
signal heap_bh6_w6_0 :  std_logic;
signal heap_bh6_w5_0 :  std_logic;
signal heap_bh6_w4_0 :  std_logic;
signal heap_bh6_w3_0 :  std_logic;
signal heap_bh6_w2_0 :  std_logic;
signal heap_bh6_w1_0 :  std_logic;
signal heap_bh6_w0_0 :  std_logic;
signal finalAdderIn0_bh6 :  std_logic_vector(41 downto 0);
signal finalAdderIn1_bh6 :  std_logic_vector(41 downto 0);
signal finalAdderCin_bh6 :  std_logic;
signal finalAdderOut_bh6 :  std_logic_vector(41 downto 0);
signal tempR_bh6_0, tempR_bh6_0_d1 :  std_logic_vector(6 downto 0);
signal CompressionResult6 :  std_logic_vector(48 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            heap_bh6_w47_0_d1 <=  heap_bh6_w47_0;
            heap_bh6_w46_0_d1 <=  heap_bh6_w46_0;
            heap_bh6_w45_0_d1 <=  heap_bh6_w45_0;
            heap_bh6_w44_0_d1 <=  heap_bh6_w44_0;
            heap_bh6_w43_0_d1 <=  heap_bh6_w43_0;
            heap_bh6_w42_0_d1 <=  heap_bh6_w42_0;
            heap_bh6_w41_0_d1 <=  heap_bh6_w41_0;
            heap_bh6_w40_0_d1 <=  heap_bh6_w40_0;
            heap_bh6_w39_0_d1 <=  heap_bh6_w39_0;
            heap_bh6_w38_0_d1 <=  heap_bh6_w38_0;
            heap_bh6_w37_0_d1 <=  heap_bh6_w37_0;
            heap_bh6_w36_0_d1 <=  heap_bh6_w36_0;
            heap_bh6_w35_0_d1 <=  heap_bh6_w35_0;
            heap_bh6_w34_0_d1 <=  heap_bh6_w34_0;
            heap_bh6_w33_0_d1 <=  heap_bh6_w33_0;
            heap_bh6_w32_0_d1 <=  heap_bh6_w32_0;
            heap_bh6_w31_0_d1 <=  heap_bh6_w31_0;
            heap_bh6_w30_0_d1 <=  heap_bh6_w30_0;
            heap_bh6_w29_0_d1 <=  heap_bh6_w29_0;
            heap_bh6_w28_0_d1 <=  heap_bh6_w28_0;
            heap_bh6_w27_0_d1 <=  heap_bh6_w27_0;
            heap_bh6_w26_0_d1 <=  heap_bh6_w26_0;
            heap_bh6_w25_0_d1 <=  heap_bh6_w25_0;
            heap_bh6_w24_0_d1 <=  heap_bh6_w24_0;
            heap_bh6_w23_0_d1 <=  heap_bh6_w23_0;
            heap_bh6_w22_0_d1 <=  heap_bh6_w22_0;
            heap_bh6_w21_0_d1 <=  heap_bh6_w21_0;
            heap_bh6_w20_0_d1 <=  heap_bh6_w20_0;
            heap_bh6_w19_0_d1 <=  heap_bh6_w19_0;
            heap_bh6_w18_0_d1 <=  heap_bh6_w18_0;
            heap_bh6_w17_0_d1 <=  heap_bh6_w17_0;
            heap_bh6_w16_0_d1 <=  heap_bh6_w16_0;
            heap_bh6_w15_0_d1 <=  heap_bh6_w15_0;
            heap_bh6_w14_0_d1 <=  heap_bh6_w14_0;
            heap_bh6_w13_0_d1 <=  heap_bh6_w13_0;
            heap_bh6_w12_0_d1 <=  heap_bh6_w12_0;
            heap_bh6_w11_0_d1 <=  heap_bh6_w11_0;
            heap_bh6_w10_0_d1 <=  heap_bh6_w10_0;
            heap_bh6_w9_0_d1 <=  heap_bh6_w9_0;
            heap_bh6_w8_0_d1 <=  heap_bh6_w8_0;
            heap_bh6_w7_0_d1 <=  heap_bh6_w7_0;
            heap_bh6_w30_1_d1 <=  heap_bh6_w30_1;
            heap_bh6_w29_1_d1 <=  heap_bh6_w29_1;
            heap_bh6_w28_1_d1 <=  heap_bh6_w28_1;
            heap_bh6_w27_1_d1 <=  heap_bh6_w27_1;
            heap_bh6_w26_1_d1 <=  heap_bh6_w26_1;
            heap_bh6_w25_1_d1 <=  heap_bh6_w25_1;
            heap_bh6_w24_1_d1 <=  heap_bh6_w24_1;
            heap_bh6_w23_1_d1 <=  heap_bh6_w23_1;
            heap_bh6_w22_1_d1 <=  heap_bh6_w22_1;
            heap_bh6_w21_1_d1 <=  heap_bh6_w21_1;
            heap_bh6_w20_1_d1 <=  heap_bh6_w20_1;
            heap_bh6_w19_1_d1 <=  heap_bh6_w19_1;
            heap_bh6_w18_1_d1 <=  heap_bh6_w18_1;
            heap_bh6_w17_1_d1 <=  heap_bh6_w17_1;
            heap_bh6_w16_1_d1 <=  heap_bh6_w16_1;
            heap_bh6_w15_1_d1 <=  heap_bh6_w15_1;
            heap_bh6_w14_1_d1 <=  heap_bh6_w14_1;
            heap_bh6_w13_1_d1 <=  heap_bh6_w13_1;
            heap_bh6_w12_1_d1 <=  heap_bh6_w12_1;
            heap_bh6_w11_1_d1 <=  heap_bh6_w11_1;
            heap_bh6_w10_1_d1 <=  heap_bh6_w10_1;
            heap_bh6_w9_1_d1 <=  heap_bh6_w9_1;
            heap_bh6_w8_1_d1 <=  heap_bh6_w8_1;
            heap_bh6_w7_1_d1 <=  heap_bh6_w7_1;
            tempR_bh6_0_d1 <=  tempR_bh6_0;
         end if;
      end process;
   XX_m5 <= X ;
   YY_m5 <= Y ;
   
   -- Beginning of code generated by BitHeap::generateCompressorVHDL
   -- code generated by BitHeap::generateSupertileVHDL()
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch0_0 <= std_logic_vector(unsigned("" & XX_m5(23 downto 0) & "") * unsigned("" & YY_m5(23 downto 7) & ""));
   heap_bh6_w47_0 <= DSP_bh6_ch0_0(40); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w46_0 <= DSP_bh6_ch0_0(39); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w45_0 <= DSP_bh6_ch0_0(38); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w44_0 <= DSP_bh6_ch0_0(37); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w43_0 <= DSP_bh6_ch0_0(36); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w42_0 <= DSP_bh6_ch0_0(35); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w41_0 <= DSP_bh6_ch0_0(34); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w40_0 <= DSP_bh6_ch0_0(33); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w39_0 <= DSP_bh6_ch0_0(32); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w38_0 <= DSP_bh6_ch0_0(31); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w37_0 <= DSP_bh6_ch0_0(30); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w36_0 <= DSP_bh6_ch0_0(29); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w35_0 <= DSP_bh6_ch0_0(28); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w34_0 <= DSP_bh6_ch0_0(27); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w33_0 <= DSP_bh6_ch0_0(26); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w32_0 <= DSP_bh6_ch0_0(25); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w31_0 <= DSP_bh6_ch0_0(24); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w30_0 <= DSP_bh6_ch0_0(23); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w29_0 <= DSP_bh6_ch0_0(22); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w28_0 <= DSP_bh6_ch0_0(21); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w27_0 <= DSP_bh6_ch0_0(20); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w26_0 <= DSP_bh6_ch0_0(19); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w25_0 <= DSP_bh6_ch0_0(18); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w24_0 <= DSP_bh6_ch0_0(17); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w23_0 <= DSP_bh6_ch0_0(16); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w22_0 <= DSP_bh6_ch0_0(15); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w21_0 <= DSP_bh6_ch0_0(14); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w20_0 <= DSP_bh6_ch0_0(13); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w19_0 <= DSP_bh6_ch0_0(12); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w18_0 <= DSP_bh6_ch0_0(11); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w17_0 <= DSP_bh6_ch0_0(10); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w16_0 <= DSP_bh6_ch0_0(9); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w15_0 <= DSP_bh6_ch0_0(8); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w14_0 <= DSP_bh6_ch0_0(7); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w13_0 <= DSP_bh6_ch0_0(6); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w12_0 <= DSP_bh6_ch0_0(5); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w11_0 <= DSP_bh6_ch0_0(4); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w10_0 <= DSP_bh6_ch0_0(3); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w9_0 <= DSP_bh6_ch0_0(2); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w8_0 <= DSP_bh6_ch0_0(1); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w7_0 <= DSP_bh6_ch0_0(0); -- cycle= 0 cp= 2.387e-09
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch1_0 <= std_logic_vector(unsigned("" & XX_m5(23 downto 0) & "") * unsigned("" & YY_m5(6 downto 0) & "0000000000"));
   heap_bh6_w30_1 <= DSP_bh6_ch1_0(40); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w29_1 <= DSP_bh6_ch1_0(39); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w28_1 <= DSP_bh6_ch1_0(38); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w27_1 <= DSP_bh6_ch1_0(37); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w26_1 <= DSP_bh6_ch1_0(36); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w25_1 <= DSP_bh6_ch1_0(35); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w24_1 <= DSP_bh6_ch1_0(34); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w23_1 <= DSP_bh6_ch1_0(33); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w22_1 <= DSP_bh6_ch1_0(32); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w21_1 <= DSP_bh6_ch1_0(31); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w20_1 <= DSP_bh6_ch1_0(30); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w19_1 <= DSP_bh6_ch1_0(29); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w18_1 <= DSP_bh6_ch1_0(28); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w17_1 <= DSP_bh6_ch1_0(27); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w16_1 <= DSP_bh6_ch1_0(26); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w15_1 <= DSP_bh6_ch1_0(25); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w14_1 <= DSP_bh6_ch1_0(24); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w13_1 <= DSP_bh6_ch1_0(23); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w12_1 <= DSP_bh6_ch1_0(22); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w11_1 <= DSP_bh6_ch1_0(21); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w10_1 <= DSP_bh6_ch1_0(20); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w9_1 <= DSP_bh6_ch1_0(19); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w8_1 <= DSP_bh6_ch1_0(18); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w7_1 <= DSP_bh6_ch1_0(17); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w6_0 <= DSP_bh6_ch1_0(16); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w5_0 <= DSP_bh6_ch1_0(15); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w4_0 <= DSP_bh6_ch1_0(14); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w3_0 <= DSP_bh6_ch1_0(13); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w2_0 <= DSP_bh6_ch1_0(12); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w1_0 <= DSP_bh6_ch1_0(11); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w0_0 <= DSP_bh6_ch1_0(10); -- cycle= 0 cp= 2.387e-09
   ----------------Synchro barrier, entering cycle 0----------------

   -- Adding the constant bits
      -- All the constant bits are zero, nothing to add

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   finalAdderIn0_bh6 <= "0" & heap_bh6_w47_0_d1 & heap_bh6_w46_0_d1 & heap_bh6_w45_0_d1 & heap_bh6_w44_0_d1 & heap_bh6_w43_0_d1 & heap_bh6_w42_0_d1 & heap_bh6_w41_0_d1 & heap_bh6_w40_0_d1 & heap_bh6_w39_0_d1 & heap_bh6_w38_0_d1 & heap_bh6_w37_0_d1 & heap_bh6_w36_0_d1 & heap_bh6_w35_0_d1 & heap_bh6_w34_0_d1 & heap_bh6_w33_0_d1 & heap_bh6_w32_0_d1 & heap_bh6_w31_0_d1 & heap_bh6_w30_1_d1 & heap_bh6_w29_1_d1 & heap_bh6_w28_1_d1 & heap_bh6_w27_1_d1 & heap_bh6_w26_1_d1 & heap_bh6_w25_1_d1 & heap_bh6_w24_1_d1 & heap_bh6_w23_1_d1 & heap_bh6_w22_1_d1 & heap_bh6_w21_1_d1 & heap_bh6_w20_1_d1 & heap_bh6_w19_1_d1 & heap_bh6_w18_1_d1 & heap_bh6_w17_1_d1 & heap_bh6_w16_1_d1 & heap_bh6_w15_1_d1 & heap_bh6_w14_1_d1 & heap_bh6_w13_1_d1 & heap_bh6_w12_1_d1 & heap_bh6_w11_1_d1 & heap_bh6_w10_1_d1 & heap_bh6_w9_1_d1 & heap_bh6_w8_1_d1 & heap_bh6_w7_1_d1;
   finalAdderIn1_bh6 <= "0" & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh6_w30_0_d1 & heap_bh6_w29_0_d1 & heap_bh6_w28_0_d1 & heap_bh6_w27_0_d1 & heap_bh6_w26_0_d1 & heap_bh6_w25_0_d1 & heap_bh6_w24_0_d1 & heap_bh6_w23_0_d1 & heap_bh6_w22_0_d1 & heap_bh6_w21_0_d1 & heap_bh6_w20_0_d1 & heap_bh6_w19_0_d1 & heap_bh6_w18_0_d1 & heap_bh6_w17_0_d1 & heap_bh6_w16_0_d1 & heap_bh6_w15_0_d1 & heap_bh6_w14_0_d1 & heap_bh6_w13_0_d1 & heap_bh6_w12_0_d1 & heap_bh6_w11_0_d1 & heap_bh6_w10_0_d1 & heap_bh6_w9_0_d1 & heap_bh6_w8_0_d1 & heap_bh6_w7_0_d1;
   finalAdderCin_bh6 <= '0';
   Adder_final6_0: IntAdder_42_f400_uid15  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => finalAdderCin_bh6,
                 R => finalAdderOut_bh6   ,
                 X => finalAdderIn0_bh6,
                 Y => finalAdderIn1_bh6);
   ----------------Synchro barrier, entering cycle 0----------------
   tempR_bh6_0 <= heap_bh6_w6_0 & heap_bh6_w5_0 & heap_bh6_w4_0 & heap_bh6_w3_0 & heap_bh6_w2_0 & heap_bh6_w1_0 & heap_bh6_w0_0; -- already compressed
   -- concatenate all the compressed chunks
   ----------------Synchro barrier, entering cycle 1----------------
   CompressionResult6 <= finalAdderOut_bh6 & tempR_bh6_0_d1;
   -- End of code generated by BitHeap::generateCompressorVHDL
   R <= CompressionResult6(47 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_33_f400_uid25
--                     (IntAdderClassical_33_F400_uid27)
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

entity IntAdder_33_f400_uid25 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(32 downto 0);
          Y : in  std_logic_vector(32 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(32 downto 0)   );
end entity;

architecture arch of IntAdder_33_f400_uid25 is
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
--                      FPMult_8_23_8_23_8_23_F400_uid2
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

entity FPMult_8_23_8_23_8_23_F400_uid2 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          Y : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of FPMult_8_23_8_23_8_23_F400_uid2 is
   component IntMultiplier_UsingDSP_24_24_48_unsigned_F400_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             Y : in  std_logic_vector(23 downto 0);
             R : out  std_logic_vector(47 downto 0)   );
   end component;

   component IntAdder_33_f400_uid25 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(32 downto 0);
             Y : in  std_logic_vector(32 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(32 downto 0)   );
   end component;

signal sign, sign_d1, sign_d2 :  std_logic;
signal expX :  std_logic_vector(7 downto 0);
signal expY :  std_logic_vector(7 downto 0);
signal expSumPreSub, expSumPreSub_d1 :  std_logic_vector(9 downto 0);
signal bias, bias_d1 :  std_logic_vector(9 downto 0);
signal expSum :  std_logic_vector(9 downto 0);
signal sigX :  std_logic_vector(23 downto 0);
signal sigY :  std_logic_vector(23 downto 0);
signal sigProd :  std_logic_vector(47 downto 0);
signal excSel :  std_logic_vector(3 downto 0);
signal exc, exc_d1, exc_d2 :  std_logic_vector(1 downto 0);
signal norm :  std_logic;
signal expPostNorm :  std_logic_vector(9 downto 0);
signal sigProdExt, sigProdExt_d1 :  std_logic_vector(47 downto 0);
signal expSig, expSig_d1 :  std_logic_vector(32 downto 0);
signal sticky, sticky_d1 :  std_logic;
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
            expSumPreSub_d1 <=  expSumPreSub;
            bias_d1 <=  bias;
            exc_d1 <=  exc;
            exc_d2 <=  exc_d1;
            sigProdExt_d1 <=  sigProdExt;
            expSig_d1 <=  expSig;
            sticky_d1 <=  sticky;
         end if;
      end process;
   sign <= X(31) xor Y(31);
   expX <= X(30 downto 23);
   expY <= Y(30 downto 23);
   expSumPreSub <= ("00" & expX) + ("00" & expY);
   bias <= CONV_STD_LOGIC_VECTOR(127,10);
   ----------------Synchro barrier, entering cycle 1----------------
   expSum <= expSumPreSub_d1 - bias_d1;
   ----------------Synchro barrier, entering cycle 0----------------
   sigX <= "1" & X(22 downto 0);
   sigY <= "1" & Y(22 downto 0);
   SignificandMultiplication: IntMultiplier_UsingDSP_24_24_48_unsigned_F400_uid4  -- pipelineDepth=1 maxInDelay=0
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
   norm <= sigProd(47);
   -- exponent update
   expPostNorm <= expSum + ("000000000" & norm);
   -- significand normalization shift
   sigProdExt <= sigProd(46 downto 0) & "0" when norm='1' else
                         sigProd(45 downto 0) & "00";
   expSig <= expPostNorm & sigProdExt(47 downto 25);
   sticky <= sigProdExt(24);
   ----------------Synchro barrier, entering cycle 2----------------
   guard <= '0' when sigProdExt_d1(23 downto 0)="000000000000000000000000" else '1';
   round <= sticky_d1 and ( (guard and not(sigProdExt_d1(25))) or (sigProdExt_d1(25) ))  ;
   RoundingAdder: IntAdder_33_f400_uid25  -- pipelineDepth=0 maxInDelay=5.3072e-10
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => round,
                 R => expSigPostRound   ,
                 X => expSig_d1,
                 Y => "000000000000000000000000000000000");
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

--------------------------------------------------------------------------------
--            TestBench_FPMult_8_23_8_23_8_23_F400_uid2_F400_uid33
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

entity TestBench_FPMult_8_23_8_23_8_23_F400_uid2_F400_uid33 is
end entity;

architecture behavorial of TestBench_FPMult_8_23_8_23_8_23_F400_uid2_F400_uid33 is
   component FPMult_8_23_8_23_8_23_F400_uid2 is
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
   test: FPMult_8_23_8_23_8_23_F400_uid2  -- pipelineDepth=2 maxInDelay=0
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
      X <= "1110110101000000010011010000100111"; 
      Y <= "0000011111110010001001100100010111"; 
      wait for 10 ns;
      X <= "1011110110110101111000101100101001"; 
      Y <= "0010111010100110001000010101110111"; 
      wait for 10 ns;
      X <= "1010010000000100110011101011010111"; 
      Y <= "1000000101000110010111111101000111"; 
      wait for 10 ns;
      X <= "1110011010111001001110101011001100"; 
      Y <= "1010010101101001101100011001110101"; 
      wait for 10 ns;
      X <= "1110010111000100110101110111000101"; 
      Y <= "0011010101111111000010000101010011"; 
      wait for 10 ns;
      X <= "1110101111001100100101101001011110"; 
      Y <= "1100010100100101100111111110110110"; 
      wait for 10 ns;
      X <= "0110101001110011010000011110000000"; 
      Y <= "0000100110111100000001100001101101"; 
      wait for 10 ns;
      X <= "0101000101100111010011110001100101"; 
      Y <= "1011010101111111101111100110111111"; 
      wait for 10 ns;
      X <= "1101101011110000101101111000011011"; 
      Y <= "1001011001001101100100111011011001"; 
      wait for 10 ns;
      X <= "1101101011000110111100000000001101"; 
      Y <= "0001100101100000100001001110101001"; 
      wait for 10 ns;
      X <= "0110100001100100000100101001110011"; 
      Y <= "0100010010010111001110111101100010"; 
      wait for 10 ns;
      X <= "0111001000110010000100100001011101"; 
      Y <= "0011000000000001110011111110100110"; 
      wait for 10 ns;
      X <= "1110101010111100110011011111001010"; 
      Y <= "1001000001011111000010000011000011"; 
      wait for 10 ns;
      X <= "0000100100111110010000100110110100"; 
      Y <= "1000001001101000011101011011100101"; 
      wait for 10 ns;
      X <= "0001001111011101110110011111011100"; 
      Y <= "1100110010101011010010101110111001"; 
      wait for 10 ns;
      X <= "1000000110100010100101011000001011"; 
      Y <= "1001100001000000111011011010011011"; 
      wait for 10 ns;
      X <= "1001001000100010101101010010001000"; 
      Y <= "0111010010101111001001101010110111"; 
      wait for 10 ns;
      X <= "0100111111111011001001001010110111"; 
      Y <= "0110001011101000010110000100001100"; 
      wait for 10 ns;
      X <= "1101010010100100100110011001010011"; 
      Y <= "1010101000001000001000001100010001"; 
      wait for 10 ns;
      X <= "1110110110111001011111000000000101"; 
      Y <= "1110111010101101011100010000100010"; 
      wait for 10 ns;
      wait for 100000 ns; -- allow simulation to finish
   end process;

   -- Checking the outputs
   process
   begin
      wait for 10 ns; -- wait for reset to complete
      wait for 20 ns; -- wait for pipeline to flush
      -- current time: 30
      -- input: X <= "1110110101000000010011010000100111"; 
      -- input: Y <= "0000011111110010001001100100010111"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 0  " severity ERROR; 
      wait for 10 ns;
      -- current time: 40
      -- input: X <= "1011110110110101111000101100101001"; 
      -- input: Y <= "0010111010100110001000010101110111"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 1  " severity ERROR; 
      wait for 10 ns;
      -- current time: 50
      -- input: X <= "1010010000000100110011101011010111"; 
      -- input: Y <= "1000000101000110010111111101000111"; 
      assert false or fp_equal(R,fp34'("1010000000000000000000000000000000")) report "Incorrect output value for R, expected 1010000000000000000000000000000000 | Test Number : 2  " severity ERROR; 
      wait for 10 ns;
      -- current time: 60
      -- input: X <= "1110011010111001001110101011001100"; 
      -- input: Y <= "1010010101101001101100011001110101"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 3  " severity ERROR; 
      wait for 10 ns;
      -- current time: 70
      -- input: X <= "1110010111000100110101110111000101"; 
      -- input: Y <= "0011010101111111000010000101010011"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 4  " severity ERROR; 
      wait for 10 ns;
      -- current time: 80
      -- input: X <= "1110101111001100100101101001011110"; 
      -- input: Y <= "1100010100100101100111111110110110"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 5  " severity ERROR; 
      wait for 10 ns;
      -- current time: 90
      -- input: X <= "0110101001110011010000011110000000"; 
      -- input: Y <= "0000100110111100000001100001101101"; 
      assert false or fp_equal(R,fp34'("0010000000000000000000000000000000")) report "Incorrect output value for R, expected 0010000000000000000000000000000000 | Test Number : 6  " severity ERROR; 
      wait for 10 ns;
      -- current time: 100
      -- input: X <= "0101000101100111010011110001100101"; 
      -- input: Y <= "1011010101111111101111100110111111"; 
      assert false or fp_equal(R,fp34'("1010000000000000000000000000000000")) report "Incorrect output value for R, expected 1010000000000000000000000000000000 | Test Number : 7  " severity ERROR; 
      wait for 10 ns;
      -- current time: 110
      -- input: X <= "1101101011110000101101111000011011"; 
      -- input: Y <= "1001011001001101100100111011011001"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 8  " severity ERROR; 
      wait for 10 ns;
      -- current time: 120
      -- input: X <= "1101101011000110111100000000001101"; 
      -- input: Y <= "0001100101100000100001001110101001"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 9  " severity ERROR; 
      wait for 10 ns;
      -- current time: 130
      -- input: X <= "0110100001100100000100101001110011"; 
      -- input: Y <= "0100010010010111001110111101100010"; 
      assert false or fp_equal(R,fp34'("0010000000000000000000000000000000")) report "Incorrect output value for R, expected 0010000000000000000000000000000000 | Test Number : 10  " severity ERROR; 
      wait for 10 ns;
      -- current time: 140
      -- input: X <= "0111001000110010000100100001011101"; 
      -- input: Y <= "0011000000000001110011111110100110"; 
      assert false or fp_equal(R,fp34'("0000000000000000000000000000000000")) report "Incorrect output value for R, expected 0000000000000000000000000000000000 | Test Number : 11  " severity ERROR; 
      wait for 10 ns;
      -- current time: 150
      -- input: X <= "1110101010111100110011011111001010"; 
      -- input: Y <= "1001000001011111000010000011000011"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 12  " severity ERROR; 
      wait for 10 ns;
      -- current time: 160
      -- input: X <= "0000100100111110010000100110110100"; 
      -- input: Y <= "1000001001101000011101011011100101"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 13  " severity ERROR; 
      wait for 10 ns;
      -- current time: 170
      -- input: X <= "0001001111011101110110011111011100"; 
      -- input: Y <= "1100110010101011010010101110111001"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 14  " severity ERROR; 
      wait for 10 ns;
      -- current time: 180
      -- input: X <= "1000000110100010100101011000001011"; 
      -- input: Y <= "1001100001000000111011011010011011"; 
      assert false or fp_equal(R,fp34'("1000000000000000000000000000000000")) report "Incorrect output value for R, expected 1000000000000000000000000000000000 | Test Number : 15  " severity ERROR; 
      wait for 10 ns;
      -- current time: 190
      -- input: X <= "1001001000100010101101010010001000"; 
      -- input: Y <= "0111010010101111001001101010110111"; 
      assert false or fp_equal(R,fp34'("1010000000000000000000000000000000")) report "Incorrect output value for R, expected 1010000000000000000000000000000000 | Test Number : 16  " severity ERROR; 
      wait for 10 ns;
      -- current time: 200
      -- input: X <= "0100111111111011001001001010110111"; 
      -- input: Y <= "0110001011101000010110000100001100"; 
      assert false or fp_equal(R,fp34'("0110001100000101010010000111110100")) report "Incorrect output value for R, expected 0110001100000101010010000111110100 | Test Number : 17  " severity ERROR; 
      wait for 10 ns;
      -- current time: 210
      -- input: X <= "1101010010100100100110011001010011"; 
      -- input: Y <= "1010101000001000001000001100010001"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 18  " severity ERROR; 
      wait for 10 ns;
      -- current time: 220
      -- input: X <= "1110110110111001011111000000000101"; 
      -- input: Y <= "1110111010101101011100010000100010"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 19  " severity ERROR; 
      wait for 10 ns;
      assert false report "End of simulation" severity failure;
   end process;

end architecture;

