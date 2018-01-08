create or replace function zamowieniaKlienta(nr integer)
returns table (zamoo integer, dataa date, pudelk char(4)) as
$$
begin
	return query
	select z.idzamowienia,z.datarealizacji,a.idpudelka
	from artykuly a join zamowienia z on(a.idzamowienia = z.idzamowienia)
	where idklienta = nr;
end
$$
language plpgsql
