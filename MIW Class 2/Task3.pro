jest_czlowiekiem(ala).
jest_czlowiekiem(ola).
jest_czlowiekiem(kamil).
jest_czlowiekiem(lena).
jest_czlowiekiem(marta).
jest_zwierzeciem(burek).
jest_zwierzeciem(misiek).
mieszka(ala, sloneczna).
mieszka(marta, sloneczna).
mieszka(burek, sloneczna).
mieszka(lena, ksiezycowa).
mieszka(kamil, zodiakalna).
mieszka(misiek, zodiakalna).
jest_rodzina(X, Y) :- (jest_czlowiekiem(X), jest_czlowiekiem(Y) ; jest_zwierzeciem(X), jest_zwierzeciem(Y)),
mieszka(X, Z), mieszka(Y, Z).
jest_pokrewienstwo(X, Y) :- mieszka(X, Z), mieszka(Y, Z).