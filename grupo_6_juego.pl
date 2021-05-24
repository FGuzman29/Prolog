ganados(juan,7).
ganados(susana,6).
ganados(pedro,2).
ganados(rosa,5).
jugados(rosa,10).
jugados(juan,13).
jugados(pedro,3).
jugados(susana,7).

% 2.1 Cree una regla ratio_ganados(Persona,Porcentaje) que le permita
% saber la tasa de juegos ganados de cada persona.
ratio_ganados(Persona,Porcentaje):- ganados(Persona,Ganados),jugados(Persona,Jugados), Porcentaje is Ganados/Jugados.

% 2.2 Cree una regla perdedor(Persona1,Persona2,Perdedor),que devuelva
% el parametro Perdedor cual es la persona que tiene mas juegos
% perdidos, de entre Persona1 y Persona2. Si hay un empate, la regla
% debe devolver el valor empate en el parametro Perdedor
perdedor(Persona1,Persona2,Persona1):- ratio_ganados(Persona1,Ratio1),ratio_ganados(Persona2,Ratio2),Ratio1 < Ratio2.

perdedor(Persona1,Persona2,Persona2):- ratio_ganados(Persona1,Ratio1),ratio_ganados(Persona2,Ratio2),Ratio1 > Ratio2.

perdedor(Persona1,Persona2,empate):- ratio_ganados(Persona1,Ratio1),ratio_ganados(Persona2,Ratio2),Ratio1 == Ratio2.


