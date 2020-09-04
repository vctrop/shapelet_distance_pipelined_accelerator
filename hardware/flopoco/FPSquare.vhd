--------------------------------------------------------------------------------
--                          IntSquarer_24_F400_uid4
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
entity IntSquarer_24_F400_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(23 downto 0);
          R : out  std_logic_vector(47 downto 0)   );
end entity;

architecture arch of IntSquarer_24_F400_uid4 is
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
--                           IntAdder_33_f400_uid8
--                    (IntAdderAlternative_33_F400_uid12)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_33_f400_uid8 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(32 downto 0);
          Y : in  std_logic_vector(32 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(32 downto 0)   );
end entity;

architecture arch of IntAdder_33_f400_uid8 is
signal s_sum_l0_idx0 :  std_logic_vector(19 downto 0);
signal s_sum_l0_idx1, s_sum_l0_idx1_d1 :  std_logic_vector(14 downto 0);
signal sum_l0_idx0, sum_l0_idx0_d1 :  std_logic_vector(18 downto 0);
signal c_l0_idx0, c_l0_idx0_d1 :  std_logic_vector(0 downto 0);
signal sum_l0_idx1 :  std_logic_vector(13 downto 0);
signal c_l0_idx1 :  std_logic_vector(0 downto 0);
signal s_sum_l1_idx1 :  std_logic_vector(14 downto 0);
signal sum_l1_idx1 :  std_logic_vector(13 downto 0);
signal c_l1_idx1 :  std_logic_vector(0 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            s_sum_l0_idx1_d1 <=  s_sum_l0_idx1;
            sum_l0_idx0_d1 <=  sum_l0_idx0;
            c_l0_idx0_d1 <=  c_l0_idx0;
         end if;
      end process;
   --Alternative
   s_sum_l0_idx0 <= ( "0" & X(18 downto 0)) + ( "0" & Y(18 downto 0)) + Cin;
   s_sum_l0_idx1 <= ( "0" & X(32 downto 19)) + ( "0" & Y(32 downto 19));
   sum_l0_idx0 <= s_sum_l0_idx0(18 downto 0);
   c_l0_idx0 <= s_sum_l0_idx0(19 downto 19);
   sum_l0_idx1 <= s_sum_l0_idx1(13 downto 0);
   c_l0_idx1 <= s_sum_l0_idx1(14 downto 14);
   ----------------Synchro barrier, entering cycle 1----------------
   s_sum_l1_idx1 <=  s_sum_l0_idx1_d1 + c_l0_idx0_d1(0 downto 0);
   sum_l1_idx1 <= s_sum_l1_idx1(13 downto 0);
   c_l1_idx1 <= s_sum_l1_idx1(14 downto 14);
   R <= sum_l1_idx1(13 downto 0) & sum_l0_idx0_d1(18 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                         FPSquare_8_23_23_F400_uid2
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2009)
--------------------------------------------------------------------------------
-- Pipeline depth: 5 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FPSquare_8_23_23_F400_uid2 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(8+23+2 downto 0);
          R : out  std_logic_vector(8+23+2 downto 0)   );
end entity;

architecture arch of FPSquare_8_23_23_F400_uid2 is
   component IntSquarer_24_F400_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(23 downto 0);
             R : out  std_logic_vector(47 downto 0)   );
   end component;

   component IntAdder_33_f400_uid8 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(32 downto 0);
             Y : in  std_logic_vector(32 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(32 downto 0)   );
   end component;

signal exc, exc_d1, exc_d2, exc_d3, exc_d4, exc_d5 :  std_logic_vector(1 downto 0);
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
signal postRound :  std_logic_vector(32 downto 0);
signal excConcat :  std_logic_vector(3 downto 0);
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
            extExpPostBiasSub_d1 <=  extExpPostBiasSub;
            extExpPostBiasSub_d2 <=  extExpPostBiasSub_d1;
            extExpPostBiasSub_d3 <=  extExpPostBiasSub_d2;
            extExpPostBiasSub_d4 <=  extExpPostBiasSub_d3;
            sqrFrac_d1 <=  sqrFrac;
         end if;
      end process;
   exc <= X(33 downto 32);
   exp <= X(30 downto 23);
   frac <= "1" & X(22 downto 0);
   extExponent<="0" & exp & "0";
   negBias<=CONV_STD_LOGIC_VECTOR(896,10);
   extExpPostBiasSub <= extExponent + negBias + '1';
   FractionSquarer: IntSquarer_24_F400_uid4  -- pipelineDepth=3 maxInDelay=0
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
   Rounding_Instance: IntAdder_33_f400_uid8  -- pipelineDepth=1 maxInDelay=1.37244e-09
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => addCin,
                 R => postRound,
                 X => concatExpFrac,
                 Y => "000000000000000000000000000000000");
   ----------------Synchro barrier, entering cycle 5----------------
   excConcat <= exc_d5 & postRound(32 downto 31);
   with excConcat select 
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
   R <= excR &  "0"  & postRound(30 downto 23) & postRound(22 downto 0);
end architecture;

--------------------------------------------------------------------------------
--              TestBench_FPSquare_8_23_23_F400_uid2_F400_uid16
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

entity TestBench_FPSquare_8_23_23_F400_uid2_F400_uid16 is
end entity;

architecture behavorial of TestBench_FPSquare_8_23_23_F400_uid2_F400_uid16 is
   component FPSquare_8_23_23_F400_uid2 is
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
   test: FPSquare_8_23_23_F400_uid2  -- pipelineDepth=5 maxInDelay=0
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
      X <= "0000011111110010001001100100010111"; 
      wait for 10 ns;
      X <= "1011110110110101111000101100101001"; 
      wait for 10 ns;
      X <= "0010111010100110001000010101110111"; 
      wait for 10 ns;
      X <= "1010010000000100110011101011010111"; 
      wait for 10 ns;
      X <= "1000000101000110010111111101000111"; 
      wait for 10 ns;
      X <= "1110011010111001001110101011001100"; 
      wait for 10 ns;
      X <= "1010010101101001101100011001110101"; 
      wait for 10 ns;
      X <= "1110010111000100110101110111000101"; 
      wait for 10 ns;
      X <= "0011010101111111000010000101010011"; 
      wait for 10 ns;
      X <= "1110101111001100100101101001011110"; 
      wait for 10 ns;
      X <= "1100010100100101100111111110110110"; 
      wait for 10 ns;
      X <= "0110101001110011010000011110000000"; 
      wait for 10 ns;
      X <= "0000100110111100000001100001101101"; 
      wait for 10 ns;
      X <= "0101000101100111010011110001100101"; 
      wait for 10 ns;
      X <= "1011010101111111101111100110111111"; 
      wait for 10 ns;
      X <= "1101101011110000101101111000011011"; 
      wait for 10 ns;
      X <= "1001011001001101100100111011011001"; 
      wait for 10 ns;
      X <= "1101101011000110111100000000001101"; 
      wait for 10 ns;
      X <= "0001100101100000100001001110101001"; 
      wait for 10 ns;
      wait for 100000 ns; -- allow simulation to finish
   end process;

   -- Checking the outputs
   process
   begin
      wait for 10 ns; -- wait for reset to complete
      wait for 50 ns; -- wait for pipeline to flush
      -- current time: 60
      -- input: X <= "1110110101000000010011010000100111"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 0  " severity ERROR; 
      wait for 10 ns;
      -- current time: 70
      -- input: X <= "0000011111110010001001100100010111"; 
      assert false or fp_equal(R,fp34'("0000000000000000000000000000000000")) report "Incorrect output value for R, expected 0000000000000000000000000000000000 | Test Number : 1  " severity ERROR; 
      wait for 10 ns;
      -- current time: 80
      -- input: X <= "1011110110110101111000101100101001"; 
      assert false or fp_equal(R,fp34'("1000000000000000000000000000000000")) report "Incorrect output value for R, expected 1000000000000000000000000000000000 | Test Number : 2  " severity ERROR; 
      wait for 10 ns;
      -- current time: 90
      -- input: X <= "0010111010100110001000010101110111"; 
      assert false or fp_equal(R,fp34'("0000000000000000000000000000000000")) report "Incorrect output value for R, expected 0000000000000000000000000000000000 | Test Number : 3  " severity ERROR; 
      wait for 10 ns;
      -- current time: 100
      -- input: X <= "1010010000000100110011101011010111"; 
      assert false or fp_equal(R,fp34'("1000000000000000000000000000000000")) report "Incorrect output value for R, expected 1000000000000000000000000000000000 | Test Number : 4  " severity ERROR; 
      wait for 10 ns;
      -- current time: 110
      -- input: X <= "1000000101000110010111111101000111"; 
      assert false or fp_equal(R,fp34'("1000000000000000000000000000000000")) report "Incorrect output value for R, expected 1000000000000000000000000000000000 | Test Number : 5  " severity ERROR; 
      wait for 10 ns;
      -- current time: 120
      -- input: X <= "1110011010111001001110101011001100"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 6  " severity ERROR; 
      wait for 10 ns;
      -- current time: 130
      -- input: X <= "1010010101101001101100011001110101"; 
      assert false or fp_equal(R,fp34'("1000000000000000000000000000000000")) report "Incorrect output value for R, expected 1000000000000000000000000000000000 | Test Number : 7  " severity ERROR; 
      wait for 10 ns;
      -- current time: 140
      -- input: X <= "1110010111000100110101110111000101"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 8  " severity ERROR; 
      wait for 10 ns;
      -- current time: 150
      -- input: X <= "0011010101111111000010000101010011"; 
      assert false or fp_equal(R,fp34'("0000000000000000000000000000000000")) report "Incorrect output value for R, expected 0000000000000000000000000000000000 | Test Number : 9  " severity ERROR; 
      wait for 10 ns;
      -- current time: 160
      -- input: X <= "1110101111001100100101101001011110"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 10  " severity ERROR; 
      wait for 10 ns;
      -- current time: 170
      -- input: X <= "1100010100100101100111111110110110"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 11  " severity ERROR; 
      wait for 10 ns;
      -- current time: 180
      -- input: X <= "0110101001110011010000011110000000"; 
      assert false or fp_equal(R,fp34'("0100010100001001000011010100000011")) report "Incorrect output value for R, expected 0100010100001001000011010100000011 | Test Number : 12  " severity ERROR; 
      wait for 10 ns;
      -- current time: 190
      -- input: X <= "0000100110111100000001100001101101"; 
      assert false or fp_equal(R,fp34'("0000000000000000000000000000000000")) report "Incorrect output value for R, expected 0000000000000000000000000000000000 | Test Number : 13  " severity ERROR; 
      wait for 10 ns;
      -- current time: 200
      -- input: X <= "0101000101100111010011110001100101"; 
      assert false or fp_equal(R,fp34'("0101001011110000010010011001000100")) report "Incorrect output value for R, expected 0101001011110000010010011001000100 | Test Number : 14  " severity ERROR; 
      wait for 10 ns;
      -- current time: 210
      -- input: X <= "1011010101111111101111100110111111"; 
      assert false or fp_equal(R,fp34'("1000000000000000000000000000000000")) report "Incorrect output value for R, expected 1000000000000000000000000000000000 | Test Number : 15  " severity ERROR; 
      wait for 10 ns;
      -- current time: 220
      -- input: X <= "1101101011110000101101111000011011"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 16  " severity ERROR; 
      wait for 10 ns;
      -- current time: 230
      -- input: X <= "1001011001001101100100111011011001"; 
      assert false or fp_equal(R,fp34'("1000000000000000000000000000000000")) report "Incorrect output value for R, expected 1000000000000000000000000000000000 | Test Number : 17  " severity ERROR; 
      wait for 10 ns;
      -- current time: 240
      -- input: X <= "1101101011000110111100000000001101"; 
      assert false or fp_equal(R,fp34'("1100000000000000000000000000000000")) report "Incorrect output value for R, expected 1100000000000000000000000000000000 | Test Number : 18  " severity ERROR; 
      wait for 10 ns;
      -- current time: 250
      -- input: X <= "0001100101100000100001001110101001"; 
      assert false or fp_equal(R,fp34'("0000000000000000000000000000000000")) report "Incorrect output value for R, expected 0000000000000000000000000000000000 | Test Number : 19  " severity ERROR; 
      wait for 10 ns;
      assert false report "End of simulation" severity failure;
   end process;

end architecture;

