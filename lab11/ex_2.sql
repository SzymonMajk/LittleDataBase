create or replace function zysk(nr char)
returns
--todo	numeric
as
$$
declare
	cenaPudelka numeric(7,2);
	kosztWytworzenia numeric(7,2);
	result numeric(7,2);
begin
	select (cena) into cenaPudelka 
		from pudelka where idpudelka = nr;
	select sum(c.koszt*z.sztuk) into kosztWytworzenia 
		from czekoladki c natural join zawartosc z
		where idpudelka = nr;
	result := cenaPudelka - kosztWytworzenia -0.90;
	return result;
end;
$$
language plpgsql;
