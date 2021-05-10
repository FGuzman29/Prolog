%Compendio #1 Grupo 6

progenitor(antonio,carlos).
progenitor(antonio,eva).
progenitor(maria,carlos).
progenitor(maria,eva).
progenitor(carlos,fernando).
progenitor(carlos,silvia).
progenitor(elena,fernando).
progenitor(elena,silvia).
progenitor(eva,emilio).
progenitor(david,emilio).

legusta(maria,pasta) .
legusta(juan,carne) .
legusta(juan,vino).
legusta(jose,pasta).
legusta(jose,carne).
legusta(jose,cerveza).

% Ejercicio 2.1
legusta(juan,X):- legusta(maria,X).

% Ejercicio 2.2
legusta(juan,X):- legusta(X,pasta).

