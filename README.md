
# Sistema Especialista em Prolog

**Desenvolvedores:** Rafael Munarin (@RafaelMunarin), Vitor Hugo Zonta (@VitorHugoZonta)

## Visão Geral

Este projeto consiste em uma série de cinco sistemas especialistas desenvolvidos em **Prolog**, com o objetivo de aplicar programação lógica em situações do mundo real. Cada módulo foi projetado para deduzir informações ou fazer recomendações com base em fatos e regras estabelecidas. Os módulos são:

1. **Diagnóstico Médico**
2. **Análise de Problemas de Veículos**
3. **Recomendações de Livros**
4. **Recomendação de Treinos de Academia**
5. **Análise de Investigação Criminal**

## Funcionalidade dos Módulos

### 1. **Diagnóstico Médico**
Este módulo sugere diagnósticos médicos baseados nos sintomas informados pelo usuário.

**Exemplo de regra:**
```prolog
doenca(gripe) :- febre, tosse, cansaço.
doenca(enxaqueca) :- dor_de_cabeca, nauseas, luz_intensa.
```

O usuário será questionado sobre seus sintomas e, com base nas respostas, o sistema sugere o diagnóstico mais provável. Caso não consiga identificar uma condição específica, o sistema recomendará uma consulta médica.

### 2. **Análise de Problemas de Veículos**
Este módulo ajuda a identificar problemas comuns em veículos com base em sintomas ou comportamentos relatados.

**Exemplo de regra:**
```prolog
problema(bateria_fraca) :- motor_nao_liga, luzes_fracas.
problema(freio_desgastado) :- barulho_ao_frear, pedal_freio_macio.
```

O usuário descreve o problema do veículo, e o sistema sugere possíveis causas e soluções. Caso o problema seja grave, como uma falha crítica, a recomendação será para levar o carro a um mecânico.

### 3. **Recomendações de Livros**
Este módulo recomenda livros com base nos interesses e preferências do usuário, como gênero e tópicos de interesse.

**Exemplo de regra:**
```prolog
recomendar('1984') :- genero(ficcao), interesse(politica).
recomendar('Sapiens') :- genero(historia), interesse(ciencia).
```

O sistema pergunta ao usuário sobre suas preferências de leitura e recomenda livros específicos. O usuário pode selecionar múltiplos gêneros e tópicos de interesse.

### 4. **Recomendação de Treinos de Academia**
Este módulo sugere treinos de academia baseados no objetivo, nível de experiência e tempo disponível do usuário.

**Exemplo de regra:**
```prolog
treino(hipertrofia) :- objetivo(ganhar_massa), experiencia(intermediario).
treino(perda_de_peso) :- objetivo(emagrecer), tempo(tempo_limitado).
```

O usuário fornece informações sobre seu objetivo (como emagrecimento ou ganho de massa), seu nível de experiência e o tempo disponível para o treino. O sistema recomenda uma rotina de exercícios com séries e repetições.

### 5. **Análise de Investigação Criminal**
Este módulo sugere suspeitos ou cenários com base em evidências e testemunhos fornecidos pelo usuário.

**Exemplo de regra:**
```prolog
suspeito(jose) :- impressao_digital(lugar_crime), motivo(financeiro).
teoria(crime_passional) :- testemunha(visto_discutindo), relacao(intima).
```

O usuário fornece informações sobre o caso (evidências e testemunhos), e o sistema sugere possíveis suspeitos ou cenários de crime.

Cada módulo contém um arquivo `.pl` que implementa as regras e fatos para aquela aplicação.

## Como Executar o Sistema

### Pré-requisitos

1. **Instalar Prolog**: Certifique-se de que o Prolog está instalado no seu sistema. Você pode obter o [SWI-Prolog](https://www.swi-prolog.org/Download) ou outro ambiente de Prolog de sua escolha.
2. **Clonar o Repositório**: Clone este repositório para o seu computador local.

### Passos para Execução

1. Clone o repositório:
   ```bash
   git clone https://github.com/RafaelMunarin/Programacao-Logica-Prolog.git
   ```
2. Acesse a pasta do projeto:
   ```bash
   cd Programacao-Logica-Prolog
   ```
3. Abra o ambiente Prolog e carregue o módulo desejado seguindo os passos:
   1. Vá em 'File'
   2. Selecione a opção 'New'
   3. Abra o arquivo '.pl'
4. Para cada arquivo, inicialmente digite
   ```bash
   [nome_do_arquivo].
   ```
5. Após ter como retorno 'true' digite
   ```bash
   nome_funcao_principal.
   ```
6. Seguir as instruções cfe. a programa aponta
7. Para outro módulo, basta carregar o arquivo `.pl` correspondente no Prolog.