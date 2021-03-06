Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_bit.all;

entity hw1 is
	port(
		A, B, C : in unsigned( 3 downto 0 );
		S : in bit_vector( 1 downto 0 );
		Y : out unsigned( 3 downto 0 )
	);
end hw1;

architecture My_ckt_1 of hw1 is
signal X : unsigned( 7 downto 0);
begin
	process( A, B, C, S, X )
	begin
		X <= "00000000";
		Y <= "0000";
		case S is
		when "00" =>
			Y <= A OR B;
		when "01" =>
			if A > B then
				if A > C then
					Y <= A;
				else
					Y <= C;
				end if;
			else
				if B > C then
					Y <= B;
				else
					Y <= C;
				end if;
			end if;
		when "10" =>
			X <= A * B;
			for i in 3 downto 0 loop
				Y(i) <= X(i);
			end loop;
		when others =>
			Y <= A + C;
		end case;
	end process;
end My_ckt_1;







