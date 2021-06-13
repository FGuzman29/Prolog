% Ejericio 1:

% 1.1. Que devuelva el último elemento de una lista dada.

lista_ultimo_elemento([Cabeza|[]],Cabeza).
lista_ultimo_elemento([_Cabeza|Cola],Ultimo):-lista_ultimo_elemento(Cola,Ultimo).

% 1.2. Que devuelva el penúltimo elemento de una lista dada.

lista_penultimo_elemento([Cabeza|[_Elemento]],Cabeza).
lista_penultimo_elemento([_Cabeza|Cola],Ultimo):-lista_penultimo_elemento(Cola,Ultimo).

% 1.3. Que devuelva el n-ésimo elemento de una lista dada.

lista_nesimo_elemento([_Cabeza|_Cola],1,_Resultado).
lista_nesimo_elemento([_Cabeza|Cola],N,Resultado):-R is N-1,lista_nesimo_elemento(Cola,R,Resultado).

% 1.4. Que devuelva la cantidad de elementos de una lista dada.

lista_cantidad_elemento([],0).
lista_cantidad_elemento([_Cabeza|Cola],Resultado):-lista_cantidad_elemento(Cola,C),Resultado is C + 1.

% 1.5. Que devuelva los número pares de una lista dada. 

lista_par_elemento([],[]).
lista_par_elemento([Cabeza|Cola],Lista):-(0 is Cabeza mod 2 -> Lista = [Cabeza|Resto],lista_par_elemento(Cola,Resto);lista_par_elemento(Cola,Lista)).

% 1.6. Que devuelva la inversa de una lista dada.

concatena([],L,L).
concatena([X|L1],L2,[X|L3]):-concatena(L1,L2,L3).

inversa([],[]).
inversa([Cabeza|Cola],Resultado):-inversa(Cola,Resto),concatena(Resto,[Cabeza],Resultado).
