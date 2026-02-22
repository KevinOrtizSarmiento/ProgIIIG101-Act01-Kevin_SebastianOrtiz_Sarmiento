

madre_de(mona, homero).
padre_de(abraham, homero).

madre_de(mona, herbert).
padre_de(abraham, herbert).



madre_de(jacqueline, marge).
padre_de(clancy, marge).

madre_de(jacqueline, patty).
padre_de(clancy, patty).

madre_de(jacqueline, selma).
padre_de(clancy, selma).



madre_de(marge, maggie).
padre_de(homero, maggie).

madre_de(marge, lisa).
padre_de(homero, lisa).

madre_de(marge, bart).
padre_de(homero, bart).



madre_de(selma, ling).



abuela_materna_de(X,Y):- madre_de(X,Z), madre_de(Z,Y).
abuela_paterna_de(X,Y):- madre_de(X,Z), padre_de(Z,Y).

abuelo_materno_de(X,Y):- padre_de(X,Z), madre_de(Z,Y).
abuelo_paterno_de(X,Y):- padre_de(X,Z), padre_de(Z,Y).


hermano_de(X,Y) :- padre_de(P,X), padre_de(P,Y), madre_de(M,X), madre_de(M,Y), X \= Y.

tio_paterno_de(X,Z) :-hermano_de(X,Y),padre_de(Y,Z).
tio_materno_de(X,Z) :-hermano_de(X,Y),madre_de(Y,Z).





































