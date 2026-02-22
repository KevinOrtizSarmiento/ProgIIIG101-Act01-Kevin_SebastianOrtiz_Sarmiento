

estadounidense(west).

enemigo(corea_sur, estados_unidos).

nacion_hostil(X) :- enemigo(X, estados_unidos).

tiene(corea_sur, misil_coreano).

misil(misil_coreano).
arma(X) :- misil(X).



vende(west, X, corea_sur) :-
    misil(X),
    tiene(corea_sur, X).

    criminal(X) :-
    estadounidense(X),
    vende(X,Y,Z),
    arma(Y),
    nacion_hostil(Z).



