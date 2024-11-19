%Rafael Munarin, Vitor Zonta
:- dynamic objetivo/1.
:- dynamic experiencia/1.
:- dynamic disponibilidade/1.

objetivo(ganhar_massa).
objetivo(emagrecer).
objetivo(melhorar_condicionamento).

experiencia(iniciante).
experiencia(intermediario).
experiencia(avancado).

disponibilidade(tempo_limitado).
disponibilidade(tempo_regular).
disponibilidade(tempo_aberto).

exercicio(squats).
exercicio(supino).
exercicio(puxada_frontal).
exercicio(corrida).
exercicio(pullover).
exercicio(agachamento).
exercicio(remo).
exercicio(leg_press).
exercicio(levantamento_terra).
exercicio(rosca_dos_biceps).
exercicio(triceps_pull_down).
exercicio(abdominais).
exercicio(hip_thrust).
exercicio(puxada_horizontal).
exercicio(crunch).
exercicio(stiff).
exercicio(curl_dumbbell).

treino(ganhar_massa, iniciante, tempo_limitado) :- 
    write('Treino para ganhar massa - Iniciante com tempo limitado: '), nl,
    write('Exercicio 1: Supino - 3 series de 8-12 repeticoes.'), nl,
    write('Exercicio 2: Puxada Frontal - 3 series de 8-12 repeticoes.'), nl,
    write('Exercicio 3: Leg Press - 3 series de 8-12 repeticoes.'), nl.
treino(ganhar_massa, iniciante, tempo_regular) :- 
    write('Treino para ganhar massa - Iniciante com tempo regular: '), nl,
    write('Exercicio 1: Supino - 4 series de 8-12 repeticoes.'), nl,
    write('Exercicio 2: Agachamento - 3 series de 8-12 repeticoes.'), nl,
    write('Exercicio 3: Remo - 3 series de 8-12 repeticoes.'), nl,
    write('Exercicio 4: Rosca dos Biceps - 3 series de 10-12 repeticoes.'), nl.
treino(ganhar_massa, iniciante, tempo_aberto) :- 
    write('Treino para ganhar massa - Iniciante com tempo aberto: '), nl,
    write('Exercicio 1: Supino - 4 series de 8-12 repeticoes.'), nl,
    write('Exercicio 2: Agachamento - 4 series de 8-12 repeticoes.'), nl,
    write('Exercicio 3: Remo - 4 series de 8-12 repeticoes.'), nl,
    write('Exercicio 4: Levantamento Terra - 3 series de 8-10 repeticoes.'), nl.

treino(ganhar_massa, intermediario, tempo_limitado) :- 
    write('Treino para ganhar massa - Intermediário com tempo limitado: '), nl,
    write('Exercicio 1: Supino - 4 series de 8-12 repeticoes.'), nl,
    write('Exercicio 2: Puxada Frontal - 4 series de 8-12 repeticoes.'), nl,
    write('Exercicio 3: Leg Press - 4 series de 8-12 repeticoes.'), nl.
treino(ganhar_massa, intermediario, tempo_regular) :- 
    write('Treino para ganhar massa - Intermediário com tempo regular: '), nl,
    write('Exercicio 1: Supino - 4 series de 8-12 repeticoes.'), nl,
    write('Exercicio 2: Agachamento - 4 series de 8-12 repeticoes.'), nl,
    write('Exercicio 3: Remo - 4 series de 8-12 repeticoes.'), nl,
    write('Exercicio 4: Rosca dos Biceps - 4 series de 10-12 repeticoes.'), nl.
treino(ganhar_massa, intermediario, tempo_aberto) :- 
    write('Treino para ganhar massa - Intermediário com tempo aberto: '), nl,
    write('Exercicio 1: Supino - 5 series de 8-12 repeticoes.'), nl,
    write('Exercicio 2: Puxada Frontal - 4 series de 8-12 repeticoes.'), nl,
    write('Exercicio 3: Leg Press - 5 series de 8-12 repeticoes.'), nl.

treino(ganhar_massa, avancado, tempo_limitado) :- 
    write('Treino para ganhar massa - Avançado com tempo limitado: '), nl,
    write('Exercicio 1: Supino - 5 series de 8-12 repeticoes.'), nl,
    write('Exercicio 2: Puxada Frontal - 4 series de 8-12 repeticoes.'), nl,
    write('Exercicio 3: Leg Press - 4 series de 8-12 repeticoes.'), nl.
treino(ganhar_massa, avancado, tempo_regular) :- 
    write('Treino para ganhar massa - Avançado com tempo regular: '), nl,
    write('Exercicio 1: Supino - 5 series de 8-12 repeticoes.'), nl,
    write('Exercicio 2: Agachamento - 5 series de 8-12 repeticoes.'), nl,
    write('Exercicio 3: Remo - 5 series de 8-12 repeticoes.'), nl,
    write('Exercicio 4: Levantamento Terra - 4 series de 8-10 repeticoes.'), nl.
treino(ganhar_massa, avancado, tempo_aberto) :- 
    write('Treino para ganhar massa - Avançado com tempo aberto: '), nl,
    write('Exercicio 1: Supino - 6 series de 8-12 repeticoes.'), nl,
    write('Exercicio 2: Puxada Frontal - 5 series de 8-12 repeticoes.'), nl,
    write('Exercicio 3: Leg Press - 6 series de 8-12 repeticoes.'), nl.

treino(emagrecer, iniciante, tempo_limitado) :- 
    write('Treino para emagrecer - Iniciante com tempo limitado: '), nl,
    write('Exercicio 1: Corrida - 20 minutos em ritmo moderado.'), nl,
    write('Exercicio 2: Agachamento - 3 series de 15-20 repeticoes.'), nl,
    write('Exercicio 3: Abdominais - 3 series de 20 repeticoes.'), nl.
treino(emagrecer, iniciante, tempo_regular) :- 
    write('Treino para emagrecer - Iniciante com tempo regular: '), nl,
    write('Exercicio 1: Corrida - 25 minutos em ritmo moderado.'), nl,
    write('Exercicio 2: Pullover - 3 series de 12-15 repeticoes.'), nl,
    write('Exercicio 3: Crunch - 3 series de 15-20 repeticoes.'), nl.
treino(emagrecer, iniciante, tempo_aberto) :- 
    write('Treino para emagrecer - Iniciante com tempo aberto: '), nl,
    write('Exercicio 1: Corrida - 30 minutos em ritmo moderado.'), nl,
    write('Exercicio 2: Agachamento - 4 series de 15-20 repeticoes.'), nl,
    write('Exercicio 3: Abdominais - 4 series de 20 repeticoes.'), nl.

treino(emagrecer, intermediario, tempo_limitado) :- 
    write('Treino para emagrecer - Intermediário com tempo limitado: '), nl,
    write('Exercicio 1: Corrida - 30 minutos em ritmo moderado.'), nl,
    write('Exercicio 2: Agachamento - 4 series de 12-15 repeticoes.'), nl,
    write('Exercicio 3: Abdominais - 3 series de 20 repeticoes.'), nl.
treino(emagrecer, intermediario, tempo_regular) :- 
    write('Treino para emagrecer - Intermediário com tempo regular: '), nl,
    write('Exercicio 1: Corrida - 40 minutos em ritmo moderado.'), nl,
    write('Exercicio 2: Pullover - 4 series de 12-15 repeticoes.'), nl,
    write('Exercicio 3: Crunch - 4 series de 20 repeticoes.'), nl.
treino(emagrecer, intermediario, tempo_aberto) :- 
    write('Treino para emagrecer - Intermediário com tempo aberto: '), nl,
    write('Exercicio 1: Corrida - 45 minutos em ritmo moderado.'), nl,
    write('Exercicio 2: Agachamento - 5 series de 12-15 repeticoes.'), nl,
    write('Exercicio 3: Abdominais - 4 series de 20 repeticoes.'), nl.

treino(emagrecer, avancado, tempo_limitado) :- 
    write('Treino para emagrecer - Avançado com tempo limitado: '), nl,
    write('Exercicio 1: Corrida - 30 minutos em ritmo intenso.'), nl,
    write('Exercicio 2: Agachamento - 5 series de 12-15 repeticoes.'), nl,
    write('Exercicio 3: Abdominais - 4 series de 20 repeticoes.'), nl.
treino(emagrecer, avancado, tempo_regular) :- 
    write('Treino para emagrecer - Avançado com tempo regular: '), nl,
    write('Exercicio 1: Corrida - 45 minutos em ritmo intenso.'), nl,
    write('Exercicio 2: Pullover - 5 series de 12-15 repeticoes.'), nl,
    write('Exercicio 3: Crunch - 5 series de 20 repeticoes.'), nl.
treino(emagrecer, avancado, tempo_aberto) :- 
    write('Treino para emagrecer - Avançado com tempo aberto: '), nl,
    write('Exercicio 1: Corrida - 50 minutos em ritmo intenso.'), nl,
    write('Exercicio 2: Agachamento - 6 series de 12-15 repeticoes.'), nl,
    write('Exercicio 3: Abdominais - 5 series de 20 repeticoes.'), nl.

treino(melhorar_condicionamento, iniciante, tempo_limitado) :- 
    write('Treino para melhorar condicionamento - Iniciante com tempo limitado: '), nl,
    write('Exercicio 1: Corrida - 20 minutos em ritmo moderado.'), nl,
    write('Exercicio 2: Agachamento - 3 series de 10-12 repeticoes.'), nl,
    write('Exercicio 3: Abdominais - 3 series de 15 repeticoes.'), nl.
treino(melhorar_condicionamento, iniciante, tempo_regular) :- 
    write('Treino para melhorar condicionamento - Iniciante com tempo regular: '), nl,
    write('Exercicio 1: Corrida - 25 minutos em ritmo moderado.'), nl,
    write('Exercicio 2: Pullover - 3 series de 12-15 repeticoes.'), nl,
    write('Exercicio 3: Crunch - 3 series de 15 repeticoes.'), nl.
treino(melhorar_condicionamento, iniciante, tempo_aberto) :- 
    write('Treino para melhorar condicionamento - Iniciante com tempo aberto: '), nl,
    write('Exercicio 1: Corrida - 30 minutos em ritmo moderado.'), nl,
    write('Exercicio 2: Agachamento - 4 series de 10-12 repeticoes.'), nl,
    write('Exercicio 3: Abdominais - 4 series de 15 repeticoes.'), nl.

treino(melhorar_condicionamento, intermediario, tempo_limitado) :- 
    write('Treino para melhorar condicionamento - Intermediário com tempo limitado: '), nl,
    write('Exercicio 1: Corrida - 30 minutos em ritmo moderado.'), nl,
    write('Exercicio 2: Agachamento - 4 series de 10-12 repeticoes.'), nl,
    write('Exercicio 3: Abdominais - 4 series de 20 repeticoes.'), nl.
treino(melhorar_condicionamento, intermediario, tempo_regular) :- 
    write('Treino para melhorar condicionamento - Intermediário com tempo regular: '), nl,
    write('Exercicio 1: Corrida - 40 minutos em ritmo moderado.'), nl,
    write('Exercicio 2: Pullover - 4 series de 12-15 repeticoes.'), nl,
    write('Exercicio 3: Crunch - 4 series de 20 repeticoes.'), nl.
treino(melhorar_condicionamento, intermediario, tempo_aberto) :- 
    write('Treino para melhorar condicionamento - Intermediário com tempo aberto: '), nl,
    write('Exercicio 1: Corrida - 45 minutos em ritmo moderado.'), nl,
    write('Exercicio 2: Agachamento - 5 series de 10-12 repeticoes.'), nl,
    write('Exercicio 3: Abdominais - 4 series de 20 repeticoes.'), nl.

treino(melhorar_condicionamento, avancado, tempo_limitado) :- 
    write('Treino para melhorar condicionamento - Avançado com tempo limitado: '), nl,
    write('Exercicio 1: Corrida - 40 minutos em ritmo intenso.'), nl,
    write('Exercicio 2: Agachamento - 5 series de 12 repeticoes.'), nl,
    write('Exercicio 3: Abdominais - 5 series de 20 repeticoes.'), nl.
treino(melhorar_condicionamento, avancado, tempo_regular) :- 
    write('Treino para melhorar condicionamento - Avançado com tempo regular: '), nl,
    write('Exercicio 1: Corrida - 50 minutos em ritmo intenso.'), nl,
    write('Exercicio 2: Pullover - 5 series de 12 repeticoes.'), nl,
    write('Exercicio 3: Crunch - 5 series de 20 repeticoes.'), nl.
treino(melhorar_condicionamento, avancado, tempo_aberto) :- 
    write('Treino para melhorar condicionamento - Avançado com tempo aberto: '), nl,
    write('Exercicio 1: Corrida - 60 minutos em ritmo intenso.'), nl,
    write('Exercicio 2: Agachamento - 6 series de 12 repeticoes.'), nl,
    write('Exercicio 3: Abdominais - 6 series de 20 repeticoes.'), nl.

sugerir_treino :- 
    write('Qual seu objetivo? (ganhar_massa, emagrecer, melhorar_condicionamento): '), nl,
    read(Objetivo),
    write('Qual seu nivel de experiencia? (iniciante, intermediario, avancado): '), nl,
    read(Experiencia),
    write('Quanto tempo voce tem disponivel por dia? (tempo_limitado, tempo_regular, tempo_aberto): '), nl,
    read(Tempo),
    treino(Objetivo, Experiencia, Tempo).