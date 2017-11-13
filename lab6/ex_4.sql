update klienci set nazwa = 'Nowak Iza' where idklienta = 93;

update czekoladki set koszt = (select 0.9*koszt from czekoladki where idczekoladki = 'W98');
update czekoladki set koszt = (select 0.9*koszt from czekoladki where idczekoladki = 'X91');
update czekoladki set koszt = (select 0.9*koszt from czekoladki where idczekoladki = 'M98');

update czekoladki set koszt = (select koszt from czekoladki where idczekoladki = 'W98')
where nazwa = 'Nieznana Nieznajoma';

update klienci set miejscowosc = 'Piotrograd' where miejscowosc = 'Leningrad';

update czekoladki set koszt = koszt + 0.15 where idczekoladki similar to '_[0-9][0-9]';
