%Tipo de balneario
balneario(onyx,playa).
balneario(mahona,piscina).
balneario(casa_grande,piscina).
balneario(gran_jimenoa,rio).

%Lugar donde se encuentra
lugar(onyx,hotel_regular,este).
lugar(mahona,hotel_todo_incluido,norte).
lugar(casa_grande,hotel_regular,norte).
lugar(gran_jimenoa,cabana,centro).

% gusta_nadar es la regla que se llama para ver los lugares en los que a
% Pedro le gusta nadar.

% La razon por la cual se llama balneario dos veces es para poder
% unificar en una ocacion en la cual no haya ninguna condicion para
% poder evitar el error que vimos en clase en el cual no se puede
% consultar utilizando una variable para ver todos los posibles casos.
gusta_nadar(X):- balneario(X,_),nadar(X).

% Si es una piscina en un hotel todo incluido y al norte del pais,
% entonces a Pedro no le gusta por lo que retorna false.
nadar(X):- lugar(X,hotel_todo_incluido,norte),balneario(X,piscina),!,fail.
% Si no se cumple las condiciones anteriores, entonces a Pedro le gusta
% nadar ahi.
nadar(X):-lugar(X,_,_).
