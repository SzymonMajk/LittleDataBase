select idklienta from klienci except select idklienta from zamowienia;
select idpudelka from pudelka except select idpudelka from artykuly;
select nazwa from klienci where nazwa similar to '_+[rR]z_+' union
select nazwa from czekoladki where nazwa similar to '_+[rR]z_+' union
select nazwa from pudelka where nazwa similar to '_+[rR]z_+';
select idczekoladki from czekoladki except select idczekoladki from zawartosc;
