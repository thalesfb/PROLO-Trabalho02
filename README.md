# Trabalho para obtenção de nota parcial da disciplina de Programação Lógica e Funcional

## Objetivo

Este trabalho visa desenvolver um sistema especialista usando Prolog para deduzir personagens do anime Naruto Clássico, com base em características fornecidas pelo usuário. O sistema deve ser capaz de realizar no mínimo 10 deduções diferentes.

## Proposta Detalhada

- **Demonstração**: Apresentação em vídeo mostrando como o sistema faz deduções, destacando a lógica de dedução utilizada.
- **Documentação do Código**: Código comentado, explicando cada parte da lógica e como as regras do Prolog são aplicadas.
- **Manual do Usuário**: Um guia explicando como o sistema foi construído, como funciona e como interagir com ele, vinculando o conhecimento do tema Naruto ao funcionamento do Prolog.
- **Detalhes Técnicos**: Inclusão de regras, deduções e a lógica usada para chegar às conclusões, com exemplos práticos.

## Personagens

O sistema considera uma variedade de personagens do anime Naruto Clássico, cada um com características únicas que podem ser deduzidas. Abaixo está a lista dos personagens incluídos no sistema:

- Asuma Sarutobi
- Choji Akimichi
- Gaara
- Haku
- Hinata Hyuga
- Ino Yamanaka
- Iruka Umino
- Itachi Uchiha
- Jiraiya
- Kabuto Yakushi
- Kakashi Hatake
- Kiba Inuzuka
- Kimimaro
- Kurenai Yuhi
- Might Guy
- Minato Namikaze
- Naruto Uzumaki
- Neji Hyuga
- Orochimaru
- Rock Lee
- Sakura Haruno
- Sarutobi Hiruzen
- Sasuke Uchiha
- Shikamaru Nara
- Shino Aburame
- Tenten
- Tsunade Senju
- Zabuza Momochi

## Características dos Personagens para Dedução

Para deduzir a identidade de um personagem, o sistema faz perguntas sobre as seguintes características:

### Sexo

- sexo_masculino: Verifica se o personagem é do sexo masculino.
- sexo_feminino: Verifica se o personagem é do sexo feminino.

### Cor do Cabelo

- cabelo_castanho, cabelo_ruivo, cabelo_azul, cabelo_loiro, cabelo_preto, cabelo_branco, cabelo_marrom, cabelo_rosa: Cada um verifica se o personagem possui a cor de cabelo especificada.

### Cor dos Olhos

- olhos_preto, olhos_azul, olhos_branco, olhos_vermelho, olhos_amarelo, olhos_verde: Cada um verifica se o personagem tem a cor de olhos especificada.

### Clã

- Clãs como cla_sarutobi, cla_akimichi, cla_sabaku, entre outros: Verifica a afiliação do personagem a um clã específico.

### Equipe

- equipe_time_10, equipe_sand, equipe_time_zabuza, e outros: Identifica a equipe à qual o personagem pertence.

### Sensei

- sensei_sarutobi, sensei_baki, sensei_zabuza, entre outros: Especifica o mentor ou líder do personagem.

### Aluno

- aluno_naruto, aluno_sasuke, aluno_sakura, entre outros: Especifica o aluno do personagem.

### Jutsus (Técnicas Ninja)

- jutsu_katon (fogo), jutsu_taijutsu (corpo a corpo), jutsus_medicos, jutsu_suiton (água), e outros: Cada jutsu verifica se o personagem é capaz de realizar a técnica especificada.

# Manual do Usuário

- Iniciar a Sessão: Para começar a utilizar o sistema, você deve iniciar a sessão digitando `iniciar.`. no console Prolog. Isso iniciará o processo de dedução.

- Responder Perguntas: O sistema fará uma série de perguntas sobre as características dos personagens (sexo, cor do cabelo, cor dos olhos, clã, etc.). Responda cada pergunta com s (sim) ou qualquer outra entrada para não conforme o personagem que você está pensando.

- Resultado da Dedução: Após responder às perguntas, o sistema usará as respostas para identificar o personagem com base nas regras definidas no código. O nome do personagem será exibido, indicando a conclusão do sistema.

**_Exemplo Prático_**
Suponha que você pense em *Naruto Uzumaki*. O sistema pode perguntar:

## Exemplo de Sessão de Dedução

```
O personagem eh_do_sexo_masculino (s|n) ? |: s.
 personagem: tem_cabelo_castanho (s|n) ? |: n.
O personagem: tem_cabelo_ruivo (s|n) ? |: n.
O personagem: tem_cabelo_branco (s|n) ? |: n.
O personagem: tem_cabelo_preto (s|n) ? |: n.
O personagem: tem_cabelo_marrom (s|n) ? |: n.
O personagem tem_cabelo_loiro (s|n) ? |: s.
O personagem tem_olhos_azuis (s|n) ? |: s.
O personagem eh_do_cla_namikaze (s|n) ? |: n.
O personagem eh_do_cla_uzumaki (s|n) ? |: s.
O personagem eh_da_equipe_time_7 (s|n) ? |: s.
O personagem eh_do_sensei_kakashi (s|n) ? |: s.
O personagem usa_justsu_kage_bushin (s|n) ? |: s.
O personagem usa_justsu_katon (s|n) ? |: s.
Eu acho que o personagem é: naruto_uzumaki
```
Respondendo afirmativamente às perguntas corretas, o sistema eventualmente deduzirá que você pensou em "Naruto Uzumaki".

# Detalhes Técnicos

O sistema utiliza uma abordagem de lógica baseada em regras para deduzir qual personagem está sendo descrito. A base de conhecimento contém regras para cada personagem, e a execução do código segue uma lógica de perguntas e respostas para estreitar as possibilidades até chegar a uma conclusão. A utilização de assert e retract ajuda a gerenciar o estado das respostas durante a sessão, garantindo que as deduções sejam feitas com base nas informações mais atuais fornecidas pelo usuário.

Este sistema é um exemplo prático de como a programação em Prolog pode ser utilizada para construir sistemas especialistas complexos e interativos.