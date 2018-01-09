jarosz(ola).
jarosz(ewa).
jarosz(jan).
jarosz(pawel).
nie_pali(ola).
nie_pali(ewa).
nie_pali(jan).
czyta(ola).
czyta(iza).
czyta(piotr).
uprawia_sport(ola).
uprawia_sport(jan).
uprawia_sport(piotr).
uprawia_sport(pawel).
lubi(ola, X) :- jarosz(X), uprawia_sport(X).
lubi(ewa, X) :- nie_pali(X), jarosz(X).
lubi(iza, X) :- czyta(X) ; (uprawia_sport(X), nie_pali(X)).
lubi(janek, X) :- uprawia_sport(X).
lubi(piotr, X) :- (uprawia_sport(X), jarosz(X)) ; czyta(X).
lubi(pawel, X) :- jarosz(X), uprawia_sport(X), czyta(X).