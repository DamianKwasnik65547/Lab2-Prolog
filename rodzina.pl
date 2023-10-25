rodzic(zofia, marcin).
rodzic(andrzej, marcin).
rodzic(andrzej, kasia).
rodzic(marcin, ania).
rodzic(marcin, krzyœ).
rodzic(krzyœ, miko³aj).
kobieta(zofia).
kobieta(kasia).
kobieta(ania).
mê¿czyzna(andrzej).
mê¿czyzna(marcin).
mê¿czyzna(krzyœ).
mê¿czyzna(miko³aj).
potomek(Y,X):-
	rodzic(X,Y).
matka(X,Y):-
	rodzic(X,Y),
	kobieta(X).
dziadkowie(X,Z):-
	rodzic(X,Y),
	rodzic(Y,Z).
siostra(X,Y):-
	rodzic(Z,X),
	rodzic(Z,Y),
	kobieta(X).
szczesliwy(X) :- rodzic(X,_).
dwoje_dzieci(X) :- rodzic(X, Dziecko1), siostra(Dziecko1, _), rodzic(X, Dziecko2), Dziecko1 \= Dziecko2.
wnuk(X, Z) :- rodzic(Z, Y), rodzic(Y, X).
ciotka(X, Y) :- kobieta(X), siostra(X, Rodzic), rodzic(Rodzic, Y).
nastepca(X, Y) :- Y is X + 1.
