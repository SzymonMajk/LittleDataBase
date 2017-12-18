select (dataRealizacji, idzamowienia)
from zamowienia
where idklienta in (select idklienta from klienci where nazwa like '%Antoni%');

select (dataRealizacji, idzamowienia)
from zamowienia
where idklienta in (select idklienta from klienci where ulica like '%/%');

select (dataRealizacji, idzamowienia)
from zamowienia
where idklienta in (select idklienta from klienci 
where miejscowosc = 'Kraków') and
 date_part('year',dataRealizacji) = 2013 and
 date_part('month',dataRealizacji) = 10;
