select (p.nazwa, p.opis, c.nazwa, c.opis) from pudelka p join zawartosc using(idpudelka) join czekoladki c using(idczekoladki);
select (p.nazwa, p.opis, c.nazwa, c.opis, p.idpudelka) from czekoladki c join zawartosc z using(idczekoladki) join pudelka p on 
	p.idpudelka = 'heav' and z.idpudelka = p.idpudelka;
select (p.nazwa, p.opis, c.nazwa, c.opis) from czekoladki c natural join zawartosc z join pudelka p on 
	z.idpudelka = p.idpudelka and p.nazwa like '%Kolekcja%';
