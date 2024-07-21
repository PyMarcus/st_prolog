/*
 * Listas
 * [a,b] ou (a, b) -> contém tail e head.
 * 
 * [a, b, c]
 * head: a
 * tail: [b,c].
 * 
 * [head|tail] = [1, 2, 3, 4] -> head: 1, tail: 2,3,4
 * toda lista tem uma lista vazia na ultima posicao.
 * */

% unificacao de listas (associacao) -> deve ser do msm tamanho
% [Ana,Ao] = [Foi, Cinema]. Ana/Foi, Ao/Cinema

% ver se elemento está na lista

procuraElemento(Elemento, [Elemento|_]).
procuraElemento(Elemento, [_|T]) :- procuraElemento(Elemento, T).

