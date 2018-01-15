create or replace view widoczek as
select idzamowienia
from zamowienia natural join klienci;
