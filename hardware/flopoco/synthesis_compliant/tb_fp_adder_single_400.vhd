--------------------------------------------------------------------------------
--                 TestBench_FPAdd_8_23_F400_uid2_F400_uid28
--                 (tb_fp_adder_single_400)
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

entity tb_fp_adder_single_400 is
end entity;

architecture behavorial of tb_fp_adder_single_400 is
   DUV: entity work.fp_adder_single_400 is
      port map (
        clk, rst : in std_logic,
        X : in  std_logic_vector(8+23+2 downto 0),
        Y : in  std_logic_vector(8+23+2 downto 0),
        R : out  std_logic_vector(8+23+2 downto 0)
      );
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
   test: fp_adder_single_X  -- pipelineDepth=7 maxInDelay=0
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

