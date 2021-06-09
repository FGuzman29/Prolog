/*3.1  Recuerde la representacion de numeros naturales que usamos en clase, que
estaba en funcion de lossiguientes del cero. Como completaria usted la siguiente
regla recursiva que dice si dos numeros naturales son iguales?*/
iguales(0,0).
iguales(s(X),s(Y)) :- iguales(X,Y).

%3.2 compress/2 elimina los elementos consecutivos
% duplicados en una lista .podria explicar en detalle como lo logra?

compress([],[]).
compress([X],[X]).
compress([X,X|Xs],Zs) :- compress([X|Xs],Zs).
compress([X,Y|Ys],[X|Zs]) :- X \= Y, compress([Y|Ys],Zs).

/*la regla recibe como parametros la lista a comprimir y una variable que sirve como lista auxiliar
La regla compara a los dos primeros elementos, la cabeza de la lista y su siguiente,
si estos son iguales (caso donde se pasa [X,X|Xs]) entonces se hace una llamada recursiva
pasando al elemento elemento actual(el cual es tecnicamente el siguiente
aunque realmente no importa) y la cola de la lista para seguir
comparando. En caso de que los elementos sean diferentes(caso donde se
pasa a [X,Y]) se establece a X como la cabeza de la lista auxiliar y se
prosigue a hacer la llamada recursiva pasando a Y, a la cola de la lista
a comprimir y se vuelve a pasar la variable de salida que sigue sin ser
unificada con nada. Esto se repite hasta que la lista a comprimir queda
vacia, en ese momento se sale del bucle recursivo y lo primero que se
hace es unificar la cola (el ultimo elemento) de la lista a devolver con
la variable que se paso por parametro de modo que estos dos elementos
son iguales expresandola como una lista y a medida que se sale de la
recursividad, la x que se habia ido agregado
como cabeza se va agregando a la lista de retorno de modo que esta se va formando de inicio a fin.*/


/*3.3 Se busca que la siguiente regla divida una lista en dos partes. Complete el
objetivo faltante y tome en cuenta que el segundo termino representa la cantidad
de elementos que tendra la primera lista producida */
split(L,0,[],L).
split([X|Xs],N,[X|Ys],Zs) :- N > 0, N1 is N - 1, split(Xs,N1,Ys,Zs).


%3.4 �Qu� hace la siguiente regla?

surprise(I,I,[I]).
surprise(I,K,[I|L]) :- I < K, I1 is I + 1, surprise(I1,K,L).

/*La regla surprise toma un valor I y uno K (los cuales deben de ser numeros para que no explote) y lo que hace
es generar una lista con los numeros entre I(el limite inferior) y K(el superior)
Esto lo hace poniendo el valor de I como la cabeza de la lista, revisando que I sea menor que K, luego aumenta a I
en 1 y vuelve a hacer la llamada de forma recursiva pasando el valor de I+1, K y la cola de la lista
Esto lo hace hasta que I y K son iguales por lo que la cola de la lista es I.
Al salir de la llamada recursiva se va llenando desde la cola por lo que se obtienen los valores en orden ascendente*/


