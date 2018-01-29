(defrule R0
?x <- (initial-fact)
=>
(retract ?x)
(printout t crlf)
(printout t "ZARZADZANIE GOSPODARSTWEM ROLNICZYM" crlf)
(printout t "Prosze odpowiadac na pytania: t (tak) lub n (nie)." crlf)
(printout t crlf)
(printout t "Czy uszkodzone sa nadziemne czesci roslin?" crlf)
(assert (uszkodzone-nadziemne-czesci (read))))

(defrule R1
?x <- (uszkodzone-nadziemne-czesci n)
=>
(retract ?x)
(printout t crlf)
(printout t "Czy wystepuja narosla na szyjkach korzeniowych?" crlf)
(assert (narosla-na-szyjkach-korzeniowych (read))))

(defrule R2
?x <- (narosla-na-szyjkach-korzeniowych t)
=>
(retract ?x)
(printout t crlf)
(printout t "Chowacz galasowek" crlf)
(assert (koniec)))

(defrule R3
?x <- (narosla-na-szyjkach-korzeniowych n)
=>
(retract ?x)
(printout t crlf)
(printout t "Czy wystepuja brazowe przebarwienia na szyjkach korzeniowych?" crlf)
(assert (brazowe-przebarwienia (read))))

(defrule R4
?x <- (brazowe-przebarwienia t)
=>
(retract ?x)
(printout t crlf)
(printout t "Smietka kapusciana" crlf)
(assert (koniec)))

(defrule R5
?x <- (brazowe-przebarwienia n)
=>
(retract ?x)
(printout t crlf)
(printout t "Czy wystepuja chodniki w korzeniach?" crlf)
(assert (chodniki-w-korzeniach (read))))

(defrule R6
?x <- (chodniki-w-korzeniach n)
=>
(retract ?x)
(printout t crlf)
(printout t "Nicienie" crlf)
(assert (koniec)))

(defrule R7
?x <- (chodniki-w-korzeniach t)
=>
(retract ?x)
(printout t crlf)
(printout t "Czy wystepuja uszkodzenia na powierzchni korzeni?" crlf)
(assert (uszkodzenia-na-powierzchni-korzeni (read))))

(defrule R8
?x <- (uszkodzenia-na-powierzchni-korzeni t)
=>
(retract ?x)
(printout t crlf)
(printout t "Drutowce." crlf)
(assert (koniec)))

(defrule R9
?x <- (uszkodzenia-na-powierzchni-korzeni n)
=>
(retract ?x)
(printout t crlf)
(printout t "Drazyny." crlf)
(assert (koniec)))

(defrule R10
?x <- (uszkodzone-nadziemne-czesci t)
=>
(retract ?x)
(printout t crlf)
(printout t "Czy silnie uszkodzone sa liscie lub lodygi" crlf)
(assert (silnie-uszkodzone-liscie-lub-lodygi (read))))

(defrule R11
?x <- (silnie-uszkodzone-liscie-lub-lodygi n)
=>
(retract ?x)
(printout t crlf)
(printout t "Czy uszkodzone sa paki kwiatowe albo kwiaty?" crlf)
(assert (uszkodzone-paki-kwiatowe-lub-kwiaty (read))))

(defrule R12
?x <- (uszkodzone-paki-kwiatowe-lub-kwiaty t)
=>
(retract ?x)
(printout t crlf)
(printout t "Slodyszek rzepakowy" crlf)
(assert (koniec)))

(defrule R13
?x <- (uszkodzone-paki-kwiatowe-lub-kwiaty n)
=>
(retract ?x)
(printout t crlf)
(printout t "Czy zaatkowane luszczyny pekaja" crlf)
(assert (zaatakowane-luszczyny-pekaja (read))))

(defrule R14
?x <- (zaatakowane-luszczyny-pekaja n)
=>
(retract ?x)
(printout t crlf)
(printout t "Chowacz podobnik" crlf)
(assert (koniec)))

(defrule R15
?x <- (zaatakowane-luszczyny-pekaja t)
=>
(retract ?x)
(printout t crlf)
(printout t "Pryszczarek kapustnik" crlf)
(assert (koniec)))

(defrule R16
?x <- (silnie-uszkodzone-liscie-lub-lodygi t)
=>
(retract ?x)
(printout t crlf)
(printout t "Czy blaszki lisci sa silnie ogryzione?" crlf)
(assert (blaszki-lisci-silnie-ogryzione (read))))

(defrule R17
?x <- (blaszki-lisci-silnie-ogryzione n)
=>
(retract ?x)
(printout t crlf)
(printout t "Czy na lisciach wystepuja biale plamy i chodniki pod skorka?" crlf)
(assert (biale-plamy-i-chodniki-pod-skorka (read))))

(defrule R18
?x <- (biale-plamy-i-chodniki-pod-skorka t)
=>
(retract ?x)
(printout t crlf)
(printout t "Miniarka kapusciana" crlf)
(assert (koniec)))

(defrule R19
?x <- (biale-plamy-i-chodniki-pod-skorka n)
=>
(retract ?x)
(printout t crlf)
(printout t "Czy wystepuja skrecone, pozolkle i zaschniete liscie?" crlf)
(assert (skrecone-pozolkle-zaschniete-liscie (read))))

(defrule R20
?x <- (skrecone-pozolkle-zaschniete-liscie t)
=>
(retract ?x)
(printout t crlf)
(printout t "Mszyca kapusciana" crlf)
(assert (koniec)))

(defrule R21
?x <- (skrecone-pozolkle-zaschniete-liscie n)
=>
(retract ?x)
(printout t crlf)
(printout t "Czy lodyga ulega deformacji?" crlf)
(assert (lodyga-ulega-deformacji (read))))

(defrule R22
?x <- (lodyga-ulega-deformacji n)
=>
(retract ?x)
(printout t crlf)
(printout t "Chowacz czterozebny" crlf)
(assert (koniec)))

(defrule R23
?x <- (lodyga-ulega-deformacji t)
=>
(retract ?x)
(printout t crlf)
(printout t "Czy widoczne sa zgrubienia i skrzywienia pedow w ksztalcie litery S?" crlf)
(assert (zgrubienia-i-skrzywienia-pedow (read))))

(defrule R24
?x <- (zgrubienia-i-skrzywienia-pedow n)
=>
(retract ?x)
(printout t crlf)
(printout t "Chowacz rzepiczak" crlf)
(assert (koniec)))

(defrule R25
?x <- (zgrubienia-i-skrzywienia-pedow t)
=>
(retract ?x)
(printout t crlf)
(printout t "Chowacz brukwiaczek" crlf)
(assert (koniec)))

(defrule R26
?x <- (blaszki-lisci-silnie-ogryzione t)
=>
(retract ?x)
(printout t crlf)
(printout t "Chowacz rzepiniak" crlf)
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