%Rafael Munarin, Vitor Zonta
livro('1984', ficcao, [politica, sociedade]).
livro('Sapiens', historia, [ciencia, evolucao, sociedade]).
livro('O Poder do Habito', autoajuda, [psicologia, habitos]).
livro('Fundacao', ficcao, [tecnologia, futuro]).
livro('Breves Respostas para Grandes Questoes', ciencia, [universo, fisica]).
livro('A Arte da Guerra', historia, [estrategia, lideranca]).
livro('Como Fazer Amigos e Influenciar Pessoas', autoajuda, [relacionamentos, lideranca]).
livro('O Mundo de Sofia', ficcao, [filosofia, educacao]).

recomendar(Livro) :-
    livro(Livro, Genero, Interesses),
    genero_selecionado(Genero),
    interesse_selecionado(Interesse),
    member(Interesse, Interesses).

iniciar :-
    nl,
    write('========================================================='), nl,
    write('      Bem-vindo ao Sistema de Recomendacao de Livros!     '), nl,
    write('========================================================='), nl,
    nl,
    write('Vamos comecar a selecionar seus generos favoritos!'), nl,
    selecionar_generos,
    nl,
    write('Agora, vamos selecionar seus interesses pessoais.'), nl,
    selecionar_interesses,
    nl,
    exibir_recomendacoes.

selecionar_generos :-
    write('Por favor, selecione os generos que voce mais gosta.'), nl,
    write('Digite o nome do genero ou "fim." para finalizar.'), nl,
    nl,
    listar_generos,
    ler_generos.

listar_generos :-
    findall(Genero, livro(_, Genero, _), Generos),
    sort(Generos, GenerosUnicos),
    nl,
    write('Generos disponiveis:'), nl,
    listar_opcoes(GenerosUnicos).

listar_opcoes([]).
listar_opcoes([H|T]) :-
    format('  - ~w', [H]), nl,
    listar_opcoes(T).

ler_generos :-
    write('Digite o genero ou "fim." para encerrar: '),
    read(Genero),
    (Genero == fim -> true;
     assertz(genero_selecionado(Genero)),
     ler_generos).

selecionar_interesses :-
    write('Agora, selecione os interesses que voce tem.'), nl,
    write('Digite o nome do interesse ou "fim." para finalizar.'), nl,
    nl,
    listar_interesses,
    ler_interesses.

listar_interesses :-
    findall(Interesse, (livro(_, _, Interesses), member(Interesse, Interesses)), ListaInteresses),
    sort(ListaInteresses, InteressesUnicos),
    nl,
    write('Interesses disponiveis:'), nl,
    listar_opcoes(InteressesUnicos).

ler_interesses :-
    write('Digite o interesse ou "fim." para encerrar: '),
    read(Interesse),
    (Interesse == fim -> true;
     assertz(interesse_selecionado(Interesse)),
     ler_interesses).

exibir_recomendacoes :-
    write('========================================================='), nl,
    write('  Aqui estão as suas recomendacoes de livros: '), nl,
    write('========================================================='), nl,
    (recomendar(Livro) -> 
        format('  - ~w', [Livro]), nl,
        fail; 
    write('  Nenhuma recomendação encontrada com base nas suas escolhas. Tente selecionar outros generos ou interesses.'), nl).

:- dynamic genero_selecionado/1, interesse_selecionado/1.
