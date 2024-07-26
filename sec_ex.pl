older(sasha, lesha, fact).
older(misha, sasha, fact).
older(misha, dasha, fact).
older(masha, misha, fact).

older(X, Y, rule) :- older(X, Z, fact), older(Z, Y, _).
