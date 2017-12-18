--select (idczekoladki, nazwa)
--from czekoladki
--where koszt > (select koszt from czekoladki where idczekoladki = 'd08');

--cd
select (nazwa)
from klienci
where idklienta in (select idklienta from zamowienia where )
