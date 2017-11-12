select p.nazwa, sum(z.sztuk*c.masa) as masapudelka
from pudelka p join zawartosc z using(idpudelka) join czekoladki c using(idczekoladki)
where sztuk > 0 and masa > 0
group by p.nazwa;

select p.nazwa, p.opis, p.cena, sum(z.sztuk*c.masa) as masapudelka
from pudelka p join zawartosc z using(idpudelka) join czekoladki c using(idczekoladki)
where sztuk > 0 and masa > 0
group by p.nazwa,p.opis,p.cena
order by 3 desc limit 1;

select avg(z.sztuk*c.masa) as sredniamasapudelka
from pudelka p join zawartosc z using(idpudelka) join czekoladki c using(idczekoladki);

select p.nazwa,avg(z.sztuk*c.masa) as sredniawagaczekoladki
from pudelka p join zawartosc z using(idpudelka) join czekoladki c using(idczekoladki)
group by p.nazwa;
