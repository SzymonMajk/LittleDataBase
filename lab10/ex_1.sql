select distinct nazwa
from pudelka natural join zawartosc
where idczekoladki
 in (select idczekoladki from czekoladki order by koszt limit 3);

select nazwa
from czekoladki
where koszt = (select max(koszt) from czekoladki);

select p.nazwa, idpudelka
from (select idczekoladki from czekoladki order by koszt limit 3)
	as ulubioneczekoladki
natural join zawartosc
natural join pudelka p;

select nazwa, koszt, (select MAX(koszt) from czekoladki) as MAX from czekoladki;
