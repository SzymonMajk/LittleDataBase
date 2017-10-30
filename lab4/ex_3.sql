select (nazwa, ulica, miejscowosc, datarealizacji) from klienci natural join zamowienia
	where datarealizacji > current_date - 5 * interval '12 months';
select (k.nazwa, ulica, miejscowosc, p.nazwa) from klienci k natural join zamowienia natural join artykuly 
	join pudelka p using(idpudelka) where p.nazwa in ('Kremowa fantazja','Kolekcja jesienna');
select (nazwa, ulica, miejscowosc,idzamowienia) from klienci natural join zamowienia where idzamowienia is not null;
select (nazwa, ulica, miejscowosc, idzamowienia) from klienci natural right join zamowienia where idzamowienia is null;
select (nazwa, ulica, miejscowosc, datarealizacji) from klienci natural join zamowienia 
	where date_part('year',datarealizacji) = 2013 and date_part('month',datarealizacji) = 11;
select distinct (k.nazwa, ulica, miejscowosc, sztuk) from klienci k natural join zamowienia natural join artykuly join pudelka p on 
	p.nazwa in('Kolekcja jesienna','Kremowa fantazja') where sztuk > 1;
select (nazwa,ulica,miejscowosc,nadzienie) from klienci natural join zamowienia natural join artykuly join zawartosc
	using (idpudelka) natural join czekoladki where nadzienie = 'migdały';
