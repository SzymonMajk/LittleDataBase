select p.idpudelka, p.nazwa, (p.cena - sum(c.koszt*z.sztuk)) as zyskzjednego
from czekoladki c join zawartosc z using(idczekoladki) join pudelka p using(idpudelka)
where sztuk > 0
group by p.idpudelka; 

select sum(gotowezamowienia.zysk)
from (
  select dlapudelka.idpudelka, sum(a.sztuk*(dlapudelka.cena - dlapudelka.koszt)) as zysk
  from (
    select p.idpudelka, p.cena as cena, sum(z.sztuk*c.koszt) as koszt
    from czekoladki c join zawartosc z using(idczekoladki) join pudelka p using(idpudelka)
    group by p.idpudelka
    ) dlapudelka join artykuly a using(idpudelka)
  group by dlapudelka.idpudelka
  ) gotowezamowienia;

select sum(wszystko.zysk)
from (
  select idpudelka, sum(stan*(cena - koszt)) as zysk
  from (
    select p.idpudelka, p.stan as stan, p.cena as cena, sum(z.sztuk*c.koszt) as koszt
    from pudelka p natural join zawartosc z join czekoladki c using(idczekoladki)
    group by p.idpudelka
    ) zyskpudelko 
  group by zyskpudelko.idpudelka
  ) wszystko;
