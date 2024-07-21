% Corte:
% o backtracking é um processo padrão do prolog, mas, para impedí-lo, pode-se utilizar
% o corte: !(lado direito de uma regra).

f(X, 0) :- X =< 2, !.
f(X, 1) :- X >= 3, !. % se X = 5, vai testar a primeira condicao e a segunda, mas n vai parar ate acabar.
f(X, 2) :- X =:= 4, !. % contudo, ao colocar o caractere de corte (!), se encontrada a solucao, então para.

a(1).
b(2).
c(1).
% a ordem da regra influencia o programa. Como o corte está em ax,será finalizado apos executar a regra.
p(X) :- c(X).
p(X) :- a(X), !, b(X).
% geralmente, ocorre a divisao dos lados da expressao.
