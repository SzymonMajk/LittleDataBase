select (nazwa, opis, cena)
from pudelka
where idpudelka in (select idpudelka from zawartosc
	where idczekoladki = 'd09');
--cd


--od 7
--select (nazwa, opis, cena) 
--from pudelka
--where idpudelka not in (select idpudelka from czekoladki natural join zawartosc 
--	where czekolada = 'gorzka');

--select (nazwa, opis, cena)
--from pudelka
--where idpudelka not in (select idpudelka from czekoladki natural join zawartosc
--	where orzechy is not null);

--select (nazwa, opis, cena)
--from pudelka
--where exists (select idpudelka from czekoladki natural join zawartosc
--	where nadzienie is null);

