library ieee;
use ieee.std_logic_1164.all;

entity odd_parity is port
(
a,b,c:in std_logic;
o:out std_logic
);
end odd_parity;

architecture karakter of odd_parity is
signal ara1,ara2:std_logic;
begin
ara1<=a xor b;
ara2<=ara1 xor c;
o<=not ara2;
end karakter;

