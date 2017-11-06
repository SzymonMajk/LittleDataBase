select count(*) 
from czekoladki;

select count(*) 
from czekoladki 
where nadzienie is not null and nadzienie <> '';

select count(idczekoladki)
from czekoladki
where nadzienie is not null and nadzienie <> '';

select nazwa, opis, cena, stan, sum(sztuk) as sumaSztuk
from zawartosc natural join pudelka
where sztuk > 0
group by nazwa, opis, cena, stan
order by 5 desc limit 1;

select nazwa, sum(sztuk) as sumaczekoladek
from zawartosc natural join pudelka
where sztuk > 0
group by nazwa;

select p.nazwa, sum(z.sztuk) as sumaczekoladekbezorzechow
from pudelka p join zawartosc z using(idpudelka) join czekoladki c using(idczekoladki) 
where z.sztuk > 0 and (orzechy is null or orzechy = '')
group by p.nazwa;

select p.nazwa, sum(z.sztuk) as sumaczekoladekwmlecznej
from pudelka p join zawartosc z using(idpudelka) join czekoladki c using(idczekoladki)
where z.sztuk > 0 and czekolada = 'mleczna'
group by p.nazwa;
