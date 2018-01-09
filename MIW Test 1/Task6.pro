matka(X,Y) :- rodzic(X,Y), kobieta(X).
ojciec(X,Y) :- rodzic(X,Y), mezczyzna(X).
syn(X,Y) :- rodzic(Y,X), mezczyzna(X).
brat(X,Y) :- rodzic(Z,X), rodzic(Z,Y), mezczyzna(X), X\==Y.
dziadek(X,Y) :- ojciec(X, Z), ojciec(Z, Y).