%1. Dado el siguiente conjunto de hechos, desarrolle una regla regla/0, que
%devuelva la cantidad de monedas representadas en los hechos monedas,
%solo hasta el tercer hecho (25%)

monedas([x]).
monedas([x,x]).
monedas([x,x,x,x]).
monedas([x,x,x,x,x]).
monedas([x,x,x]).
monedas([]).

verificar(4).

contar([],0).
contar([_X|C],N):-contar(C,Cant), N is Cant + 1.

regla():- monedas(Lista),contar(Lista,Cant),write(Cant),nl,verificar(Cant),!,fail.

%2. Dado el siguiente programa en Prolog, y habiendo probado los ejemplos
%que se le proponen, modifíquelo para que funcione correctamente, si usted
%cree que no lo hace. (25%)

%min(N1, N2, N1) :- N1 =< N2, !.
%min(N1, N2, N2).

%Parte modificada:
%Observe cuando hice las diferentes consultas que este programa no funciona correctamente ya
%que no verifique el N1 y N2 sean de tipo number por lo que al comparar una variable con un
%numero este daba error. Para corregir este problema lo único que hice fue verificar que 
%estos sean tipo number usando predicados meta-lógicos.

min(N1, N2, N1) :-number(N1),number(N2), N1 =< N2, !.
min(N1, N2, N2).

%Consultas a probar:

%?- min(X,5,5), write(X), fail.
%?- min(X,5,5).
%?- min(5,X,5).
%?- min(6,5,5).
%?- min(5,6,5).


