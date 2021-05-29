progenitor(juan,luis).
progenitor(juan,maria).
progenitor(luis,carlos).
progenitor(luis,laura).

abuelo(Abuelo,Nieto):-progenitor(Padre,Nieto),progenitor(Abuelo,Padre).