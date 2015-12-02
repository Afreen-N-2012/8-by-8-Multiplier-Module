-------------------FULLADDER------------------
library ieee;
use ieee.std_logic_1164.all;
entity fulladderfile is
port(a,b,cin:in std_logic;
s,cout:out std_logic);
end fulladderfile;
architecture sample2 of fulladderfile is
begin
s<=a xor b xor cin;
cout<=(a and b)or(b and cin)or (a and cin);
end sample2;