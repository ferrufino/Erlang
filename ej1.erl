
%Gustavo Ferrufino A00812572
%Andres G. Cavazos A01195067 

-module(ej1).
-export([secuencia/1, formula_general/3, mapea/2]).

%1.	Programar la función formula_general en Erlang que resuelva ecuaciones cuadráticas de tipo a x^2+b x+c = 0, a partir de sus coeficientes.
formula_general(A, B, C) ->
    Discriminant = B * B - 4 * A * C,
    case Discriminant > 0 of 
    	true ->
    		SqrtDiscrim = math:sqrt(Discriminant),
    		{(-B + SqrtDiscrim) / (2 * A), (-B - SqrtDiscrim) / (2 * A)};

    	false ->
    		imaginarias
    end.
%2.	Programar la función secuencia en Erlang que cree una lista con los números naturales del 1 a N.
secuencia(0) -> [];
secuencia(N)  when N > 0 -> secuencia( N-1 ) ++ [N].


%3.	Programar la función de orden superior mapea en Erlang que trabaje igual que la FOS lists:map (sin utilizarla).
mapea(A, []) -> [];
mapea(A, [Head | Tail]) -> [A(Head) | mapea(A, Tail)].
	
    
