----------------------------8*8 multipliers using AMM module--------------------
library ieee;
use ieee.std_logic_1164.all;
entity ammproject is
port(b,a:in std_logic_vector(7 downto 0);
     p:out std_logic_vector(15 downto 0));
    end ammproject;
    
    
    
    architecture sample4 of ammproject is

signal x:std_logic_vector(32 downto 0);

component AMMmodule  is
port(a3,a2,a1,a0,b1,b0,c3,c2,c1,c0,d1,d0:in std_logic;
p5,p4,p3,p2,p1,p0:out std_logic);
end component;

begin
MODULE1: AMMmodule port map(a(3),a(2),a(1),a(0),b(1),b(0),'0','0','0','0','0','0',x(1),x(2),x(3),x(4),p(1),p(0));

MODULE2:AMMmodule port map(a(7),a(6),a(5),a(4),b(1),b(0),'0','0','0','0',x(1),x(2),x(7),x(8),x(9),x(10),x(6),x(5));

MODULE3:AMMmodule port map(a(3),a(2),a(1),a(0),b(3),b(2),x(6),x(5),x(3),x(4),'0','0',x(14),x(13),x(12),x(11),p(3),p(2));

MODULE4:AMMmodule port map(a(7),a(6),a(5),a(4),b(3),b(2),x(7),x(8),x(9),x(10),x(14),x(13),x(20),x(19),x(18),x(17),x(16),x(15));

MODULE5:AMMmodule port map(a(3),a(2),a(1),a(0),b(5),b(4),x(16),x(15),x(12),x(11),'0','0',x(21),x(22),x(29),x(30),p(5),p(4));

MODULE6:AMMmodule port map(a(7),a(6),a(5),a(4),b(5),b(4),x(20),x(19),x(18),x(17),x(21),x(22),x(23),x(24),x(25),x(26),x(27),x(28));


MODULE7:AMMmodule port map(a(3),a(2),a(1),a(0),b(7),b(6),x(27),x(28),x(29),x(30),'0','0',x(32),x(31),p(9),p(8),p(7),p(6));

MODULE8:AMMmodule port map(a(7),a(6),a(5),a(4),b(7),b(6),x(23),x(24),x(25),x(26),x(32),x(31),p(15),p(14),p(13),p(12),p(11),p(10));




end sample4;