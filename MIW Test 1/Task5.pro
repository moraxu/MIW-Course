jest_dziadkiem(X, Y) :- jest_wnukiem(Y) ; jest_wnuczka(Y).
rodzenstwo(X, Y) :- mama(Z, X), tata(Q, X), mama(Z, Y), tata(Q, Y).
bedzie_mial_spokojne_wakacje(X) :- zaliczy_przedmiot(X, miw), zda_egzamin(X, pro2).
