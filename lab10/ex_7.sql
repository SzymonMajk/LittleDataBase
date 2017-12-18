select (
	select count(idpudelka) as lp 
	from pudelka p2 
	where p1.idpudelka >= p2.idpudelka ),idpudelka 
from pudelka p1 order by idpudelka;
