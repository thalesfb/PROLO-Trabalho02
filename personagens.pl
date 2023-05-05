/* 
                    TRABALHO 02
Criar uma base de conhecimento e definir regras para um sistema especialista com no mínimo 10 deduções/conclusões
Apresentar e enviar via SIGAA:
  - Mostrar funcionando
  - Documentar código
  - Compor um manual
  - explicando como funciona.
  - regras, deduções, etc. 
  */

% Personagens de Naruto Classico
/* 
Asuma Sarutobi
Baki
Choji Akimichi
Danzo Shimura
Deidara
Fugaku Uchiha
Gaara
Haku
Hanabi Hyuuga
Hashirama Senju
Hidan
Hiashi Hyuuga
Hiruzen Sarutobi
Hizashi Hyuuga
Ino Yamanaka
Itachi Uchiha
Jiraiya
Kabuto Yakushi
Kakashi Hatake
Kakuzu
Kankuro
Kiba Inuzuka
Kisame Hoshigaki
Konan
Kushina Uzumaki
Kurenai Yuhi
Might Guy
Mikoto Uchiha
Minato Namikaze
Naruto Uzumaki
Neji Hyuuga
Obito Uchiha
Orochimaru
Rin Nohara
Rock Lee
Sai
Sakura Haruno
Sasori
Sasuke Uchiha
Shikamaru Nara
Shino Aburame
Temari
Tenten
Tobirama Senju
Tsunade
Zabuza Momochi
Zetsu 
*/

%inicio: inicia com ?- iniciar.
/* iniciar :- hipotese(Personagem),
    classificacoes(Classificacoes),
    filtrar_personagens(Classificacoes, Personagens),
    escolher_personagem(Personagens, Personagem),
    write('Eu acho que o personagem é: '),
    write(Personagem),
    nl,
    undo. */

/* iniciar :- hipotese(Personagem),
           write('Eu acho que o personagem é: '),
           write(Personagem),
           nl,
           undo. */
% Iniciar a dedução
iniciar :- nl,
        %desfazer respostas antigas
        retractall(yes(_)),
        retractall(no(_)),
        %Procurando todos os personagens
        findall(P, personagem(P), Personagens)
        %Procurando todas os clas
        findall(C, cla(C, _), Clas),
        %Perguntando se pertence a aquele cla
        perguntar_cla(Clas, Personagens, Personagens1),
        %Procurando todas as equipes
        findall(E, equipe(E, _), Equipes),
        %Perguntando se pertence a aquela equipe
        perguntar_equipe(Equipes, Personagens1, Personagens2),
        %Procurando todos os jutsus
        findall(J, jutsu(J, _), Jutsus),
        %Perguntando se usa aquele jutsu
        perguntar_jutsu(Jutsus, Personagens2, Personagens3),
        %Procurando todos os senseis
        findall(Sens, sensei(Sens, _), Senseis),
        %Perguntando se foi sensei de alguem
        perguntar_sensei(Senseis, Personagens3, Personagens4),
        %Procurando todos os alunos
        findall(Al, aluno(Al, _), Alunos),
        %Perguntando se foi aluno de alguem
        perguntar_aluno(Alunos, Personagens4, Personagens5),
        %Procurando todas as cores de cabelo
        findall(CC, cor_cabelo(CC, _), CoresCabelo),
        %Perguntando se tem aquela cor de cabelo
        perguntar_cor_cabelo(CoresCabelo, Personagens5, Personagens6),
        %Procurando todas as cores de olhos
        findall(CO, cor_olhos(CO, _), CoresOlhos),
        %Perguntando se tem aquela cor de olhos
        perguntar_cor_olhos(CoresOlhos, Personagens6, Personagens7),
        %Procurando todos os sexos
        findall(S, sexo(S, _), Sexos),
        %Perguntando se tem aquele sexo
        perguntar_sexo(Sexos, Personagens7, Personagens8),
        %Escrevendo o personagem escolhido
        write('Eu acho que o personagem é: '),
        writeln(Personagem8),
        undo.

% hipoteses de personagens a serem testadas
hipotese(asuma_sarutobi) :- asuma_sarutobi, !.
hipotese(baki) :- baki, !.
hipotese(choji_akimichi) :- choji_akimichi, !.
hipotese(danzo_shimura) :- danzo_shimura, !.
hipotese(deidara) :- deidara, !.
hipotese(fugaku_uchiha) :- fugaku_uchiha, !.
hipotese(gaara) :- gaara, !.
hipotese(haku) :- haku, !.
hipotese(hanabi_hyuuga) :- hanabi_hyuuga, !.
hipotese(hashirama_senju) :- hashirama_senju, !.
hipotese(hidan) :- hidan, !.
hipotese(hiashi_hyuuga) :- hiashi_hyuuga, !.
hipotese(hiruzen_sarutobi) :- hiruzen_sarutobi, !.
hipotese(hizashi_hyuuga) :- hizashi_hyuuga, !.
hipotese(ino_yamanaka) :- ino_yamanaka, !.
hipotese(itachi_uchiha) :- itachi_uchiha, !.
hipotese(jiraiya) :- jiraiya, !.
hipotese(kabuto_yakushi) :- kabuto_yakushi, !.
hipotese(kakashi_hatake) :- kakashi_hatake, !.
hipotese(kakuzu) :- kakuzu, !.
hipotese(kankuro) :- kankuro, !.
hipotese(kiba_inuzuka) :- kiba_inuzuka, !.
hipotese(kisame_hoshigaki) :- kisame_hoshigaki, !.
hipotese(konan) :- konan, !.
hipotese(kushina_uzumaki) :- kushina_uzumaki, !.
hipotese(kurenai_yuhi) :- kurenai_yuhi, !.
hipotese(might_guy) :- might_guy, !.
hipotese(mikoto_uchiha) :- mikoto_uchiha, !.
hipotese(minato_namikaze) :- minato_namikaze, !.
hipotese(naruto_uzumaki) :- naruto_uzumaki, !.
hipotese(neji_hyuuga) :- neji_hyuuga, !.
hipotese(obito_uchiha) :- obito_uchiha, !.
hipotese(orochimaru) :- orochimaru, !.
hipotese(rin_nohara) :- rin_nohara, !.
hipotese(rock_lee) :- rock_lee, !.
hipotese(sai) :- sai, !.
hipotese(sakura_haruno) :- sakura_haruno, !.
hipotese(sasori) :- sasori, !.
hipotese(sasuke_uchiha) :- sasuke_uchiha, !.
hipotese(shikamaru_nara) :- shikamaru_nara, !.
hipotese(shino_aburame) :- shino_aburame, !.
hipotese(temari) :- temari , !.
hipotese(tenten) :- tenten, !.
hipotese(tobirama_senju) :- tobirama_senju, !.
hipotese(tsunade) :- tsunade, !.
hipotese(zabuza_momochi) :- zabuza_momochi, !.
hipotese(zetsu) :- zetsu, !.
hipotese(desconhecido).

/* asuma_sarutobi :- 
    personagem([cla(sarutobi, _)], asuma_sarutobi). 
asuma_sarutobi :- cla(sarutobi),
                    equipe(time_10),
                    sensei(),

*/

/* % personagem desconhecido
personagem_desconhecido :- write('Não foi possível identificar o personagem.'). */

% Regras de classificação

% sexo masculino
sexo(masculino, [asuma_sarutobi, baki, choji_akimichi, danzo_shimura, fugaku_uchiha, gaara, haku, hashirama_senju, hidan, hiashi_hyuuga, hiruzen_sarutobi, hizashi_hyuuga, itachi_uchiha, jiraiya, kabuto_yakushi, kakashi_hatake, kakuzu, kankuro, kiba_inuzuka, kisame_hoshigaki, might_guy, minato_namikaze, naruto_uzumaki, neji_hyuuga, obito_uchiha, orochimaru, rock_lee, sai, sasori, sasuke_uchiha, shikamaru_nara, shino_aburame, tobirama_senju, zabuza_momochi, zetsu]).

% sexo feminino
sexo(feminino, [hanabi_hyuuga, ino_yamanaka, kushina_uzumaki, kurenai_yuhi, mikoto_uchiha, rin_nohara, sakura_haruno, temari, tenten, tsunade]).

% Cor do cabelo
% Loiro
cor_cabelo(loiro, [naruto_uzumaki, ino_yamanaka, deidara, tsunade, minato_namikaze]).

% Preto
cor_cabelo(preto, [sasuke_uchiha, itachi_uchiha, fugaku_uchiha, mikoto_uchila, hinata_hyuuga, neji_hyuuga, hiashi_hyuuga, asuma_sarutobi, hizashi_hyuuga, hanabi_hyuuga, sai, iruka_umino, kabuto_yakushi, orochimaru, haku]).

% Castanho
cor_cabelo(castanho, [sakura_haruno, shikamaru_nara, choji_akimichi, kurenai_yuhi, hiruzen_sarutobi, rin_nohara, tenten]).

% Vermelho
cor_cabelo(vermelho, [gaara, sasori, kushina_uzumaki]).

% Cinza
cor_cabelo(cinza, [kakashi_hatake, hidan]).

% Azul
cor_cabelo(azul, [kisame_hoshigaki, konan]).

% Cor dos olhos
% Azul
cor_olhos(azul, [naruto_uzumaki, sakura_haruno, ino_yamanaka, tsunade]).

% Preto
cor_olhos(preto, [sasuke_uchiha, hinata_hyuuga, neji_hyuuga, shikamaru_nara, choji_akimichi, rock_lee, tenten, kurenai_yuhi, asuma_sarutobi]).

% Cinza
cor_olhos(cinza, [kakashi_hatake]).

% Sharingan
cor_olhos(sharingan, [itachi_uchiha, sasuke_uchiha, obito_uchiha]).

% Clã
cla(uzumaki, [naruto_uzumaki, kushina_uzumaki]).
cla(uchiha, [sasuke_uchiha, itachi_uchiha, fugaku_uchiha, mikoto_uchiha]).
cla(hyuuga, [hinata_hyuuga, neji_hyuuga, hiashi_hyuuga, hizashi_hyuuga, hanabi_hyuuga]).
cla(nara, [shikamaru_nara]).
cla(akimichi, [choji_akimichi]).
cla(yamanaka, [ino_yamanaka]).
cla(aburame, [shino_aburame]).
cla(inuzuka, [kiba_inuzuka]).
cla(sarutobi, [hiruzen_sarutobi, asuma_sarutobi]).
cla(hatake, [kakashi_hatake]).

% Equipe
equipe(time_7, [naruto_uzumaki, sasuke_uchiha, sakura_haruno, kakashi_hatake]).
equipe(time_10, [choji_akimichi, shikamaru_nara, ino_yamanaka, asuma_sarutobi]).
equipe(time_8, [kiba_inuzuka, hinata_hyuuga, shino_aburame, kurenai_yuhi]).
equipe(time_guy, [rock_lee, neji_hyuuga, tenten, might_guy]).
equipe(sand, [gaara, kankuro, temari, baki]).
equipe(akatsuki, [itachi_uchiha, kisame_hoshigaki, deidara, sasori, hidan, kakuzu, zetsu]).
equipe(time_minato, [minato_namikaze, kakashi_hatake, obito_uchiha, rin_nohara]).
equipe(time_hiruzen, [hiruzen_sarutobi, orochimaru, jiraiya, tsunade]).
equipe(time_jiraiya, [jiraiya, minato_namikaze, tsunade, orochimaru]).
equipe(time_4_hokages, [hashirama_senju, tobirama_senju, hiruzen_sarutobi, minato_namikaze]).
equipe(time_3_sannins, [jiraiya, tsunade, orochimaru]).

% Sensei
sensei(kakashi_hatake, [naruto_uzumaki, sasuke_uchiha, sakura_haruno]).
sensei(asuma_sarutobi, [choji_akimichi, shikamaru_nara, ino_yamanaka]).
sensei(kurenai_yuhi, [kiba_inuzuka, hinata_hyuuga, shino_aburame]).
sensei(might_guy, [rock_lee, neji_hyuuga, tenten]).
sensei(baki, [gaara, kankuro, temari]).

% Aluno
aluno(naruto_uzumaki, [kakashi_hatake, jiraiya, minato_namikaze, iruka_uzumaki]).
aluno(sasuke_uchiha, [kakashi_hatake, orochimaru, itachi_uchiha]).
aluno(sakura_haruno, [kakashi_hatake, tsunade]).
aluno(choji_akimichi, [asuma_sarutobi]).
aluno(shikamaru_nara, [asuma_sarutobi]).
aluno(ino_yamanaka, [asuma_sarutobi]).
aluno(kiba_inuzuka, [kurenai_yuhi]).
aluno(hinata_hyuuga, [kurenai_yuhi]).
aluno(shino_aburame, [kurenai_yuhi]).
aluno(rock_lee, [might_guy]).
aluno(neji_hyuuga, [might_guy]).
aluno(tenten, [might_guy]).
aluno(gaara, [baki]).
aluno(kankuro, [baki]).
aluno(temari, [baki]).
aluno(itachi_uchiha, [madara_uchiha, fugaku_uchiha]).

% Jutsus
jutsu(katon, [sasuke_uchiha, itachi_uchiha, fugaku_uchiha]).
jutsu(futon, [naruto_uzumaki]).
jutsu(doton, [kakashi_hatake, deidara]).
jutsu(suiton, [kisame_hoshigaki, zabuza_momochi, haku]).
jutsu(raiton, [kakashi_hatake]).
jutsu(mokuton, [danzo_shimura]).
jutsu(bakuton, [deidara]).
jutsu(byakugan, [hinata_hyuuga, neji_hyuuga]).
jutsu(sharingan, [sasuke_uchiha, itachi_uchiha, kakashi_hatake]).
jutsu(taijutsu, [rock_lee, might_guy, neji_hyuuga]).
jutsu(genjutsu, [kurenai_yuhi, itachi_uchiha]).
jutsu(jutsus_medicos, [sakura_haruno, tsunade, kabuto_yakushi]).

/* % Lista com as classificações em ordem de prioridade
classificacoes([cla, equipe, jutsu, sensei, aluno, cor_cabelo, cor_olhos, sexo]).

% Filtrar personagens com base nas classificações
filtrar_personagens([], Personagens) :- !, findall(X, personagem(X), Personagens).

filtrar_personagens([Classificacao | Resto], Personagens) :-
    (filtrar(Classificacao, PersonagensFiltrados) ->
        filtrar_personagens(Resto, PersonagensFiltrados)
    ;
        PersonagensFiltrados = []
    ),
    filtrar_personagens(Resto, PersonagensRestantes),
    append(PersonagensFiltrados, PersonagensRestantes, Personagens).

filtrar_personagens([Classificacao | Resto], Personagens) :-
    (filtrar(Classificacao, PersonagensFiltrados) ->
        filtrar_personagens(Resto, PersonagensFiltrados)
    ;
        PersonagensFiltrados = []
    ),
    append(PersonagensFiltrados, PersonagensRestantes, Personagens),
    filtrar_personagens(Resto, PersonagensRestantes).

% Filtrar personagens por uma classificação específica
filtrar(Classificacao, PersonagensFiltrados) :-
    call(Classificacao, X),
    findall(Y, personagem(Y), Personagens),
    filtrar_por_classificacao(X, Personagens, PersonagensFiltrados).

% Filtrar personagens por uma classificação específica
filtrar_por_classificacao([], Personagens, Personagens) :- !.

filtrar_por_classificacao([X | Resto], Personagens, PersonagensFiltrados) :-
    findall(Y, call(X, Y), PersonagensComClassificacao),
    intersection(Personagens, PersonagensComClassificacao, PersonagensRestantes),
    filtrar_por_classificacao(Resto, PersonagensRestantes, PersonagensFiltrados).

/* % Escolher um personagem dos candidatos
escolher_personagem([Personagem], Personagem) :- !.
escolher_personagem(Personagens, Personagem) :-
    length(Personagens, N),
    random(0, N, Index),
    nth0(Index, Personagens, Personagem). */ */

% Regras de classificação de personagens
pertence_a_cla(X, Cla) :- cla(Cla, Membros), member(X, Membros).
pertence_a_equipe(X, Equipe) :- equipe(Equipe, Membros), member(X, Membros).
usa_jutsu(X, Jutsu) :- jutsu(Jutsu, Usuarios), member(X, Usuarios).
seu_sexo(X, Sexo) :- sexo(Sexo, Personagens), member(X, Personagens).
tem_cor_cabelo(X, Cor) :- cor_cabelo(Cor, Personagens), member(X, Personagens).
tem_cor_olhos(X, Cor) :- cor_olhos(Cor, Personagens), member(X, Personagens).
foi_sensei_de(X, Estudante) :- sensei(X, Estudantes), member(Estudante, Estudantes).
foi_aluno_de(X, Professor) :- aluno(X, Professores), member(Professor, Professores).

% Perguntar sobre clãs
/* perguntar_cla([]).
perguntar_cla([Cla|Resto]) :-
    ( verificar(pertence_a_cla(_, Cla))
        -> true
        ; perguntar_cla(Resto)
    ).
 */

% Perguntar sobre clãs
perguntar_cla([], _, _).
perguntar_cla([Cla|Resto], Personagens, PersonagensFiltrados) :-
    verificar(pertence_a_cla(_, Cla), Personagens, PersonagensFiltrados),
    perguntar_cla(Resto, Personagens, PersonagensFiltrados).

/* perguntar_equipe([]).
perguntar_equipe([Equipe|Resto]) :-
    ( verificar(pertence_a_equipe(_, Equipe))
        -> true
        ; perguntar_equipe(Resto)
    ). */

% Perguntar sobre equipes
perguntar_equipe([], _, _).
perguntar_equipe([Equipe|Resto], Personagens, PersonagensFiltrados) :-
    verificar(pertence_a_equipe(_, Equipe), Personagens, PersonagensFiltrados),
    perguntar_equipe(Resto, Personagens, PersonagensFiltrados).


/* perguntar_jutsu([]).
perguntar_jutsu([Jutsu|Resto]) :-
    ( verificar(usa_jutsu(_, Jutsu))
        -> true
        ; perguntar_jutsu(Resto)
    ). */
% Perguntar sobre jutsus
perguntar_jutsu([], _, _).
perguntar_jutsu([Jutsu|Resto], Personagens, PersonagensFiltrados) :-
    verificar(usa_jutsu(_, Jutsu), Personagens, PersonagensFiltrados),
    perguntar_jutsu(Resto, Personagens, PersonagensFiltrados).


% Perguntar sobre sexo
perguntar_sexo([], _, _).
perguntar_sexo([Sexo|Resto], Personagens, PersonagensFiltrados) :-
    verificar(sexo(Sexo, _), Personagens, PersonagensFiltrados),
    perguntar_sexo(Resto, Personagens, PersonagensFiltrados).
/* perguntar_sexo([]).
perguntar_sexo([Sexo|Resto]) :-
    ( verificar(sexo(Sexo, _))
        -> true
        ; perguntar_sexo(Resto)
    ). */

% Perguntar sobre cor do cabelo
perguntar_cor_cabelo([], _, _).
perguntar_cor_cabelo([CorCabelo|Resto], Personagens, PersonagensFiltrados) :-
    verificar(tem_cor_cabelo(_, CorCabelo), Personagens, PersonagensFiltrados),
    perguntar_cor_cabelo(Resto, Personagens, PersonagensFiltrados).
/* perguntar_cor_cabelo([]).
perguntar_cor_cabelo([CorCabelo|Resto]) :-
    ( verificar(tem_cor_cabelo(_, CorCabelo))
        -> true
        ; perguntar_cor_cabelo(Resto)
    ). */

% Perguntar sobre cor dos olhos
perguntar_cor_olhos([], _, _).
perguntar_cor_olhos([CorOlhos|Resto], Personagens, PersonagensFiltrados) :-
    verificar(tem_cor_olhos(_, CorOlhos), Personagens, PersonagensFiltrados),
    perguntar_cor_olhos(Resto, Personagens, PersonagensFiltrados).

% Perguntar se foi sensei
perguntar_sensei([], _, _).
perguntar_sensei([Sensei|Resto], Personagens, PersonagensFiltrados) :-
    verificar(foi_sensei_de(Sensei, _), Personagens, PersonagensFiltrados),
    perguntar_sensei(Resto, Personagens, PersonagensFiltrados).

% Perguntar se foi aluno
perguntar_aluno([], _, _).
perguntar_aluno([Aluno|Resto], Personagens, PersonagensFiltrados) :-
    verificar(foi_aluno_de(_, Aluno), Personagens, PersonagensFiltrados),
    perguntar_aluno(Resto, Personagens, PersonagensFiltrados).

/* perguntar_cor_olhos([]).
perguntar_cor_olhos([CorOlhos|Resto]) :-
    ( verificar(tem_cor_olhos(_, CorOlhos))
        -> true
        ; perguntar_cor_olhos(Resto)
    ).
 */
/* % Classificação de personagens
classificar(X, Cla) :- pertence_a_cla(X, Cla).
classificar(X, Equipe) :- pertence_a_equipe(X, Equipe).
classificar(X, Jutsu) :- usa_jutsu(X, Jutsu).
classificar(X, CorCabelo) :- tem_cor_cabelo(X, CorCabelo).
classificar(X, CorOlhos) :- tem_cor_olhos(X, CorOlhos).
classificar(X, Sensei) :- foi_sensei_de(Sensei, X).
classificar(X, Aluno) :- foi_aluno_de(X, Aluno). */

/* % Escolhe um personagem que se encaixa nas classificações especificadas
personagem(Classificacoes, Personagem) :-
    % Limita o número de escolhas para no máximo 2 classificações
    length(Classificacoes, N), N < 3,
    % Busca todos os personagens que se encaixam nas classificações especificadas
    findall(Personagem,
            (member(Cla, Classificacoes),
             cla(Cla, L),
             member(Personagem, L)),
            Personagens),
    % Limita o número de personagens para no máximo 19
    length(Personagens, M), M < 20,
    % Escolhe um personagem da lista, evitando escolhas já feitas
    member(Personagem, Personagens),
    \+ member(Personagem, Classificacoes),
    % Adiciona a classificação escolhida à lista de classificações
    classificar(Personagem, Cla),
    \+ member(Cla, Classificacoes),
    append([Cla], Classificacoes, NovaClassificacoes),
    % Faz recursão com a lista de classificações atualizada
    personagem(NovaClassificacoes, Personagem). */

/*personagem(Classificacoes, Personagem) :-
    personagem(Classificacoes, _, Personagem).

 personagem(_, _, _) :- fail. % cláusula para evitar recursão infinita

personagem(Classificacoes, Personagens, Personagem) :-
    length(Classificacoes, N), N < 3, % limita o número de escolhas para no máximo 2
    length(Personagens, M), M < 20, % limita o número de personagens para no máximo 19
    member(Personagem, Personagens), % escolhe um personagem da lista
    \+ member(Personagem, Classificacoes), % evita escolher personagens já escolhidos
    classificar(Personagem, Cla),
    \+ member(Cla, Classificacoes), % evita escolher a mesma classificação duas vezes
    append([Cla], Classificacoes, NovaClassificacoes), % adiciona a classificação escolhida à lista de classificações
    personagem(NovaClassificacoes, Personagens, Personagem). % recursão com a lista de classificações atualizada

personagem(Classificacoes, [Cla|Outras], Personagem) :-
    cla(Cla, L),
    member(Personagem, L),
    personagem(Classificacoes, Outras, Personagem).

personagem(Classificacoes, [Jutsu|Outras], Personagem) :-
    jutsu(Jutsu, L),
    member(Personagem, L),
    personagem(Classificacoes, Outras, Personagem).

personagem(_, [], _) :- fail. */

/* % Encontrar personagem baseado nas classificações
personagem(Classificacoes, Personagem) :-
    personagem(Classificacoes, _, Personagem).
personagem(Classificacoes, [Cla|Outras], Personagem) :-
    classificar(Personagem, Cla),
    personagem(Classificacoes, Outras, Personagem).
personagem(Classificacoes, [_, Outras], Personagem) :-
    personagem(Classificacoes, Outras, Personagem).
personagem([], _, _) :- fail. */

% Perguntas ao usuário
perguntar(Questao, Personagens, PersonagensFiltrados) :-
    write('O personagem tem o seguinte atributo: '),
    write(Questao),
    write(' (s|n) ? '),
    read(Resposta),
    nl,
    ( (Resposta == sim ; Resposta == s)
        -> (include(Questao, Personagens, PersonagensFiltrados), assert(yes(Questao)))
        ; (exclude(Questao, Personagens, PersonagensFiltrados), assert(no(Questao)), fail)
        /* ->assert(yes(Questao)) ;
        assert(no(Questao)), fail */
        ).

% Verificar se uma resposta é sim ou não
verificar(S) :- (yes(S) -> true ;
                        (no(S)  -> fail ; perguntar(S))
                ).

% Desfazer as respostas
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.
