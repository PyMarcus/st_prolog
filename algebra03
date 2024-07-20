/*
 * Aritmética em prolog possui algumas questões
 * embora seja uma linguagem para fazer deduções lógicas,
 * é possível
 * */

% 1 + 2 = 2 + 1 => false ,pois, ele compara token a token 1 != 2
% 1 + 2 =:= 2 + 1 => verdadeiro, pois, agora está analisando o valor

soma(A, B, Y) :- Y is (A + B), write(Y).

% pedir no console um numero inteiro e ver se é menor,maior ou igual a 100.

verificaNumero() :- write('Digite um número'),read(Num),nl,
   (
   	 (Num>100, write("Número maior que 100"));
     (Num<100, write("Número menor que 100"));
     (Num=:=100, write("Número igual a 100"))
    ).
% verifique se o aluno foi ou nao aprovado.
nota(joao,5.0).
nota(mariana,9.0).
nota(joquim,4.5).
nota(maria, 6.0).
nota(cleusa, 0.4).
nota(mara, 8.9).
% 7 a 10 => aprovado 5 a 6.9 recuperacao 0 a 4.9 reprovado
situacao(Aluno) :- (
                   (nota(Aluno,X), X>=0,X=<4.9,write("Reprovado"));
                   (nota(Aluno,Y),Y>=5,Y=<6.9,write("Recuperacao"));
                   (nota(Aluno,Z), Z>=7,Z=<10,write("Aprovado"))
                    ).

calculo(Peso, Altura, Resultado) :- Resultado is (Peso / (Altura * Altura)).

imc(Peso, Altura) :- calculo(Peso, Altura, Resultado), (
                                                       	(Resultado>=18.5,Resultado=<25.0, write("Peso normal"));
                                                        (Resultado<18.5, write("Abaixo do peso"));
                                                        (Resultado>25.0, write("Acima do peso"))
                                                       ).




