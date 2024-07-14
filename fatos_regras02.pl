/*
Em prolog, fatos são sempre verdadeiros
já regras devem ser avaliadas.

ex:
    homem(x). -> x é homem
    pai(x, y). -> x é pai de y.

    para listar todas as mulhers, por exemplo: mulher(X) e vai apertando ;

    functor(aridade)

*/
% fatos
homem(tom).
homem(bob).
homem(jim).
mulher(liz).
mulher(pat).
mulher(pam).
mulher(ann).
genitor(pam, bob). % pam é mae de bob
genitor(tom, bob). % tom é pai de bob
genitor(bob, ann). % bob é pai de ann
genitor(bob, pat). % bob é pai de pat
genitor(pat, jim). % pat é mae de jim
genitor(tom, liz). % tom é pai de liz.

/*
Para gerar os resultados da query, sem programação imperativa,
prolog utiliza-se de técnicas como:

matching -> checa se esta tudo ok e dentro do padrao de codigo.
unificacao ->  substitui as variaveis pelo seus valores.
resolucao -> verifica se uma consulta é consequencia lógica de fatos e regras.
recursao -> regras q chamam a si mesmas.
backtracking -> é realizado todas as possibilidades de resposta.

ex:
homem(bob).
mulher(pam).
genitor(pam, X).  unifica X/bob. matching pam, bob. backtracking -> no caso, n encontra outras respostas.

*/

% regras
/*
As regras são definidas com base em conectivos (tokens)
para aumentar a expressividade da linguagem

:- se ou implica
, e
; ou
not negativa.

a(X) -> b(x) v (c(x) ^ d(x)) = a(x) :- b(x) ; (c(x) , d(x)).
O a(x) chama-se conclusao.
*/

prole(X, Y) :- genitor(Y, X).

mae(X, Y) :- genitor(X, Y) , mulher(X).

