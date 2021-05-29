%Punto 3 Compendio 2 grupo #6

% 3.1
precio( lapicero, 80 ). 
precio( papel, 220 ). 
precio( computadora, 12000 ). 
precio( carro, 300000). 
precio( tomates, 15 ).

%regla total define el total de la compra que se quiere hacer
total(Cost,Quantity, Total):-Total is Cost*Quantity.
%totalpagar no recibe ningún parámetro.
totalpagar():- write("Dígame el producto que va a comprar: "), read(Product), nl, % Se pide el producto que se quiere comprar y se lee de la consola.
        write("¿Cuántas unidades del mismo?"), read(Quantity), % Luego se lee la cantidad que se quiere comprar de ese producto.
        precio(Product, Cost), total(Cost, Quantity, Total), nl, write("Su total es: "), write(Total).% Al final se utiliza precio para obtener el precio del producto
                                                                                                     % ese precio(Cost)se introduce en la regla total para retornar el valor de la compra.

% La regla total se pudo haber puesto explícitamente en la regla totalpagar, pero para mejor comprensión del código se decidió separarlas.

% 3.2
leerArchivo():-open('prueba.txt', read,ID), see(ID), read(Archivo), close(ID),write(Archivo).
%Al hacer la lectura se obtiene un error de sintaxis: final del archivo inesperado. 
%Este error ocurre porque la regla read solo lee en terminos de prolog, esto se podria arreglar añadiendo un . al final de cada linea.

leerArbol():-open('arbol.pl', read, ID), see(ID), skip('r'),get_char(Letter1),get_char(Letter2),get_char(Letter3),close(ID),write(Letter1),write(Letter2),write(Letter3).
