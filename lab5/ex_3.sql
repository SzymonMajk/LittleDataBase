select date_part('day',datarealizacji),count(idzamowienia)
from zamowienia
group by date_part('day',datarealizacji);

select count(idzamowienia)
from zamowienia;

select sum(cena)
from zamowienia join artykuly using(idzamowienia) join pudelka using(idpudelka);

select k.nazwa, count(z.idzamowienia), sum(p.cena)
from klienci k join zamowienia z using(idklienta) join artykuly a 
	using(idzamowienia) join pudelka p using(idpudelka)
group by k.nazwa
