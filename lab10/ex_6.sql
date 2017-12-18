--with p as (select idpudelka, sum(sztuk) as ilosc
--	from zawartosc group by idpudelka)
--select nazwa, p.ilosc
--from pudelka join p using(idpudelka)
--where p.ilosc = (select max(ilosc) from p);

--cd
