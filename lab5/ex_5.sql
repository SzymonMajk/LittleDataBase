select date_part('quarter',datarealizacji),count(idzamowienia)
from zamowienia
group by date_part('quarter',datarealizacji);

select date_part('month',datarealizacji),count(idzamowienia)
from zamowienia
group by date_part('month',datarealizacji)
order by 1;

select date_part('week',datarealizacji),count(idzamowienia)
from zamowienia 
group by date_part('week',datarealizacji);

select miejscowosc, count(idzamowienia)
from zamowienia natural join klienci
group by miejscowosc;
