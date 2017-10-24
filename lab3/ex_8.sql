\a
\o 'wynik.txt'
select (idmeczu,
gospodarze[1] + gospodarze[2] + gospodarze[3] +
coalesce(gospodarze[4],0) + coalesce(gospodarze[5],0),
goscie[1] + goscie[2] + goscie[3] + 
coalesce(goscie[4],0) + coalesce(goscie[5],0)) from siatkowka.statystyki
where gospodarze[1] + gospodarze[2] + gospodarze[3] +
coalesce(gospodarze[4],0) + coalesce(gospodarze[5],0) > 100;
\o
\a


