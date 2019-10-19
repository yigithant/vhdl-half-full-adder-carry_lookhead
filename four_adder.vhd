library ieee;
use ieee.std_logic_1164.all;


entity four_adder is port
(
	cin_f,inputa1,inputb1,inputa2,inputb2,inputa3,inputb3,inputa4,inputb4:in std_logic;
	cout,q1,q2,q3,q4:out std_logic
);
end four_adder;

architecture karakter of four_adder is
signal ara1, ara2,ara3:std_logic;
component full_adder port
(
finput1, finput2, cin: in std_logic;
cout,sum: out std_logic
);
end component;
begin
fa1:full_adder port map
(
finput1=>inputa1,
finput2=>inputb1,
cin=>cin_f,
sum=>q1,
cout=>ara1
);
fa2:full_adder port map
(
finput1=>inputa2,
finput2=>inputb2,
cin=>ara1,
sum=>q2,
cout=>ara2
);
fa3:full_adder port map
(
finput1=>inputa3,
finput2=>inputb3,
cin=>ara2,
sum=>q3,
cout=>ara3
);
fa4:full_adder port map
(
finput1=>inputa4,
finput2=>inputb4,
cin=>ara3,
sum=>q4,
cout=>cout
);

end karakter;
