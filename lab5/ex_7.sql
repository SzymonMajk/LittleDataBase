--select p.nazwa, (p.cena - sum(c.koszt*z.sztuk)) as zyskzjednejsztuki
--from czekoladki c join zawartosc z using(idczekoladki) join pudelka p using(idpudelka)
--where sztuk > 0
--group by p.nazwa,p.cena; 

select p.nazwa, (p.cena - sum(c.koszt*z.sztuk)) as zyzkzesprzedazyzamowionych
from czekoladki c join zawartosc z using(idczekoladki) join pudelka p using(idpudelka) join 
artykuly a using(idpudelka) join zawartosc z using(idzamowienia)
group by p.nazwa,p.cena,idzamowienia ...
