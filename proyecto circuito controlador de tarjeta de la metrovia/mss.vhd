library ieee;
use ieee.std_logic_1164.all;
entity mss is
	port( reset, start, pasar, retiratarjeta, puerta, lectura, stopN, comprar, secuencia, moneda, stopM, clock: in std_logic;
			resetNN, resetRG, ledinicio, enRG, enDD, resetD, enN, ldN, save, pasaM, ledMoneda, EnM, ET: out std_logic);
			
end mss;

architecture solucion of mss is 
type estado is (Ta,Tb,Tc,Td,Te,Tf,Th,Ti,Tj,Tk,Tl,Tm,Tn,Tp,Tq,Tr,Ts,tt,Tu,Tx,Tz);
signal y: estado;
begin
process(clock,reset)
	begin
	if reset = '0' then y<= Ta;
	elsif(clock'event and clock='1') then
		case y is 
			when Ta => if start = '0' then y <= Ta; else y <= Tb; end if;
			when Tb => if start = '1' then y <= Tb; else y <= Tc; end if;
			when Tc => if lectura = '0' then y <= Tc; else y <= Td; end if;
			when Td => if lectura = '1' then y <= Td;
							elsif lectura = '0' and stopN = '0' then y <= Te;
							else y<= Tk; end if;
			when Te => y <= Tz;
			when Tz => y <= Tf;
			when Tf => y <= Th;
			when Th => y <= Ti;
			when Ti => if puerta = '0' then y <= Ti; else y <= Tj; end if;
			when Tj => if puerta = '1' then y <= Tj; else y <= Tc; end if;
			when Tk => if comprar = '0' and secuencia = '0' then y <= Tk;
							elsif comprar ='0' and secuencia = '1' then y <= tl;
							else y <= Tm; end if;
			when Tl => y <= Tk;
			when Tm => if comprar = '1' then y <= Tm; else y <= Tn; end if;
			when Tn => if moneda = '0' and stopM = '0' then y <= Tn; else y <= Tx; end if;
			when Tx => if moneda = '1' then y <= Tx; else y <= Tp; end if;
			when Tp => if stopM = '0' then y <= Tn; else y <= Tq; end if;
			when Tq => y <= Tr;
			when Tr => if retiratarjeta = '0' then y <= Tr; else y <= Ts; end if;
			when Ts => if retiratarjeta = '1' then y <= Ts; else y <= Tt; end if;
			when Tt => if pasar = '0' then  y <= Tt; else y <= Tu; end if;
			when Tu => if pasar = '1' then y <= Tu; else y <= Tc; end if;
		end case;
	end if;
end process;
process(y)
begin
ledinicio<='0';pasaM<='0';ET<='0';ledMoneda<='0';save <= '0';enM<= '0';enN<= '0';
	case y is
		when Ta => 
		when Tb => resetNN <= '1'; resetRG <= '1';
		when Tc => ledinicio <= '1';if lectura ='1' then enRG <= '1'; else enRG <= '0'; end if; 
		when Td => 
		when Te => enN <= '1'; ldN <= '1'; 
		when Tf => save <= '1';
		when Th =>resetNN <= '0'; resetRG <= '0';
		when Ti => pasaM <= '1';
		when Tj => pasaM <= '1';
		when Tk => enDD <= '1';
		when Tl => resetD <= '1';
		when Tm => enDD <= '1';resetRG<= '1';resetNN<= '1'; if comprar = '0' then resetD <= '1'; else resetD <= '0'; end if;
		when tn => ledMoneda <= '1';
		when Tx => ledMoneda <= '1'; if moneda = '0' then enM <= '1'; else enM <= '0'; end if;
		when Tp => ledMoneda <= '1'; if stopM = '1' then resetNN <= '1'; end if;
		when Tq => save <= '1';resetRG<= '0';resetNN<= '0';	
		when Tr => ET <= '1';
		when Ts => ET <= '1';
		when Tt => pasaM <= '1';
		when Tu => pasaM <= '1';
		when Tz => enN <= '1';
	end case;
end process;
end solucion;
		