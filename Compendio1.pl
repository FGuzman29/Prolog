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

hermano(X,Y):- progenitor(Z,X), progenitor(Z,Y).
pareja(X,Y):- progenitor(X,Z), progenitor(Y,Z).
suegro(Suegro,Yerno):- pareja(Yerno,X),progenitor(Suegro,X).
cunado(Esposo,Cunado):- pareja(Esposo, X), hermano(Cunado,X).