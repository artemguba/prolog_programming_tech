/* родственные отношения */
parent(adam, kain).
parent(adam, avel).
parent(adam, sif).
parent(kain, enoh).
parent(enoh, irad).
parent(irad, mehiael).
parent(mehiael, mafisal).
parent(mafisal, lamexa).
parent(lameha, iaval).
parent(lameha, iuval).
parent(lameha, tuvalkoin).
parent(lameha, naely).
parent(sif, enos).
parent(enos, kainan).
parent(kainan, maleleila).
parent(maleleila, iared).
parent(iared, enoh1).
parent(enoh1, mafusal).
parent(mafusal, lameh1).
parent(lameh1, noy).
parent(noy, sile).
parent(noy, hale).
parent(noy, iafet).
parent(sile, elam).
parent(sile, assyr).
parent(sile, arfaksad).
parent(sile, lud).
parent(sile, aram).
parent(sile, kainan1).
parent(hale, hush).
parent(hale, micarim).
parent(hale, hanaan).
parent(arfaksad, kainan2).
parent(kainan, sala).
parent(sala, evera).
parent(evera, ioktan).
parent(evera, falek).
parent(ioktan, almodad).
parent(ioktan, shalef).
parent(ioktan, hacarmavef).
parent(ioktan, ieraha).
parent(ioktan, gadoram).
parent(ioktan, uzala).
parent(ioktan, diklu).
parent(ioktan, oval).
parent(ioktan, avimail).
parent(ioktan, shevu).
parent(ioktan, ofir).
parent(ioktan, havil).
parent(ioktan, iovav).
parent(ioktan, ioktan1).
parent(aram, uc).
parent(aram, hul).
parent(aram, gefer).
parent(aram, mash).
parent(hush, savteh).
parent(hush, raam).
parent(hush, savt).
parent(hush, havil).
parent(hush, sev).
parent(hush, nemrod).
parent(raam, dedan).
parent(raam, sheva).
parent(hale, fut).
parent(micarim, hudim).
parent(micarim, kasluhim).
parent(micarim, patrusim).
parent(micarim, anamim).
parent(micarim, legavim).
parent(micarim, naftuhim).
parent(hanaan, himafey).
parent(hanaan, arvadey).
parent(hanaan, cemarey).
parent(hanaan, sidon).
parent(hanaan, het).
parent(hanaan, ievusey).
parent(hanaan, amorrey).
parent(hanaan, gergesey).
parent(hanaan, evsey).
parent(hanaan, arkey).
parent(hanaan, siney).
parent(iafet, mesheh).
parent(iafet, fuval).
parent(iafet, gumer).
parent(iafet, firas).
parent(iafet, magog).
parent(iafet, maday).
parent(iafet, iavan).
parent(iafet, elisa).
parent(gumer, askenad).
parent(gumer, rifat).
parent(gumer, fogarma).
parent(iavan, elisa1).
parent(iavan, farsis).
parent(iavan, kittim).
parent(iavan, dodadim).

child(X, Y) :- parent(Y, X).
