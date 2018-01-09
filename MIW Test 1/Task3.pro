jest_czlowiekiem(X) :- je(X, mieso) ; je(X, ser) ; je(X, owoc).
jest_babcia(X, Y) :- jest_wnuczkiem(Y) ; jest_wnuczka(Y).
rodzenstwo(X, Y) :- mama(Z, X), tata(Q, X), mama(Z, Y), tata(Q, Y).
jest_figura(X) :- jest_trojkatem(X) ; jest_kwadratem(X) ; jest_okregiem(X). 