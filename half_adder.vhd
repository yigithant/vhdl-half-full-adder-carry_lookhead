library ieee;
use ieee.std_logic_1164.all;

entity half_adder is port
(
	input1,input2: in std_logic;
	toplam,elde: out std_logic
);
end half_adder;

architecture karakter of half_adder is
begin 
toplam<= input1 xor input2;
elde<=input1 and input2;
end karakter;

