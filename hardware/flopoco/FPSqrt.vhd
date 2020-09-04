--------------------------------------------------------------------------------
--                                FPSqrt_8_23
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 25 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FPSqrt_8_23 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of FPSqrt_8_23 is
signal fracX :  std_logic_vector(22 downto 0);
signal eRn0 :  std_logic_vector(7 downto 0);
signal xsX, xsX_d1, xsX_d2, xsX_d3, xsX_d4, xsX_d5, xsX_d6, xsX_d7, xsX_d8, xsX_d9, xsX_d10, xsX_d11, xsX_d12, xsX_d13, xsX_d14, xsX_d15, xsX_d16, xsX_d17, xsX_d18, xsX_d19, xsX_d20, xsX_d21, xsX_d22, xsX_d23, xsX_d24, xsX_d25 :  std_logic_vector(2 downto 0);
signal eRn1, eRn1_d1, eRn1_d2, eRn1_d3, eRn1_d4, eRn1_d5, eRn1_d6, eRn1_d7, eRn1_d8, eRn1_d9, eRn1_d10, eRn1_d11, eRn1_d12, eRn1_d13, eRn1_d14, eRn1_d15, eRn1_d16, eRn1_d17, eRn1_d18, eRn1_d19, eRn1_d20, eRn1_d21, eRn1_d22, eRn1_d23, eRn1_d24, eRn1_d25 :  std_logic_vector(7 downto 0);
signal w26 :  std_logic_vector(26 downto 0);
signal d25 :  std_logic;
signal x25 :  std_logic_vector(27 downto 0);
signal ds25 :  std_logic_vector(3 downto 0);
signal xh25 :  std_logic_vector(3 downto 0);
signal wh25 :  std_logic_vector(3 downto 0);
signal w25 :  std_logic_vector(26 downto 0);
signal s25 :  std_logic_vector(0 downto 0);
signal d24 :  std_logic;
signal x24 :  std_logic_vector(27 downto 0);
signal ds24 :  std_logic_vector(4 downto 0);
signal xh24 :  std_logic_vector(4 downto 0);
signal wh24 :  std_logic_vector(4 downto 0);
signal w24, w24_d1 :  std_logic_vector(26 downto 0);
signal s24, s24_d1 :  std_logic_vector(1 downto 0);
signal d23 :  std_logic;
signal x23 :  std_logic_vector(27 downto 0);
signal ds23 :  std_logic_vector(5 downto 0);
signal xh23 :  std_logic_vector(5 downto 0);
signal wh23 :  std_logic_vector(5 downto 0);
signal w23, w23_d1 :  std_logic_vector(26 downto 0);
signal s23, s23_d1 :  std_logic_vector(2 downto 0);
signal d22 :  std_logic;
signal x22 :  std_logic_vector(27 downto 0);
signal ds22 :  std_logic_vector(6 downto 0);
signal xh22 :  std_logic_vector(6 downto 0);
signal wh22 :  std_logic_vector(6 downto 0);
signal w22, w22_d1 :  std_logic_vector(26 downto 0);
signal s22, s22_d1 :  std_logic_vector(3 downto 0);
signal d21 :  std_logic;
signal x21 :  std_logic_vector(27 downto 0);
signal ds21 :  std_logic_vector(7 downto 0);
signal xh21 :  std_logic_vector(7 downto 0);
signal wh21 :  std_logic_vector(7 downto 0);
signal w21, w21_d1 :  std_logic_vector(26 downto 0);
signal s21, s21_d1 :  std_logic_vector(4 downto 0);
signal d20 :  std_logic;
signal x20 :  std_logic_vector(27 downto 0);
signal ds20 :  std_logic_vector(8 downto 0);
signal xh20 :  std_logic_vector(8 downto 0);
signal wh20 :  std_logic_vector(8 downto 0);
signal w20, w20_d1 :  std_logic_vector(26 downto 0);
signal s20, s20_d1 :  std_logic_vector(5 downto 0);
signal d19 :  std_logic;
signal x19 :  std_logic_vector(27 downto 0);
signal ds19 :  std_logic_vector(9 downto 0);
signal xh19 :  std_logic_vector(9 downto 0);
signal wh19 :  std_logic_vector(9 downto 0);
signal w19, w19_d1 :  std_logic_vector(26 downto 0);
signal s19, s19_d1 :  std_logic_vector(6 downto 0);
signal d18 :  std_logic;
signal x18 :  std_logic_vector(27 downto 0);
signal ds18 :  std_logic_vector(10 downto 0);
signal xh18 :  std_logic_vector(10 downto 0);
signal wh18 :  std_logic_vector(10 downto 0);
signal w18, w18_d1 :  std_logic_vector(26 downto 0);
signal s18, s18_d1 :  std_logic_vector(7 downto 0);
signal d17 :  std_logic;
signal x17 :  std_logic_vector(27 downto 0);
signal ds17 :  std_logic_vector(11 downto 0);
signal xh17 :  std_logic_vector(11 downto 0);
signal wh17 :  std_logic_vector(11 downto 0);
signal w17, w17_d1 :  std_logic_vector(26 downto 0);
signal s17, s17_d1 :  std_logic_vector(8 downto 0);
signal d16 :  std_logic;
signal x16 :  std_logic_vector(27 downto 0);
signal ds16 :  std_logic_vector(12 downto 0);
signal xh16 :  std_logic_vector(12 downto 0);
signal wh16 :  std_logic_vector(12 downto 0);
signal w16, w16_d1 :  std_logic_vector(26 downto 0);
signal s16, s16_d1 :  std_logic_vector(9 downto 0);
signal d15 :  std_logic;
signal x15 :  std_logic_vector(27 downto 0);
signal ds15 :  std_logic_vector(13 downto 0);
signal xh15 :  std_logic_vector(13 downto 0);
signal wh15 :  std_logic_vector(13 downto 0);
signal w15, w15_d1 :  std_logic_vector(26 downto 0);
signal s15, s15_d1 :  std_logic_vector(10 downto 0);
signal d14 :  std_logic;
signal x14 :  std_logic_vector(27 downto 0);
signal ds14 :  std_logic_vector(14 downto 0);
signal xh14 :  std_logic_vector(14 downto 0);
signal wh14 :  std_logic_vector(14 downto 0);
signal w14, w14_d1 :  std_logic_vector(26 downto 0);
signal s14, s14_d1 :  std_logic_vector(11 downto 0);
signal d13 :  std_logic;
signal x13 :  std_logic_vector(27 downto 0);
signal ds13 :  std_logic_vector(15 downto 0);
signal xh13 :  std_logic_vector(15 downto 0);
signal wh13 :  std_logic_vector(15 downto 0);
signal w13, w13_d1 :  std_logic_vector(26 downto 0);
signal s13, s13_d1 :  std_logic_vector(12 downto 0);
signal d12 :  std_logic;
signal x12 :  std_logic_vector(27 downto 0);
signal ds12 :  std_logic_vector(16 downto 0);
signal xh12 :  std_logic_vector(16 downto 0);
signal wh12 :  std_logic_vector(16 downto 0);
signal w12, w12_d1 :  std_logic_vector(26 downto 0);
signal s12, s12_d1 :  std_logic_vector(13 downto 0);
signal d11 :  std_logic;
signal x11 :  std_logic_vector(27 downto 0);
signal ds11 :  std_logic_vector(17 downto 0);
signal xh11 :  std_logic_vector(17 downto 0);
signal wh11 :  std_logic_vector(17 downto 0);
signal w11, w11_d1 :  std_logic_vector(26 downto 0);
signal s11, s11_d1 :  std_logic_vector(14 downto 0);
signal d10 :  std_logic;
signal x10 :  std_logic_vector(27 downto 0);
signal ds10 :  std_logic_vector(18 downto 0);
signal xh10 :  std_logic_vector(18 downto 0);
signal wh10 :  std_logic_vector(18 downto 0);
signal w10, w10_d1 :  std_logic_vector(26 downto 0);
signal s10, s10_d1 :  std_logic_vector(15 downto 0);
signal d9 :  std_logic;
signal x9 :  std_logic_vector(27 downto 0);
signal ds9 :  std_logic_vector(19 downto 0);
signal xh9 :  std_logic_vector(19 downto 0);
signal wh9 :  std_logic_vector(19 downto 0);
signal w9, w9_d1 :  std_logic_vector(26 downto 0);
signal s9, s9_d1 :  std_logic_vector(16 downto 0);
signal d8 :  std_logic;
signal x8 :  std_logic_vector(27 downto 0);
signal ds8 :  std_logic_vector(20 downto 0);
signal xh8 :  std_logic_vector(20 downto 0);
signal wh8 :  std_logic_vector(20 downto 0);
signal w8, w8_d1 :  std_logic_vector(26 downto 0);
signal s8, s8_d1 :  std_logic_vector(17 downto 0);
signal d7 :  std_logic;
signal x7 :  std_logic_vector(27 downto 0);
signal ds7 :  std_logic_vector(21 downto 0);
signal xh7 :  std_logic_vector(21 downto 0);
signal wh7 :  std_logic_vector(21 downto 0);
signal w7, w7_d1 :  std_logic_vector(26 downto 0);
signal s7, s7_d1 :  std_logic_vector(18 downto 0);
signal d6 :  std_logic;
signal x6 :  std_logic_vector(27 downto 0);
signal ds6 :  std_logic_vector(22 downto 0);
signal xh6 :  std_logic_vector(22 downto 0);
signal wh6 :  std_logic_vector(22 downto 0);
signal w6, w6_d1 :  std_logic_vector(26 downto 0);
signal s6, s6_d1 :  std_logic_vector(19 downto 0);
signal d5 :  std_logic;
signal x5 :  std_logic_vector(27 downto 0);
signal ds5 :  std_logic_vector(23 downto 0);
signal xh5 :  std_logic_vector(23 downto 0);
signal wh5 :  std_logic_vector(23 downto 0);
signal w5, w5_d1 :  std_logic_vector(26 downto 0);
signal s5, s5_d1 :  std_logic_vector(20 downto 0);
signal d4 :  std_logic;
signal x4 :  std_logic_vector(27 downto 0);
signal ds4 :  std_logic_vector(24 downto 0);
signal xh4 :  std_logic_vector(24 downto 0);
signal wh4 :  std_logic_vector(24 downto 0);
signal w4, w4_d1 :  std_logic_vector(26 downto 0);
signal s4, s4_d1 :  std_logic_vector(21 downto 0);
signal d3 :  std_logic;
signal x3 :  std_logic_vector(27 downto 0);
signal ds3 :  std_logic_vector(25 downto 0);
signal xh3 :  std_logic_vector(25 downto 0);
signal wh3 :  std_logic_vector(25 downto 0);
signal w3, w3_d1 :  std_logic_vector(26 downto 0);
signal s3, s3_d1 :  std_logic_vector(22 downto 0);
signal d2 :  std_logic;
signal x2 :  std_logic_vector(27 downto 0);
signal ds2 :  std_logic_vector(26 downto 0);
signal xh2 :  std_logic_vector(26 downto 0);
signal wh2 :  std_logic_vector(26 downto 0);
signal w2, w2_d1 :  std_logic_vector(26 downto 0);
signal s2, s2_d1 :  std_logic_vector(23 downto 0);
signal d1 :  std_logic;
signal x1 :  std_logic_vector(27 downto 0);
signal ds1 :  std_logic_vector(27 downto 0);
signal xh1 :  std_logic_vector(27 downto 0);
signal wh1 :  std_logic_vector(27 downto 0);
signal w1, w1_d1 :  std_logic_vector(26 downto 0);
signal s1, s1_d1 :  std_logic_vector(24 downto 0);
signal d0 :  std_logic;
signal fR :  std_logic_vector(26 downto 0);
signal fRn1, fRn1_d1 :  std_logic_vector(24 downto 0);
signal round, round_d1 :  std_logic;
signal fRn2 :  std_logic_vector(22 downto 0);
signal Rn2 :  std_logic_vector(30 downto 0);
signal xsR :  std_logic_vector(2 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            xsX_d1 <=  xsX;
            xsX_d2 <=  xsX_d1;
            xsX_d3 <=  xsX_d2;
            xsX_d4 <=  xsX_d3;
            xsX_d5 <=  xsX_d4;
            xsX_d6 <=  xsX_d5;
            xsX_d7 <=  xsX_d6;
            xsX_d8 <=  xsX_d7;
            xsX_d9 <=  xsX_d8;
            xsX_d10 <=  xsX_d9;
            xsX_d11 <=  xsX_d10;
            xsX_d12 <=  xsX_d11;
            xsX_d13 <=  xsX_d12;
            xsX_d14 <=  xsX_d13;
            xsX_d15 <=  xsX_d14;
            xsX_d16 <=  xsX_d15;
            xsX_d17 <=  xsX_d16;
            xsX_d18 <=  xsX_d17;
            xsX_d19 <=  xsX_d18;
            xsX_d20 <=  xsX_d19;
            xsX_d21 <=  xsX_d20;
            xsX_d22 <=  xsX_d21;
            xsX_d23 <=  xsX_d22;
            xsX_d24 <=  xsX_d23;
            xsX_d25 <=  xsX_d24;
            eRn1_d1 <=  eRn1;
            eRn1_d2 <=  eRn1_d1;
            eRn1_d3 <=  eRn1_d2;
            eRn1_d4 <=  eRn1_d3;
            eRn1_d5 <=  eRn1_d4;
            eRn1_d6 <=  eRn1_d5;
            eRn1_d7 <=  eRn1_d6;
            eRn1_d8 <=  eRn1_d7;
            eRn1_d9 <=  eRn1_d8;
            eRn1_d10 <=  eRn1_d9;
            eRn1_d11 <=  eRn1_d10;
            eRn1_d12 <=  eRn1_d11;
            eRn1_d13 <=  eRn1_d12;
            eRn1_d14 <=  eRn1_d13;
            eRn1_d15 <=  eRn1_d14;
            eRn1_d16 <=  eRn1_d15;
            eRn1_d17 <=  eRn1_d16;
            eRn1_d18 <=  eRn1_d17;
            eRn1_d19 <=  eRn1_d18;
            eRn1_d20 <=  eRn1_d19;
            eRn1_d21 <=  eRn1_d20;
            eRn1_d22 <=  eRn1_d21;
            eRn1_d23 <=  eRn1_d22;
            eRn1_d24 <=  eRn1_d23;
            eRn1_d25 <=  eRn1_d24;
            w24_d1 <=  w24;
            s24_d1 <=  s24;
            w23_d1 <=  w23;
            s23_d1 <=  s23;
            w22_d1 <=  w22;
            s22_d1 <=  s22;
            w21_d1 <=  w21;
            s21_d1 <=  s21;
            w20_d1 <=  w20;
            s20_d1 <=  s20;
            w19_d1 <=  w19;
            s19_d1 <=  s19;
            w18_d1 <=  w18;
            s18_d1 <=  s18;
            w17_d1 <=  w17;
            s17_d1 <=  s17;
            w16_d1 <=  w16;
            s16_d1 <=  s16;
            w15_d1 <=  w15;
            s15_d1 <=  s15;
            w14_d1 <=  w14;
            s14_d1 <=  s14;
            w13_d1 <=  w13;
            s13_d1 <=  s13;
            w12_d1 <=  w12;
            s12_d1 <=  s12;
            w11_d1 <=  w11;
            s11_d1 <=  s11;
            w10_d1 <=  w10;
            s10_d1 <=  s10;
            w9_d1 <=  w9;
            s9_d1 <=  s9;
            w8_d1 <=  w8;
            s8_d1 <=  s8;
            w7_d1 <=  w7;
            s7_d1 <=  s7;
            w6_d1 <=  w6;
            s6_d1 <=  s6;
            w5_d1 <=  w5;
            s5_d1 <=  s5;
            w4_d1 <=  w4;
            s4_d1 <=  s4;
            w3_d1 <=  w3;
            s3_d1 <=  s3;
            w2_d1 <=  w2;
            s2_d1 <=  s2;
            w1_d1 <=  w1;
            s1_d1 <=  s1;
            fRn1_d1 <=  fRn1;
            round_d1 <=  round;
         end if;
      end process;
   fracX <= X(22 downto 0); -- fraction
   eRn0 <= "0" & X(30 downto 24); -- exponent
   xsX <= X(33 downto 31); -- exception and sign
   eRn1 <= eRn0 + ("00" & (5 downto 0 => '1')) + X(23);
   w26 <= "111" & fracX & "0" when X(23) = '0' else
          "1101" & fracX;
   -- Step 25
   d25 <= w26(26);
   x25 <= w26 & "0";
   ds25 <=  "0" &  (not d25) & d25 & "1";
   xh25 <= x25(27 downto 24);
   with d25 select
      wh25 <= xh25 - ds25 when '0',
            xh25 + ds25 when others;
   w25 <= wh25(2 downto 0) & x25(23 downto 0);
   s25 <= "" & (not d25) ;
   -- Step 24
   d24 <= w25(26);
   x24 <= w25 & "0";
   ds24 <=  "0" & s25 &  (not d24) & d24 & "1";
   xh24 <= x24(27 downto 23);
   with d24 select
      wh24 <= xh24 - ds24 when '0',
            xh24 + ds24 when others;
   w24 <= wh24(3 downto 0) & x24(22 downto 0);
   s24 <= s25 & not d24;
   ----------------Synchro barrier, entering cycle 1----------------
   -- Step 23
   d23 <= w24_d1(26);
   x23 <= w24_d1 & "0";
   ds23 <=  "0" & s24_d1 &  (not d23) & d23 & "1";
   xh23 <= x23(27 downto 22);
   with d23 select
      wh23 <= xh23 - ds23 when '0',
            xh23 + ds23 when others;
   w23 <= wh23(4 downto 0) & x23(21 downto 0);
   s23 <= s24_d1 & not d23;
   ----------------Synchro barrier, entering cycle 2----------------
   -- Step 22
   d22 <= w23_d1(26);
   x22 <= w23_d1 & "0";
   ds22 <=  "0" & s23_d1 &  (not d22) & d22 & "1";
   xh22 <= x22(27 downto 21);
   with d22 select
      wh22 <= xh22 - ds22 when '0',
            xh22 + ds22 when others;
   w22 <= wh22(5 downto 0) & x22(20 downto 0);
   s22 <= s23_d1 & not d22;
   ----------------Synchro barrier, entering cycle 3----------------
   -- Step 21
   d21 <= w22_d1(26);
   x21 <= w22_d1 & "0";
   ds21 <=  "0" & s22_d1 &  (not d21) & d21 & "1";
   xh21 <= x21(27 downto 20);
   with d21 select
      wh21 <= xh21 - ds21 when '0',
            xh21 + ds21 when others;
   w21 <= wh21(6 downto 0) & x21(19 downto 0);
   s21 <= s22_d1 & not d21;
   ----------------Synchro barrier, entering cycle 4----------------
   -- Step 20
   d20 <= w21_d1(26);
   x20 <= w21_d1 & "0";
   ds20 <=  "0" & s21_d1 &  (not d20) & d20 & "1";
   xh20 <= x20(27 downto 19);
   with d20 select
      wh20 <= xh20 - ds20 when '0',
            xh20 + ds20 when others;
   w20 <= wh20(7 downto 0) & x20(18 downto 0);
   s20 <= s21_d1 & not d20;
   ----------------Synchro barrier, entering cycle 5----------------
   -- Step 19
   d19 <= w20_d1(26);
   x19 <= w20_d1 & "0";
   ds19 <=  "0" & s20_d1 &  (not d19) & d19 & "1";
   xh19 <= x19(27 downto 18);
   with d19 select
      wh19 <= xh19 - ds19 when '0',
            xh19 + ds19 when others;
   w19 <= wh19(8 downto 0) & x19(17 downto 0);
   s19 <= s20_d1 & not d19;
   ----------------Synchro barrier, entering cycle 6----------------
   -- Step 18
   d18 <= w19_d1(26);
   x18 <= w19_d1 & "0";
   ds18 <=  "0" & s19_d1 &  (not d18) & d18 & "1";
   xh18 <= x18(27 downto 17);
   with d18 select
      wh18 <= xh18 - ds18 when '0',
            xh18 + ds18 when others;
   w18 <= wh18(9 downto 0) & x18(16 downto 0);
   s18 <= s19_d1 & not d18;
   ----------------Synchro barrier, entering cycle 7----------------
   -- Step 17
   d17 <= w18_d1(26);
   x17 <= w18_d1 & "0";
   ds17 <=  "0" & s18_d1 &  (not d17) & d17 & "1";
   xh17 <= x17(27 downto 16);
   with d17 select
      wh17 <= xh17 - ds17 when '0',
            xh17 + ds17 when others;
   w17 <= wh17(10 downto 0) & x17(15 downto 0);
   s17 <= s18_d1 & not d17;
   ----------------Synchro barrier, entering cycle 8----------------
   -- Step 16
   d16 <= w17_d1(26);
   x16 <= w17_d1 & "0";
   ds16 <=  "0" & s17_d1 &  (not d16) & d16 & "1";
   xh16 <= x16(27 downto 15);
   with d16 select
      wh16 <= xh16 - ds16 when '0',
            xh16 + ds16 when others;
   w16 <= wh16(11 downto 0) & x16(14 downto 0);
   s16 <= s17_d1 & not d16;
   ----------------Synchro barrier, entering cycle 9----------------
   -- Step 15
   d15 <= w16_d1(26);
   x15 <= w16_d1 & "0";
   ds15 <=  "0" & s16_d1 &  (not d15) & d15 & "1";
   xh15 <= x15(27 downto 14);
   with d15 select
      wh15 <= xh15 - ds15 when '0',
            xh15 + ds15 when others;
   w15 <= wh15(12 downto 0) & x15(13 downto 0);
   s15 <= s16_d1 & not d15;
   ----------------Synchro barrier, entering cycle 10----------------
   -- Step 14
   d14 <= w15_d1(26);
   x14 <= w15_d1 & "0";
   ds14 <=  "0" & s15_d1 &  (not d14) & d14 & "1";
   xh14 <= x14(27 downto 13);
   with d14 select
      wh14 <= xh14 - ds14 when '0',
            xh14 + ds14 when others;
   w14 <= wh14(13 downto 0) & x14(12 downto 0);
   s14 <= s15_d1 & not d14;
   ----------------Synchro barrier, entering cycle 11----------------
   -- Step 13
   d13 <= w14_d1(26);
   x13 <= w14_d1 & "0";
   ds13 <=  "0" & s14_d1 &  (not d13) & d13 & "1";
   xh13 <= x13(27 downto 12);
   with d13 select
      wh13 <= xh13 - ds13 when '0',
            xh13 + ds13 when others;
   w13 <= wh13(14 downto 0) & x13(11 downto 0);
   s13 <= s14_d1 & not d13;
   ----------------Synchro barrier, entering cycle 12----------------
   -- Step 12
   d12 <= w13_d1(26);
   x12 <= w13_d1 & "0";
   ds12 <=  "0" & s13_d1 &  (not d12) & d12 & "1";
   xh12 <= x12(27 downto 11);
   with d12 select
      wh12 <= xh12 - ds12 when '0',
            xh12 + ds12 when others;
   w12 <= wh12(15 downto 0) & x12(10 downto 0);
   s12 <= s13_d1 & not d12;
   ----------------Synchro barrier, entering cycle 13----------------
   -- Step 11
   d11 <= w12_d1(26);
   x11 <= w12_d1 & "0";
   ds11 <=  "0" & s12_d1 &  (not d11) & d11 & "1";
   xh11 <= x11(27 downto 10);
   with d11 select
      wh11 <= xh11 - ds11 when '0',
            xh11 + ds11 when others;
   w11 <= wh11(16 downto 0) & x11(9 downto 0);
   s11 <= s12_d1 & not d11;
   ----------------Synchro barrier, entering cycle 14----------------
   -- Step 10
   d10 <= w11_d1(26);
   x10 <= w11_d1 & "0";
   ds10 <=  "0" & s11_d1 &  (not d10) & d10 & "1";
   xh10 <= x10(27 downto 9);
   with d10 select
      wh10 <= xh10 - ds10 when '0',
            xh10 + ds10 when others;
   w10 <= wh10(17 downto 0) & x10(8 downto 0);
   s10 <= s11_d1 & not d10;
   ----------------Synchro barrier, entering cycle 15----------------
   -- Step 9
   d9 <= w10_d1(26);
   x9 <= w10_d1 & "0";
   ds9 <=  "0" & s10_d1 &  (not d9) & d9 & "1";
   xh9 <= x9(27 downto 8);
   with d9 select
      wh9 <= xh9 - ds9 when '0',
            xh9 + ds9 when others;
   w9 <= wh9(18 downto 0) & x9(7 downto 0);
   s9 <= s10_d1 & not d9;
   ----------------Synchro barrier, entering cycle 16----------------
   -- Step 8
   d8 <= w9_d1(26);
   x8 <= w9_d1 & "0";
   ds8 <=  "0" & s9_d1 &  (not d8) & d8 & "1";
   xh8 <= x8(27 downto 7);
   with d8 select
      wh8 <= xh8 - ds8 when '0',
            xh8 + ds8 when others;
   w8 <= wh8(19 downto 0) & x8(6 downto 0);
   s8 <= s9_d1 & not d8;
   ----------------Synchro barrier, entering cycle 17----------------
   -- Step 7
   d7 <= w8_d1(26);
   x7 <= w8_d1 & "0";
   ds7 <=  "0" & s8_d1 &  (not d7) & d7 & "1";
   xh7 <= x7(27 downto 6);
   with d7 select
      wh7 <= xh7 - ds7 when '0',
            xh7 + ds7 when others;
   w7 <= wh7(20 downto 0) & x7(5 downto 0);
   s7 <= s8_d1 & not d7;
   ----------------Synchro barrier, entering cycle 18----------------
   -- Step 6
   d6 <= w7_d1(26);
   x6 <= w7_d1 & "0";
   ds6 <=  "0" & s7_d1 &  (not d6) & d6 & "1";
   xh6 <= x6(27 downto 5);
   with d6 select
      wh6 <= xh6 - ds6 when '0',
            xh6 + ds6 when others;
   w6 <= wh6(21 downto 0) & x6(4 downto 0);
   s6 <= s7_d1 & not d6;
   ----------------Synchro barrier, entering cycle 19----------------
   -- Step 5
   d5 <= w6_d1(26);
   x5 <= w6_d1 & "0";
   ds5 <=  "0" & s6_d1 &  (not d5) & d5 & "1";
   xh5 <= x5(27 downto 4);
   with d5 select
      wh5 <= xh5 - ds5 when '0',
            xh5 + ds5 when others;
   w5 <= wh5(22 downto 0) & x5(3 downto 0);
   s5 <= s6_d1 & not d5;
   ----------------Synchro barrier, entering cycle 20----------------
   -- Step 4
   d4 <= w5_d1(26);
   x4 <= w5_d1 & "0";
   ds4 <=  "0" & s5_d1 &  (not d4) & d4 & "1";
   xh4 <= x4(27 downto 3);
   with d4 select
      wh4 <= xh4 - ds4 when '0',
            xh4 + ds4 when others;
   w4 <= wh4(23 downto 0) & x4(2 downto 0);
   s4 <= s5_d1 & not d4;
   ----------------Synchro barrier, entering cycle 21----------------
   -- Step 3
   d3 <= w4_d1(26);
   x3 <= w4_d1 & "0";
   ds3 <=  "0" & s4_d1 &  (not d3) & d3 & "1";
   xh3 <= x3(27 downto 2);
   with d3 select
      wh3 <= xh3 - ds3 when '0',
            xh3 + ds3 when others;
   w3 <= wh3(24 downto 0) & x3(1 downto 0);
   s3 <= s4_d1 & not d3;
   ----------------Synchro barrier, entering cycle 22----------------
   -- Step 2
   d2 <= w3_d1(26);
   x2 <= w3_d1 & "0";
   ds2 <=  "0" & s3_d1 &  (not d2) & d2 & "1";
   xh2 <= x2(27 downto 1);
   with d2 select
      wh2 <= xh2 - ds2 when '0',
            xh2 + ds2 when others;
   w2 <= wh2(25 downto 0) & x2(0 downto 0);
   s2 <= s3_d1 & not d2;
   ----------------Synchro barrier, entering cycle 23----------------
   -- Step 1
   d1 <= w2_d1(26);
   x1 <= w2_d1 & "0";
   ds1 <=  "0" & s2_d1 &  (not d1) & d1 & "1";
   xh1 <= x1(27 downto 0);
   with d1 select
      wh1 <= xh1 - ds1 when '0',
            xh1 + ds1 when others;
   w1 <= wh1(26 downto 0);
   s1 <= s2_d1 & not d1;
   ----------------Synchro barrier, entering cycle 24----------------
   d0 <= w1_d1(26) ;
   fR <= s1_d1 & not d0 & '1';
   -- normalisation of the result, removing leading 1
   with fR(26) select
      fRn1 <= fR(25 downto 2) & (fR(1) or fR(0)) when '1',
              fR(24 downto 0)                    when others;
   round <= fRn1(1) and (fRn1(2) or fRn1(0)) ; -- round  and (lsb or sticky) : that's RN, tie to even
   ----------------Synchro barrier, entering cycle 25----------------
   fRn2 <= fRn1_d1(24 downto 2) + ((22 downto 1 => '0') & round_d1); -- rounding sqrt never changes exponents 
   Rn2 <= eRn1_d25 & fRn2;
   -- sign and exception processing
   with xsX_d25 select
      xsR <= "010"  when "010",  -- normal case
             "100"  when "100",  -- +infty
             "000"  when "000",  -- +0
             "001"  when "001",  -- the infamous sqrt(-0)=-0
             "110"  when others; -- return NaN
   R <= xsR & Rn2; 
end architecture;

--------------------------------------------------------------------------------
--                      TestBench_FPSqrt_8_23_F400_uid3
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

entity TestBench_FPSqrt_8_23_F400_uid3 is
end entity;

architecture behavorial of TestBench_FPSqrt_8_23_F400_uid3 is
   component FPSqrt_8_23 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(8+23+2 downto 0);
             R : out  std_logic_vector(8+23+2 downto 0)   );
   end component;
   signal X :  std_logic_vector(33 downto 0);
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
   test: FPSqrt_8_23  -- pipelineDepth=25 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => R,
                 X => X);
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
      wait for 10 ns;
      X <= "0100011111110010001001100100010111"; 
      wait for 10 ns;
      X <= "0100101010011011000011101110110000"; 
      wait for 10 ns;
      X <= "0101110110110101111000101100101001"; 
      wait for 10 ns;
      X <= "1110011110001010101001000001100010"; 
      wait for 10 ns;
      X <= "0101000000010000100100110011110000"; 
      wait for 10 ns;
      X <= "0100010000000100110011101011010111"; 
      wait for 10 ns;
      X <= "0101001110000101100000011010111110"; 
      wait for 10 ns;
      X <= "1000000101000110010111111101000111"; 
      wait for 10 ns;
      X <= "0100011010111001001110101011001100"; 
      wait for 10 ns;
      X <= "0100001010000101101001010111010011"; 
      wait for 10 ns;
      X <= "0100010101101001101100011001110101"; 
      wait for 10 ns;
      X <= "0101111001010010111111001000010110"; 
      wait for 10 ns;
      X <= "0100011101010101101010100010000111"; 
      wait for 10 ns;
      X <= "0101010101111111000010000101010011"; 
      wait for 10 ns;
      X <= "0101100111100010011000111011001000"; 
      wait for 10 ns;
      X <= "1110101111001100100101101001011110"; 
      wait for 10 ns;
      X <= "0100010100100101100111111110110110"; 
      wait for 10 ns;
      X <= "0101001100010111010001100101011111"; 
      wait for 10 ns;
      X <= "0100101001110011010000011110000000"; 
      wait for 10 ns;
      wait for 100000 ns; -- allow simulation to finish
   end process;

   -- Checking the outputs
   process
   begin
      wait for 10 ns; -- wait for reset to complete
      wait for 250 ns; -- wait for pipeline to flush
      -- current time: 260
      -- input: X <= "1110110101000000010011010000100111"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 1100000000000000000000000000000000 | Test Number : 0  " severity ERROR; 
      wait for 10 ns;
      -- current time: 270
      -- input: X <= "0100011111110010001001100100010111"; 
      assert false or fp_equal(R,fp34'("0100101111101000000011110100110001")) or fp_equal(R,fp34'("0100101111101000000011110100110000")) report "Incorrect output value for R, expected 0100101111101000000011110100110001 0100101111101000000011110100110000 | Test Number : 1  " severity ERROR; 
      wait for 10 ns;
      -- current time: 280
      -- input: X <= "0100101010011011000011101110110000"; 
      assert false or fp_equal(R,fp34'("0100110100111101011110101100000110")) or fp_equal(R,fp34'("0100110100111101011110101100000101")) report "Incorrect output value for R, expected 0100110100111101011110101100000110 0100110100111101011110101100000101 | Test Number : 2  " severity ERROR; 
      wait for 10 ns;
      -- current time: 290
      -- input: X <= "0101110110110101111000101100101001"; 
      assert false or fp_equal(R,fp34'("0101011011001001100001100111100011")) or fp_equal(R,fp34'("0101011011001001100001100111100010")) report "Incorrect output value for R, expected 0101011011001001100001100111100011 0101011011001001100001100111100010 | Test Number : 3  " severity ERROR; 
      wait for 10 ns;
      -- current time: 300
      -- input: X <= "1110011110001010101001000001100010"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 1100000000000000000000000000000000 | Test Number : 4  " severity ERROR; 
      wait for 10 ns;
      -- current time: 310
      -- input: X <= "0101000000010000100100110011110000"; 
      assert false or fp_equal(R,fp34'("0100111111110111110000011011011011")) or fp_equal(R,fp34'("0100111111110111110000011011011010")) report "Incorrect output value for R, expected 0100111111110111110000011011011011 0100111111110111110000011011011010 | Test Number : 5  " severity ERROR; 
      wait for 10 ns;
      -- current time: 320
      -- input: X <= "0100010000000100110011101011010111"; 
      assert false or fp_equal(R,fp34'("0100100111110000100010010000101100")) or fp_equal(R,fp34'("0100100111110000100010010000101011")) report "Incorrect output value for R, expected 0100100111110000100010010000101100 0100100111110000100010010000101011 | Test Number : 6  " severity ERROR; 
      wait for 10 ns;
      -- current time: 330
      -- input: X <= "0101001110000101100000011010111110"; 
      assert false or fp_equal(R,fp34'("0101000110110000111111100111110101")) or fp_equal(R,fp34'("0101000110110000111111100111110100")) report "Incorrect output value for R, expected 0101000110110000111111100111110101 0101000110110000111111100111110100 | Test Number : 7  " severity ERROR; 
      wait for 10 ns;
      -- current time: 340
      -- input: X <= "1000000101000110010111111101000111"; 
      assert false or fp_equal(R,fp34'("1000000000000000000000000000000000")) or fp_equal(R,fp34'("1000000000000000000000000000000000")) report "Incorrect output value for R, expected 1000000000000000000000000000000000 1000000000000000000000000000000000 | Test Number : 8  " severity ERROR; 
      wait for 10 ns;
      -- current time: 350
      -- input: X <= "0100011010111001001110101011001100"; 
      assert false or fp_equal(R,fp34'("0100101101001010110010110100110000")) or fp_equal(R,fp34'("0100101101001010110010110100101111")) report "Incorrect output value for R, expected 0100101101001010110010110100110000 0100101101001010110010110100101111 | Test Number : 9  " severity ERROR; 
      wait for 10 ns;
      -- current time: 360
      -- input: X <= "0100001010000101101001010111010011"; 
      assert false or fp_equal(R,fp34'("0100100100110001000101011101010010")) or fp_equal(R,fp34'("0100100100110001000101011101010001")) report "Incorrect output value for R, expected 0100100100110001000101011101010010 0100100100110001000101011101010001 | Test Number : 10  " severity ERROR; 
      wait for 10 ns;
      -- current time: 370
      -- input: X <= "0100010101101001101100011001110101"; 
      assert false or fp_equal(R,fp34'("0100101010100100100001101101011111")) or fp_equal(R,fp34'("0100101010100100100001101101011110")) report "Incorrect output value for R, expected 0100101010100100100001101101011111 0100101010100100100001101101011110 | Test Number : 11  " severity ERROR; 
      wait for 10 ns;
      -- current time: 380
      -- input: X <= "0101111001010010111111001000010110"; 
      assert false or fp_equal(R,fp34'("0101011100011001000111111011001010")) or fp_equal(R,fp34'("0101011100011001000111111011001001")) report "Incorrect output value for R, expected 0101011100011001000111111011001010 0101011100011001000111111011001001 | Test Number : 12  " severity ERROR; 
      wait for 10 ns;
      -- current time: 390
      -- input: X <= "0100011101010101101010100010000111"; 
      assert false or fp_equal(R,fp34'("0100101110011010100110101101101000")) or fp_equal(R,fp34'("0100101110011010100110101101100111")) report "Incorrect output value for R, expected 0100101110011010100110101101101000 0100101110011010100110101101100111 | Test Number : 13  " severity ERROR; 
      wait for 10 ns;
      -- current time: 400
      -- input: X <= "0101010101111111000010000101010011"; 
      assert false or fp_equal(R,fp34'("0101001010101100111010010101011101")) or fp_equal(R,fp34'("0101001010101100111010010101011100")) report "Incorrect output value for R, expected 0101001010101100111010010101011101 0101001010101100111010010101011100 | Test Number : 14  " severity ERROR; 
      wait for 10 ns;
      -- current time: 410
      -- input: X <= "0101100111100010011000111011001000"; 
      assert false or fp_equal(R,fp34'("0101010011100001001011000101011111")) or fp_equal(R,fp34'("0101010011100001001011000101011110")) report "Incorrect output value for R, expected 0101010011100001001011000101011111 0101010011100001001011000101011110 | Test Number : 15  " severity ERROR; 
      wait for 10 ns;
      -- current time: 420
      -- input: X <= "1110101111001100100101101001011110"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 1100000000000000000000000000000000 | Test Number : 16  " severity ERROR; 
      wait for 10 ns;
      -- current time: 430
      -- input: X <= "0100010100100101100111111110110110"; 
      assert false or fp_equal(R,fp34'("0100101010000010101100101101010111")) or fp_equal(R,fp34'("0100101010000010101100101101010110")) report "Incorrect output value for R, expected 0100101010000010101100101101010111 0100101010000010101100101101010110 | Test Number : 17  " severity ERROR; 
      wait for 10 ns;
      -- current time: 440
      -- input: X <= "0101001100010111010001100101011111"; 
      assert false or fp_equal(R,fp34'("0101000101111011011110100100010010")) or fp_equal(R,fp34'("0101000101111011011110100100010001")) report "Incorrect output value for R, expected 0101000101111011011110100100010010 0101000101111011011110100100010001 | Test Number : 18  " severity ERROR; 
      wait for 10 ns;
      -- current time: 450
      -- input: X <= "0100101001110011010000011110000000"; 
      assert false or fp_equal(R,fp34'("0100110100101000011111111111001110")) or fp_equal(R,fp34'("0100110100101000011111111111001101")) report "Incorrect output value for R, expected 0100110100101000011111111111001110 0100110100101000011111111111001101 | Test Number : 19  " severity ERROR; 
      wait for 10 ns;
      assert false report "End of simulation" severity failure;
   end process;

end architecture;

