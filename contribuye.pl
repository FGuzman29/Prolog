% En el sistema de seguridad social, los contribuyentes normales son aquellos que: 
% No son extranjeros, si están casados su pareja no gana más de 20,000 pesos y, en cualquier otro caso, 
% sus ingresos propios están entre 7,000 y 20,000. Escriba en Prolog las reglas necesarias para determinar 
% si un contribuyente es normal o no utilizando para ello la combinación corte-fallo.

extranjero(alejandra).
extranjero(alonso).
extranjero(chuni).
extranjero(chujo).

nativo(ruben).
nativo(josef).
nativo(alicia).
nativo(melisa).

pareja(chuni,alonso).
pareja(alonso,chuni).
pareja(josef,alicia).
pareja(alicia,josef).

gana(chuni,20000).
gana(alejandra, 25000).
gana(chujo,30000).
gana(alonso,7000).

gana(ruben,20000).
gana(alicia,10000).
gana(josef,11000).
gana(melisa,15000).

esContribuyente(X):-extranjero(X),!,fail.
esContribuyente(X):-pareja(X,Y), gana(Y,S), S>20000,!,fail.
esContribuyente(X):-nativo(X), pareja(X,Y), gana(Y,S), S<20000,gana(X,S1), S1>7000,S2<20000.

