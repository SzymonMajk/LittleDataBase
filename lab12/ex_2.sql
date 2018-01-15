create or replace function zaktualizuj() returns trigger as
$$
declare
	f_cena numeric;
	kosztyWytworzenia numeric;
begin
	select into kosztyWytworzenia sum(z.sztuk*c.koszt)
	from czekoladki c natural join zawartosc z
	where idpudelka = new.idpudelka;
	select into f_cena p.cena from pudelka p
	where p.idpudelka = new.idpudelka; 

	if (f_cena < 1.05*(kosztyWytworzenia+0.9)) then
		update pudelka set cena = 1.05*(kosztyWytworzenia+0.9)
		where idpudelka = new.idpudelka;
	end if;

	return null;
end;
$$
language plpgsql;

create trigger mis after update on pudelka
for each row execute procedure zaktualizuj();

create trigger dis after update on zawartosc
for each row execute procedure zaktualizuj();

create trigger cis after update on czekoladki
for each row execute procedure zaktualizuj();
