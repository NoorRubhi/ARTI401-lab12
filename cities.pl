edge('Makkah','Madinah').
edge('Makkah','Riyadh').
edge('Madinah','Makkah').
edge('Madinah','Taif').
edge('Madinah','Tabuk').
edge('Taif','Dammam').
edge('Taif','Tabuk').
edge('Tabuk','Taif').
edge('Dammam','Qatif').
edge('Dammam','Riyadh').
edge('Qatif','Madinah').
edge('Qatif','Dammam').
edge('Riyadh','Dammam').

travel(From,To,Path) :-
    path(From,To,[From],P),
    reverse(P,Path).

path(X,X,P,P).
path(X,Y,V,P) :-
    edge(X,Z),
    not(member(Z,V)),
    path(Z,Y,[Z|V],P).
