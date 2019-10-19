library ieee;
use ieee.std_logic_1164.all;


entity carry_lookhead is port
(
	cin_f,inputa1,inputb1,inputa2,inputb2,inputa3,inputb3,inputa4,inputb4:in std_logic;
	cout,q1,q2,q3,q4,a1,a2,a3,a4,o1,o2,o3,o4:out std_logic;
	result:out std_logic_vector(3 downto 0)
);
end carry_lookhead;

architecture karakter of carry_lookhead is
signal ara_c:std_logic(4 downto 0);
signal ara_g,ara_p:std_logic(3 downto 0);
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
cin=>ara_c(0),
sum=>q1,
cout=>open
);

fa2:full_adder port map
(
finput1=>inputa2,
finput2=>inputb2,
cin=>ara_c(1),
sum=>q2,
cout=>open
);

fa3:full_adder port map
(
finput1=>inputa3,
finput2=>inputb3,
cin=>ara_c(2),
sum=>q3,
cout=>open
);
fa4:full_adder port map
(
finput1=>inputa4,
finput2=>inputb4,
cin=>ara_c(3),
sum=>q4,
cout=>open
);

ara_g(0)<=inputa1 and inputb1;
ara_g(1)<=inputa2 and inputb2;
ara_g(2)<=inputa3 and inputb3;
ara_g(3)<=inputa4 and inputb4;

ara_p(0)<=inputa1 or inputb1;
ara_p(1)<=inputa2 or inputb2;
ara_p(2)<=inputa3 or inputb3;
ara_p(3)<=inputa4 or inputb4;

ara_c(0)<='0';
ara_c(1)<=inputa1 or (ara_p(0) and ara_c(0));
ara_c(2)<=inputa2 or (ara_p(1) and ara_c(1));
ara_c(3)<=inputa3 or (ara_p(2) and ara_c(2));
ara_c(4)<=inputa4 or (ara_p(3) and ara_c(3));

result<=ara_c(4) & q4 & q3 & q2 & q1;
end karakter;

