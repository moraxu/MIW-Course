(defrule R0
?x <- (initial-fact)
=>
(retract ?x)
(printout t crlf)
(printout t "IDENTYFIKOWANIE KRYTYCZNYCH PUNKTOW KONTROLI" crlf)
(printout t "Prosze odpowiadac na pytania: t (tak) lub n (nie)." crlf)
(printout t crlf)
(printout t "Czy istnieja srodki zapobiegawcze?" crlf)
(assert (srodki-zapobiegawcze (read))))

(defrule R1
?x <- (srodki-zapobiegawcze n)
=>
(retract ?x)
(printout t crlf)
(printout t "Czy kontrola na tym etapie jest konieczna do zapewnienia bezpieczenstwa produktu?" crlf)
(assert (kontrola-do-bezpieczenstwa-produktu (read))))

(defrule R2
?x <- (kontrola-do-bezpieczenstwa-produktu t)
=>
(retract ?x)
(printout t crlf)
(printout t "Nalezy zmodyfikowac dany etap, proces lub produkt." crlf)
(reset))

(defrule R3
?x <- (kontrola-do-bezpieczenstwa-produktu n)
=>
(retract ?x)
(printout t crlf)
(printout t "STOP, brak krytycznego punktu kontroli" crlf)
(assert (koniec)))

(defrule R4
?x <- (srodki-zapobiegawcze t)
=>
(retract ?x)
(printout t crlf)
(printout t "Czy etap ten ma wyealiminowac zagrozenie lub ograniczyc jego wystepowanie do akceptowalnego poziomu?" crlf)
(assert (eliminacja-zagrozenia (read))))

(defrule R5
?x <- (eliminacja-zagrozenia t)
=>
(retract ?x)
(printout t crlf)
(printout t "Krytyczny punkt kontroli" crlf)
(assert (koniec))))

(defrule R6
?x <- (eliminacja-zagrozenia n)
=>
(retract ?x)
(printout t crlf)
(printout t "Czy na tym etapie moze dojsc do zanieczyszczenia lub do zwiekszenia mozliwosci wystapienia zagrozenia do nieakceptowalnego poziomu lub czy doszlo do ego juz na wczesniejszych etapach i nie ma wczesniejszych krytycznych punktow kontroli lub operacyjnych programow warunkow wstepnych?" crlf)
(assert (mozliwosc-zanieczyszczenia (read))))

(defrule R7
?x <- (mozliwosc-zanieczyszczenia n)
=>
(retract ?x)
(printout t crlf)
(printout t "STOP, brak krytycznego punktu kontroli" crlf)
(assert (koniec)))

(defrule R8
?x <- (mozliwosc-zanieczyszczenia t)
=>
(retract ?x)
(printout t crlf)
(printout t "Czy jeden dalszy etap wyeliminuje zagrozenie lub ograniczy jego wystepowania do akceptowalnego poziomu?" crlf)
(assert (ackeptowalny-poziom-zagrozenia (read))))

(defrule R9
?x <- (ackeptowalny-poziom-zagrozenia n)
=>
(retract ?x)
(printout t crlf)
(printout t "Operacyjny program warunkow wstepnych lub krytyczny punkt kontroli" crlf)
(assert (koniec)))

(defrule R10
?x <- (ackeptowalny-poziom-zagrozenia t)
=>
(retract ?x)
(printout t crlf)
(printout t "STOP, brak krytycznego punktu kontroli." crlf)
(assert (koniec)))

(defrule koniec-ekspertyzy
?x <- (koniec)
=>
(retract ?x)
(printout t crlf)
(printout t "EKSPERTYZA ZAKONCZONA." crlf)
(printout t "Czy przeprowadzic nastepna?" crlf)
(assert (nastepna (read))))

(defrule nastepna-ekspertyza
?x <- (nastepna t)
=>
(retract ?x)
(reset))