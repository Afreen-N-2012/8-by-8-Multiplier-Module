------------------AMM MODULE------------------------
library ieee;
use ieee.std_logic_1164.all;

entity AMMmodule is 
port(a3,a2,a1,a0,b1,b0,c3,c2,c1,c0,d1,d0:in std_logic;
p5,p4,p3,p2,p1,p0:out std_logic);
end AMMmodule;

architecture sample3 of AMMmodule is
signal x:std_logic_vector(17 downto 0);


component fulladderfile is
port(a,b,cin:in std_logic;
s,cout:out std_logic);
end component;

component andgatefile is
port(a,b:in std_logic;
c:out std_logic);
end component;


begin 

T1: andgatefile port map(a0,b0,x(11));
T2: andgatefile port map(a1,b0,x(12));
T3: andgatefile port map(a2,b0,x(13));
T4: andgatefile port map(a3,b0,x(14));
T5: andgatefile port map(a0,b1,x(15));
T6: andgatefile port map(a1,b1,x(16));
T7: andgatefile port map(a2,b1,x(17));
T8: andgatefile port map(a3,b1,x(0));
fa1:fulladderfile port map(x(11),d0,c0,p0,x(7));
fa2:fulladderfile port map(x(12),x(15),c1,x(6),x(5));
fa3:fulladderfile port map(x(13),c2,x(16),x(4),x(3));
fa4:fulladderfile port map(x(14),c3,x(17),x(2),x(1));
fa5:fulladderfile port map(x(6),x(7),d1,p1,x(8));
fa6:fulladderfile port map(x(4),x(5),x(8),p2,x(9));
fa7:fulladderfile port map(x(2),x(3),x(9),p3,x(10));
fa8:fulladderfile port map(x(0),x(1),x(10),p4,p5);

end sample3;