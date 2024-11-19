%Rafael Munarin, Vitor Zonta
sintoma(partida_falha).
sintoma(farol_fraco).
sintoma(ruido_ao_frear).
sintoma(pedal_freio_mole).
sintoma(oleo_vazando).
sintoma(cheiro_combustivel).

problema(bateria_descarregada) :- partida_falha, farol_fraco.
problema(freio_desgastado) :- ruido_ao_frear, pedal_freio_mole.
problema(vazamento_oleo_motor) :- oleo_vazando.
problema(vazamento_combustivel) :- cheiro_combustivel.

solucao(bateria_descarregada, 'Verifique a bateria do veiculo e tente recarrega-la ou substitui-la.').
solucao(freio_desgastado, 'Inspecione as pastilhas de freio e o sistema de frenagem. Leve ao mecanico para revisao.').
solucao(vazamento_oleo_motor, 'Verifique o nivel de oleo e procure possiveis rachaduras ou falhas nas vedacoes.').
solucao(vazamento_combustivel, 'Evite usar o veiculo e procure um mecanico imediatamente para evitar riscos.').

recomendacao_seguranca('Leve o veiculo a um mecanico especializado para uma inspeccao detalhada.').

diagnostico :-
    write('Informe os problemas do veiculo (digite "sim" ou "nao" para cada um):'), nl,
    perguntar(partida_falha),
    perguntar(farol_fraco),
    perguntar(ruido_ao_frear),
    perguntar(pedal_freio_mole),
    perguntar(oleo_vazando),
    perguntar(cheiro_combustivel),
    (problema(P), solucao(P, S), write('Diagnostico: '), write(P), nl, write('Recomendacao: '), write(S), nl);
    (write('Nao foi possivel identificar o problema com precisao.'), nl, recomendacao_seguranca(R), write(R)).

perguntar(Sintoma) :-
    write('O veiculo apresenta '), write(Sintoma), write('? '),
    read(Resposta),
    (Resposta == sim -> assertz(Sintoma) ; true).
