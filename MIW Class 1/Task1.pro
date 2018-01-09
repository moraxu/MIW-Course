osoba(tomasz, 55, mezczyzna, stolarz).
osoba(krzysztof, 25, mezczyzna, pilkarz).
osoba(krzysztof, 25, mezczyzna, rzeznik).
osoba(piotr, 25, mezczyzna, zlodziej).
osoba(anna, 39, kobieta, chirurg).
romans(anna, piotr).
romans(anna, krzysztof).
romans(agnieszka, piotr).
romans(agnieszka, tomasz).
zamordowany(agnieszka).
zamorodany_uderzeniem(agnieszka,kij_golfowy).
pobrudzony(tomasz,krew).
pobrudzony(agnieszka,krew).
pobrudzony(krzysztof,blotem).
pobrudzony(piotr,czekolada).
pobrudzony(anna,krew).
posiada(tomasz,sztuczna_noga).
posiada(piotr,rewolwer).
powoduje_podobne_obrazenia_jak(sztuczna_noga,kij_golfowy).
powoduje_podobne_obrazenia_jak(noga_od_stolu,kij_golfowy).
powoduje_podobne_obrazenia_jak(nozyczki,noz).
powoduje_podobne_obrazenia_jak(but_pilkarski,kij_golfowy).
prawdopodobnie_posiada(X, but_pilkarski) :- osoba(X, _, _, pilkarz).
prawdopodobnie_posiada(X, nozyczki) :- osoba(X, _, _, chirurg).
prawdopodobnie_posiada(X, Y) :- posiada(X, Y).
jest_podejrzany(X) :- prawdopodobnie_posiada(X, Y) :- powoduje_podobne_obrazenia_jak(Y,Z) :- zamordowany_uderzeniem(_, Z).
motyw(X, zazdrosc) :- osoba(X, _, mezczyzna, _) , romans(agnieszka, X).
motyw(X, zazdrosc) :- osoba(X, _, kobieta, _) , romans(agnieszka, Y) , romans(X, Y).
motyw(X, pieniadze) :- osoba(X, _, mezczyzna, zlodziej).
morderca_jest(X) :- jest_podejrzany(X) , motyw(X, _) , byl_pobrudzony(X, Y) , byl_pobrudzony(agnieszka, Y).

