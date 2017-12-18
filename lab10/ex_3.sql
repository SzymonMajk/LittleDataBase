--select (nazwa, ulica, miejscowosc)
--from klienci
--where idklienta in (select idklienta from zamowienia
--	where date_part('year',dataRealizacji) = 2013 and
--	date_part('month',dataRealizacji) = 11 and
--	date_part('day',dataRealizacji) = 12);

--cd
