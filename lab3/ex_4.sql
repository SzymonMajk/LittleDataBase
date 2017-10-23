select (idCzekoladki,nazwa,masa,koszt) from czekoladki where masa between 0.15 and 0.24 union 
select (idCzekoladki,nazwa,masa,koszt) from czekoladki where koszt between 0.15 and 0.24;
select (idCzekoladki,nazwa,masa,koszt) from czekoladki where masa between 0.25 and 0.35 except
select (idCzekoladki,nazwa,masa,koszt) from czekoladki where koszt between 0.25 and 0.35;
select (idCzekoladki,nazwa,masa,koszt) from czekoladki where masa between 0.15 and 0.24 and koszt between 0.15 and 0.24 union
select (idCzekoladki,nazwa,masa,koszt) from czekoladki where masa between 0.25 and 0.35 and koszt between 0.25 and 0.35;
select (idCzekoladki,nazwa,masa,koszt) from czekoladki where masa between 0.15 and 0.24 union
select (idCzekoladki,nazwa,masa,koszt) from czekoladki where koszt between 0.25 and 0.35;
select (idCzekoladki,nazwa,masa,koszt) from czekoladki where masa between 0.25 and 0.35 except
select (idCzekoladki,nazwa,masa,koszt) from czekoladki where koszt between 0.25 and 0.24 except
select (idCzekoladki,nazwa,masa,koszt) from czekoladki where koszt between 0.29 and 0.35;
