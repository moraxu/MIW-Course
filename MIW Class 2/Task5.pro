madra_osoba(ola).
piekna_osoba(ala).
dobra_osoba(ala).
piekna_osoba(piotr).
silna_osoba(piotr).
dobra_osoba(adam).
madra_osoba(adam).
bogata_osoba(jan).
bogata_osoba(ula).
silna_osoba(ula).
mezczyzna(piotr).
mezczyzna(adam).
mezczyzna(jan).
kobieta(ola).
kobieta(ala).
kobieta(ula).
lubi(X, Y) :- mezczyzna(X), kobieta(Y), piekna_osoba(Y).
jest_szczesliwa_osoba(X) :- kobieta(X), lubi(X, Y), mezczyzna(Y), lubi(Y, X).
jest_szczesliwa_osoba(X) :- mezczyzna(X), lubi(X, Y), kobieta(Y), lubi(Y, X).
lubi(piotr, ula).
lubi(ula, X) :- mezczyzna(X), silna_osoba(X).
lubi(ola, X) :- bogata_osoba(X), dobra_osoba(X).
lubi(ala, X) :- piekna_osoba(X), silna_osoba(X).