select c.nazwa, c.czekolada, c.orzechy, c.nadzienie, c.koszt, count(z.idpudelka)
from czekoladki c natural join zawartosc z
group by c.nazwa, c.czekolada, c.orzechy, c.nadzienie, c.koszt
order by 6 desc limit 1; 

select p.nazwa, count(z.idczekoladki)
from pudelka p natural join zawartosc z
group by p.nazwa
order by 2 desc limit 1;

select c.nazwa, c.czekolada, c.orzechy, c.nadzienie, c.koszt, count(z.idpudelka)
from czekoladki c natural join zawartosc z
group by c.nazwa, c.czekolada, c.orzechy, c.nadzienie, c.koszt
order by 6 limit 1;

select p.nazwa, count(idzamowienia)
from zamowienia z natural join artykuly a join pudelka p using(idpudelka)
group by p.nazwa
order by 2 desc limit 1;
