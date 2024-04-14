# Documentação do Código Prolog

Este documento fornece detalhes sobre o código Prolog desenvolvido para o sistema especialista que deduz personagens do anime Naruto Clássico. O sistema utiliza características como sexo, cor do cabelo, olhos, clã, equipe, sensei, aluno e jutsus para realizar as deduções.

## Iniciando o Sistema

O ponto de entrada do sistema é o predicado `iniciar`, que chama `hipotese(Personagem)` para tentar identificar um personagem baseado nas respostas fornecidas às perguntas feitas ao usuário.

```prolog
iniciar :- hipotese(Personagem),
           write('Eu acho que o personagem é: '),
           write(Personagem),
           nl,
           undo.
```

Este predicado tenta formular uma hipótese sobre o personagem e, após a tentativa, limpa o estado do conhecimento utilizando undo.

## Hipóteses de Personagens

A base de conhecimento contém várias hipóteses para cada personagem, representadas por predicados individuais. Cada hipótese verifica uma série de características para deduzir se o personagem em questão é a escolha correta.

```prolog
hipotese(asuma_sarutobi) :- asuma_sarutobi, !.
hipotese(choji_akimichi) :- choji_akimichi, !.
...
hipotese(desconhecido).
```

O operador de corte (!) é usado para impedir que o Prolog continue a busca por outras regras após uma regra ser satisfeita.

## Regras de Classificação

Cada regra de classificação é uma consulta que verifica uma característica específica, como o sexo do personagem ou a cor do cabelo. Por exemplo:

```prolog
sexo_masculino :- verificar(eh_do_sexo_masculino), !.
sexo_feminino :- verificar(eh_do_sexo_feminino), !.
...
```

Essas regras utilizam o predicado auxiliar verificar para perguntar ao usuário sobre uma característica específica e registrar a resposta.

## Perguntas ao Usuário

O predicado perguntar é utilizado para fazer perguntas diretamente ao usuário, capturar e processar as respostas:

```prolog
perguntar(Questao) :-
    write('O personagem: '),
    write(Questao),
    write(' (s|n) ? '),
    read(Resposta),
    nl,
    ( (Resposta == sim ; Resposta == s)
      -> assert(yes(Questao))
      ; (Resposta == nao ; Resposta == n)
      -> assert(no(Questao)), fail
      ).
```

## Limpeza de Conhecimento

Após cada tentativa de dedução, o sistema precisa limpar o estado do conhecimento para evitar interferências nas consultas futuras.

```prolog
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.
```

Este conjunto de predicados undo remove todas as respostas registradas, permitindo que o sistema faça novas deduções sem restrições de sessões anteriores.
