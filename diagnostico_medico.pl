%Rafael Munarin, Vitor Zonta
sintoma(febre).
sintoma(tosse).
sintoma(cansaco).
sintoma(dor_de_garganta).
sintoma(dor_muscular).
sintoma(dor_de_cabeca).
sintoma(nausea).

doenca(gripe) :-
    febre,
    tosse,
    cansaco.

doenca(infeccao_viral) :-
    febre,
    dor_de_garganta,
    dor_muscular.

doenca(enxaqueca) :-
    dor_de_cabeca,
    nausea.

doenca(desconhecida) :-
    \+ doenca(gripe),
    \+ doenca(infeccao_viral),
    \+ doenca(enxaqueca).

interagir :-
    write('Bem-vindo ao Sistema Especialista de Diagn�stico M�dico!'), nl,
    write('Por favor, responda as perguntas com "sim." ou "nao.".'), nl,
    perguntar_sintomas,
    diagnosticar.

perguntar_sintomas :-
    sintoma(Sintoma),
    perguntar(Sintoma),
    fail. 
perguntar_sintomas.  

perguntar(Sintoma) :-
    format('Voc� est� com ~w? ', [Sintoma]),
    read(Resposta),
    (Resposta == sim -> assertz(Sintoma); assertz(nao(Sintoma))).

diagnosticar :-
    (doenca(Doenca),
     Doenca \= desconhecida ->
        format('O diagn�stico mais prov�vel �: ~w.', [Doenca]);
        write('N�o foi poss�vel identificar sua condi��o. Consulte um m�dico.')).

:- dynamic febre/0, tosse/0, cansaco/0, dor_de_garganta/0, dor_muscular/0, dor_de_cabeca/0, nausea/0, nao/1.
