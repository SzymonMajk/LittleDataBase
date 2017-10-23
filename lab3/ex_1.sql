select (idzamowienia,datarealizacji) from zamowienia where datarealizacji between '12.11.2013' and '20.11.2013';
select (idzamowienia,datarealizacji) from zamowienia where 
 datarealizacji between '01.12.2013' and '06.12.2013' or datarealizacji between '15.12.2013' and '20.12.2013';
select (idzamowienia,datarealizacji) from zamowienia where datarealizacji between '01.12.2013' and '31.12.2013';
select (idzamowienia,datarealizacji) from zamowienia where 
 date_part('month',datarealizacji) = 11 and date_part('year',datarealizacji) = 2013;
select (idzamowienia,datarealizacji) from zamowienia where
 date_part('year',datarealizacji) = 2013 and date_part('month',datarealizacji) in (11,12);
select (idzamowienia,datarealizacji) from zamowienia where date_part('day',datarealizacji) in (17,18,19);
select (idzamowienia,datarealizacji) from zamowienia where date_part('week',datarealizacji) in (46,47);
