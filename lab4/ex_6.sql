select (c1.idczekoladki, c1.nazwa, c1.koszt) from czekoladki c1, czekoladki c2 where 
	c1.koszt > c2.koszt and c2.idczekoladki = 'd08';
with who as (
	select distinct k.nazwa as nazwaklienta, p.nazwa as nazwapudelka from
	klienci k natural join zamowienia z join artykuly a using(idzamowienia) join
	pudelka p using(idpudelka)
)
select distinct e1.nazwaklienta from who e1, who e2 where
	e1.nazwapudelka = e2.nazwapudelka and e2.nazwaklienta = 'Górka Alicja';
with who as (
	select distinct k.nazwa as nazwaklienta, p.nazwa as nazwapudelka, k.miejscowosc as miejscowosc from
	klienci k natural join zamowienia z join artykuly a using(idzamowienia) join
	pudelka p using(idpudelka)
)
select distinct e1.nazwaklienta from who e1, who e2 where
	e1.nazwapudelka = e2.nazwapudelka and e2.miejscowosc = 'Katowice';
