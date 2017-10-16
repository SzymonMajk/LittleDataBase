select (nazwa,masa) from czekoladki where masa > 20;
select (nazwa, masa, koszt) from czekoladki where masa > 20 and koszt > 0.25;
select (nazwa, masa, koszt*100) from czekoladki where masa > 20 and koszt > 0.25;
select (nazwa, czekolada, nadzienie, orzechy) from czekoladki where ( czekolada = 'mleczna' and nadzienie = 'maliny' ) or (czekolada = 'mleczna' and nadzienie = 'truskawki') or (orzechy = 'laskowe' and not czekolada = 'gorzka');
select (nazwa, koszt) from czekoladki where koszt > 0.25;
select (nazwa,czekolada) from czekoladki where czekolada = 'biała' or czekolada = 'mleczna';
