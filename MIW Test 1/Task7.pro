matka(malgorzata, tomek).
matka(barbara, jan).
matka(eliza, mariola).
matka(eliza, gabriela).

ojciec(patryk, tomek).
ojciec(michal, jacek).
ojciec(jozef, michal).
ojciec(grzegorz, marcin).
ojciec(patryk, gabriela).
ojciec(bog, _) :- mezczyzna(bog).

/*dla czytelnosci kodu postanowilem uzywac relacji mezczyzna i kobieta zamiast plec(s,s) :-) */

kobieta(malgorzata).
kobieta(barbara).
kobieta(eliza).
kobieta(mariola).
kobieta(gabriela).

mezczyzna(bog).
mezczyzna(tomek).
mezczyzna(jan).
mezczyzna(patryk).
mezczyzna(michal).
mezczyzna(jacek).
mezczyzna(jozef).
mezczyzna(grzegorz).
mezczyzna(marcin).

rodzic(Z,Y) :- ojciec(Z,Y).
rodzic(Z,Y) :- matka(Z,Y).

relacja(X,Y) :- przodek(A,X), przodek(A,Y).

syn(X,Y) :- mezczyzna(X), rodzic(Y,X).
corka(X,Y) :- kobieta(X), rodzic(Y,X).
dziadek(X,Y) :- mezczyzna(X), rodzic(X,Z),rodzic(Z,Y).
ciotka(X,Y) :- kobieta(X),siostra(X,M),matka(M,Y).
ciotka(X,Y) :- kobieta(X),siostra(X,O),ojciec(O,Y).
siostra(X,Y) :- kobieta(X),rodzic(R,X),rodzic(R,Y), X \= Y.
wujek(X,Y) :- brat(X,R),rodzic(R,Y).
kuzyn(X,Y) :- wujek(W,X),ojciec(W,Y).
przodek(X,Y) :- rodzic(X,Y).
przodek(X,Y) :- rodzic(X,Z),przodek(Z,Y).
brat(X,Y) :- mezczyzna(X),rodzic(Z,X),rodzic(Z,Y), X \= Y.

