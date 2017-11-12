select (select count(*) from pudelka p2 where p1.idpudelka >= p2.idpudelka)
	as numer, p1.idpudelka
from pudelka p1
order by 2;
