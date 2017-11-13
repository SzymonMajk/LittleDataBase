delete from klienci where nazwa like 'Matusiak%';
delete from klienci where idklienta > 91;
delete from czekoladki where (koszt >= 0.45 or masa >= 36) or masa = 0;
