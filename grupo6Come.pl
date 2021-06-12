plato(cereales,110).
plato(berenjenas,155).
plato(leche,90).
plato(arroz,250).
plato(yuca,300).
plato(queso_frito,200).
plato(filete_res,185).
plato(pollo,150).
plato(quesillo,500).

come(juan,[arroz,pollo,quesillo]).
come(maria,[yuca,queso_frito]).
come(pedro,[cereales,leche]).
come(ana,[arroz,filete_res,berenjenas]).

pertenece(X, [X|_]).
pertenece(X, [_|Cola]) :-pertenece(X, Cola).

% 2.1 Escriba un predicado come_arroz/1 que le diga quienes comen arroz .(10%)
come_arroz(Person) :- come(Person,Eats), pertenece(arroz, [arroz|Eats]).

% 2.2 Escriba un predicado precios/0 que pida el nombre de una persona e 
    % imprima cada plato que consume una persona conjuntamente con su precio. (20%)
myPlates([]).
myPlates([Head|Tail]):-write(Head),plato(Head,Price),write(" "),write(Price),nl,myPlates(Tail).
precios():-write("Persona: "), read(Person), come(Person,Eats), myPlates(Eats).
