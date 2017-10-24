select (idmeczu, \
gospodarze[1] + gospodarze[2] + gospodarze[3] +
coalesce(gospodarze[4],0) + coalesce(gospodarze[5],0),
goscie[1] + goscie[2] + goscie[3] + 
coalesce(goscie[4],0) + coalesce(goscie[5],0)) from siatkowka.statystyki;

select (idmeczu, \
gospodarze[1] + gospodarze[2] + gospodarze[3] +
coalesce(gospodarze[4],0) + coalesce(gospodarze[5],0),
goscie[1] + goscie[2] + goscie[3] + 
coalesce(goscie[4],0) + coalesce(goscie[5],0)) from siatkowka.statystyki where
gospodarze[5] is not null and goscie[5] is not null 
and (gospodarze[5] > 15 or goscie[5] > 15);

select (idmeczu, 
(case when (gospodarze[1] > goscie[1]) then 1 else 0 end +
case when (gospodarze[2] > goscie[2]) then 1 else 0 end +
case when (gospodarze[3] > goscie[3]) then 1 else 0 end +
case when (gospodarze[4] > goscie[4]) then 1 else 0 end +
case when (gospodarze[5] > goscie[5]) then 1 else 0 end)
|| ':' ||
(case when (gospodarze[1] < goscie[1]) then 1 else 0 end +
case when (gospodarze[2] < goscie[2]) then 1 else 0 end +
case when (gospodarze[3] < goscie[3]) then 1 else 0 end +
case when (gospodarze[4] < goscie[4]) then 1 else 0 end +
case when (gospodarze[5] < goscie[5]) then 1 else 0 end)
) from siatkowka.statystyki;

select (idmeczu,
gospodarze[1] + gospodarze[2] + gospodarze[3] +
coalesce(gospodarze[4],0) + coalesce(gospodarze[5],0),
goscie[1] + goscie[2] + goscie[3] + 
coalesce(goscie[4],0) + coalesce(goscie[5],0)) from siatkowka.statystyki
where gospodarze[1] + gospodarze[2] + gospodarze[3] +
coalesce(gospodarze[4],0) + coalesce(gospodarze[5],0) > 100;

select (idmeczu,gospodarze[1],
gospodarze[1] + gospodarze[2] + gospodarze[3] +
coalesce(gospodarze[4],0) + coalesce(gospodarze[5],0),
goscie[1] + goscie[2] + goscie[3] + 
coalesce(goscie[4],0) + coalesce(goscie[5],0)) from siatkowka.statystyki
where sqrt(gospodarze[1] + gospodarze[2] + gospodarze[3] +
coalesce(gospodarze[4],0) + coalesce(gospodarze[5],0)) >
log(2,gospodarze[1] + gospodarze[2] + gospodarze[3] +
coalesce(gospodarze[4],0) + coalesce(gospodarze[5],0));



