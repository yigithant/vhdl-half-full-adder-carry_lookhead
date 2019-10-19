library ieee;
use ieee.std_logic_1164.all;

entity full_adder is port
(
finput1, finput2, cin: in std_logic;
cout,sum: out std_logic
);
end full_adder;

architecture karakter of full_adder is
signal ara1,ara2,ara3:std_logic;
component half_adder port
(
input1, input2:in std_logic;
toplam,elde: out std_logic
);
end component;
begin
ha1:half_adder port map
(
input1=>finput1,
input2=>finput2,
toplam=>ara2,
elde=>ara1
);
ha2:half_adder port map
(
input1=>ara2,
input2=>cin,
toplam=>sum,
elde=>ara3
);

cout<=ara1 or ara3;
end karakter;
