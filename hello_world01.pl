/*
 * Em prolog, pode-se fazer algumas verificacoes:
 * var(X) 
 * is_list([1, 2, 3]) ou is_list(`a`)
 * atom(a)
 * etc... 
 * 
 * 
 * install: sudo apt-get install swi-prolog
 * run: swipl file.pl
 * 
 * */

% Programa simples que exibe e le o valor contido em uma variável.

start() :- write('Digite um valor: '),
    		read(X),nl,
			write('O valor informado foi: '),
    		write(X),nl.
