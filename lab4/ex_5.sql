--select (p.nazwa, p.opis, p.cena) from pudelka p natural join zawartosc z join czekoladki c on 
--	c.idczekoladki = z.idczekoladki and z.idczekoladki = 'd09';
--select (p.nazwa, p.opis, p.cena, c.nazwa) from pudelka p natural join zawartosc  z join czekoladki c on
--	c.idczekoladki = z.idczekoladki and c.nazwa like 'S%';
--select (p.nazwa, p.opis, p.cena, c.idczekoladki, z.sztuk) from pudelka p natural join zawartosc z join czekoladki c on
--	c.idczekoladki = z.idczekoladki and sztuk > 3;
--select (p.nazwa, p.opis, p.cena, c.nadzienie) from pudelka p natural join zawartosc join czekoladki c using(idczekoladki) where
--	nadzienie = 'truskawki';
select distinct (p.nazwa, p.opis, p.cena, c.czekolada) from pudelka p natural join zawartosc join czekoladki c using(idczekoladki) where
	czekolada <> 'gorzka';
