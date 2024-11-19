%Rafael Munarin, Vitor Zonta
:- dynamic impressao_digital/1.
:- dynamic motivo/1.
:- dynamic testemunha/1.
:- dynamic relacao/1.
:- dynamic suspeito/1.

suspeito(jose).
suspeito(maria).
suspeito(carlos).
suspeito(ana).

suspeito(jose) :- impressao_digital(lugar_crime), motivo(financeiro).
suspeito(maria) :- testemunha(visto_discutindo), relacao(intima).
suspeito(carlos) :- motivo(financeiro), \+ impressao_digital(lugar_crime).
suspeito(ana) :- impressao_digital(vitima_ferida), motivo(vinganca).

teoria(crime_passional) :- testemunha(visto_discutindo), relacao(intima).
teoria(roubo) :- motivo(financeiro), impressao_digital(lugar_crime).
teoria(vinganca) :- motivo(vinganca), impressao_digital(vitima_ferida).
teoria(crime_por_ciumes) :- motivo(ciumes), (testemunha(visto_discutindo); testemunha(ouviu_gritos)).

investigar_suspeito(Suspeito) :- suspeito(Suspeito), format('Recomenda-se investigar o suspeito ~w.~n', [Suspeito]).
verificar_alibi(Suspeito) :- suspeito(Suspeito), format('Verificar o alibi do suspeito ~w.~n', [Suspeito]).

analise_caso :-
    write('Houve impressao digital no local do crime? (sim/nao) '), read(ImpCrime), 
    (ImpCrime == sim -> assert(impressao_digital(lugar_crime)); true),

    write('Houve impressao digital na vitima ferida? (sim/nao) '), read(ImpVitima), 
    (ImpVitima == sim -> assert(impressao_digital(vitima_ferida)); true),

    write('Qual o motivo do crime? (financeiro/vinganca/ciumes) '), read(Motivo),
    (Motivo == financeiro -> assert(motivo(financeiro));
     Motivo == vinganca -> assert(motivo(vinganca));
     Motivo == ciumes -> assert(motivo(ciumes))),
    
    write('Houve testemunha que viu discussao? (sim/nao) '), read(TestemunhaDisc),
    (TestemunhaDisc == sim -> assert(testemunha(visto_discutindo)); true),

    write('Houve testemunha que ouviu gritos? (sim/nao) '), read(TestemunhaGritos),
    (TestemunhaGritos == sim -> assert(testemunha(ouviu_gritos)); true),

    write('Ha relacao intima entre a vitima e algum suspeito? (sim/nao) '), read(Relacao),
    (Relacao == sim -> assert(relacao(intima)); true),

    write('O crime envolve um ex-conjuge? (sim/nao) '), read(ExConjuge),
    (ExConjuge == sim -> assert(relacao(ex_conjuge)); true),

    teoria(T),
    format('Teoria sugerida: ~w.~n', [T]),
    
    (   suspeito(S) -> investigar_suspeito(S); true ),
    
    (   suspeito(S) -> verificar_alibi(S); true ).
