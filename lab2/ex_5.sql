select (idczekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where orzechy <> '';
select (idczekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where orzechy = '';
select (idczekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where orzechy <> '' or nadzienie <> '';
select (idczekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where czekolada in ('mleczna','biała') and orzechy = '';
select (idczekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where czekolada not in ('mleczna','biała') and (orzechy <> '' or nadzienie <> '');
select (idczekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where nadzienie <> '';
select (idczekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where nadzienie = '';
select (idczekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where orzechy = '' and nadzienie = '';
select (idczekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where czekolada in ('biała','mleczna') and nadzienie = '';
