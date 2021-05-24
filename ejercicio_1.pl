% Ejercicio 1.1

precio(lapicero,80).
precio(papel,220).
precio(computadora,12000).
precio(carro,300000).
precio(tomates,15).

consultar(Producto,Precio):- precio(Producto,Productoprecio),Productoprecio > Precio.

% Ejercicio 1.2

consultar(Producto, LimitePI,LimitePF):- precio(Producto,Productoprecio),Productoprecio > LimitePI,Productoprecio < LimitePF.


