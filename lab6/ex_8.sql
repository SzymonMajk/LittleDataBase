update zawartosc sztuk = sztuk + 1 where idpudelka in ('mojj','moje','mooj','mmmm');

update czekoladki set czekolada = 'brak' where czekolada is null;
update czekoladki set orzechy  = 'brak' where orzechy is null;
update czekoladki set nadzienie = 'brak' where nadzienie is null;

update czekoladki set orzechy = null where orzechy = 'brak';
update czekoladki set nadzienie = null  where nadzienie = 'brak';
