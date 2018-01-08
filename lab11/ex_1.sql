--todo
create or replace function masaPudelka(nr char(4))
returns numeric as
$$
declare
	wiersz record;
	suma numeric;
begin
	for wiersz in select (masa,sztuk) into suma
		from czekoladki natural join zawartosc
		where idpudelka = nr
	loop
		suma := suma + masa*sztuk;
	end loop;
end;
$$
language plpgsql;
