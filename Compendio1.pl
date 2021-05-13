%Compendio #1 Grupo 6

progenitor(antonio,carlos).
progenitor(antonio,eva).
progenitor(carlos,fernando).
progenitor(carlos,silvia).
progenitor(eva,emilio).

hermano(X,Y) :- progenitor(Z,X), progenitor(Z,Y), X\=Y.

% Ejercicio 1.1

tio(Tio,Sobrino):- progenitor(Padre,Sobrino),hermano(Tio,Padre).

% Ejercicio 1.2
primo(X,Y):-progenitor(PadreX,X),progenitor(PadreY,Y),hermano(PadreX,PadreY).

% Ejercicio 1.3
% Si 2 personas tienen un hijo en comun es considerado una pareja.
pareja(X,Y):- progenitor(X,Z), progenitor(Y,Z).

% Ejercicio 1.4
% Usando la regla creada anteriormente podemos definir a suegro
% como el progenitor de la pareja X del yerno o nuera
suegro(Suegro,Yerno):- pareja(Yerno,X),progenitor(Suegro,X).

% Ejercicio 1.5
% Cuñado es algo mas sencillo solo usando las reglas pareja y hermano
% podemos definir que la pareja de Esposo, X, es hermano/a del Cunado.
cunado(Esposo,Cunado):- pareja(Esposo, X), hermano(Cunado,X).


legusta(maria,pasta).
legusta(juan,carne).
legusta(juan,vino).
legusta(jose,pasta).
legusta(jose,carne).
legusta(jose,cerveza).

% Ejercicio 2.1
legusta(juan,X):- legusta(maria,X).

% Ejercicio 2.2
legusta(juan,X):- legusta(X,pasta).

% Ejercicio 2.3
% Para realizar este ejercicio se necesita crear una regla en la cual se
% especifica cuales alimentos son bebidas alcoholicas
legusta(juan,X):- tipoComida(Comida,alcohol),legusta(X,Comida).


tipoComida(cerveza,alcohol).
tipoComida(vino,alcohol).