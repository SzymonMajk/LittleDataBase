select sum(masypudelek.summa)
from (select sum(z.sztuk*c.masa) as summa
from czekoladki c join zawartosc z using (idczekoladki) join pudelka p using(idpudelka)
group by z.sztuk,c.masa
) as masypudelek;

select  sum(koszty.sumpud) + sum(koszty.sumczek)
from (select sum(p.stan*p.cena) as sumpud, sum(c.koszt*z.sztuk) as sumczek
from czekoladki c join zawartosc z using(idczekoladki) join pudelka p using(idpudelka)
) as koszty;
