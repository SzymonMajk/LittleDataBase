select (idCzekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where nazwa > 'S';
select (idCzekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where nazwa like 'S%i';
select (idCzekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where nazwa like 'S% m%';
select (idCzekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where substr(nazwa,1,1) in ('A','B','C');
select (idCzekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where nazwa similar to '_*[oO]rzech_*';
select (idCzekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where nazwa similar to 'S_*m_+';
select (idCzekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where
 nazwa similar to '_*[Mm]aliny_*' or nazwa similar to '_*[Tt]ruskawki_*';
select (idCzekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where nazwa similar to '[A-CL-RU-Z]_+';
select (idCzekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where nazwa like 'Słod%';
select (idCzekoladki,nazwa,czekolada,orzechy,nadzienie) from czekoladki where nazwa similar to '[A-Z][a-z]+';
