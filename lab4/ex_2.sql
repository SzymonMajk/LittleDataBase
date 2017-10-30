select (datarealizacji, idzamowienia, nazwa) from zamowienia natural join klienci where nazwa like '%Antoni';
select (datarealizacji, idzamowienia, ulica) from zamowienia natural join klienci where ulica like '%/%';
select (datarealizacji, idzamowienia) from zamowienia natural join klienci 
	where miejscowosc = 'Kraków' and date_part('year',datarealizacji) = 2013 and date_part('month',datarealizacji) = 11;
