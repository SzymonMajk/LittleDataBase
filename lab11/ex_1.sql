--todo
create or replace function masaPudelka(nr char(4))
returns numeric(7,2) as
$$
declare
	wiersz record;
	suma numeric(7,2);
begin
	for wiersz in select (c.masa*z.sztuk) into suma
		from czekoladki c natural join zawartosc z
		where idpudelka = nr
	loop
		suma := suma + masa*sztuk;
	end loop;
end;
$$
language plpgsql;
