% TRABALHO 02
% Criar uma base de conhecimento e definir regras para um sistema especialista com no mínimo 10 deduções/conclusões
% Apresentar e enviar via SIGAA:
%   - Mostrar funcionando
%   - Documentar código
%   - Compor um manual
%   - explicando como funciona.
%   - regras, deduções, etc. 

% - Personagens de Naruto Classico

% Asuma Sarutobi
% Choji Akimichi
% Gaara
% Haku
% Hinata Hyuga
% Ino Yamanaka
% Iruka Umino
% Itachi Uchiha
% Jiraiya
% Kabuto Yakushi
% Kakashi Hatake
% Kiba Inuzuka
% Kimimaro
% Kurenai Yuhi
% Might Guy
% Minato Namikaze
% Naruto Uzumaki
% Neji Hyuga
% Orochimaru
% Rock Lee
% Sakura Haruno
% Sarutobi Hiruzen
% Sasuke Uchiha
% Shikamaru Nara
% Shino Aburame
% Tenten
% Tsunade Senju
% Zabuza Momochi

% Classificações em ordem:
% - Sexo
% - Cor do cabelo
% - Cor dos olhos
% - Cla
% - Equipe
% - Sensei
% - Aluno
% - Jutsu

iniciar :- hipotese(Personagem),
        write('Eu acho que o personagem é: '),
        write(Personagem),
        nl,
        undo.

% Iniciar a dedução
% hipoteses de personagens a serem testadas
hipotese(asuma_sarutobi) :- asuma_sarutobi, !.
hipotese(choji_akimichi) :- choji_akimichi, !.
hipotese(gaara) :- gaara, !.
hipotese(haku) :- haku, !.
hipotese(hinata_hyuuga) :- hinata_hyuuga, !.
hipotese(ino_yamanaka) :- ino_yamanaka, !.
hipotese(iruka_umino) :- iruka_umino, !.
hipotese(itachi_uchiha) :- itachi_uchiha, !.
hipotese(jiraiya) :- jiraiya, !.
hipotese(kabuto_yakushi) :- kabuto_yakushi, !.
hipotese(kakashi_hatake) :- kakashi_hatake, !.
hipotese(kiba_inuzuka) :- kiba_inuzuka, !.
hipotese(kimimaro) :- kimimaro, !.
hipotese(kurenai_yuhi) :- kurenai_yuhi, !.
hipotese(might_guy) :- might_guy, !.
hipotese(minato_namikaze) :- minato_namikaze, !.
hipotese(naruto_uzumaki) :- naruto_uzumaki, !.
hipotese(neji_hyuuga) :- neji_hyuuga, !.
hipotese(orochimaru) :- orochimaru, !.
hipotese(rock_lee) :- rock_lee, !.
hipotese(sakura_haruno) :- sakura_haruno, !.
hipotese(sarutobi_hiruzen) :- sarutobi_hiruzen, !.
hipotese(sasuke_uchiha) :- sasuke_uchiha, !.
hipotese(shikamaru_nara) :- shikamaru_nara, !.
hipotese(shino_aburame) :- shino_aburame, !.
hipotese(desconhecido).

% Regras de classificação

%sexo
sexo_masculino :- verificar(eh_do_sexo_masculino), !.
sexo_feminino :- verificar(eh_do_sexo_feminino), !.

%cabelo
cabelo_loiro :- verificar(tem_cabelo_loiro), !.
cabelo_preto:- verificar(tem_cabelo_preto), !.
cabelo_castanho :- verificar(tem_cabelo_castanho), !.
cabelo_vermelho :- verificar(tem_cabelo_vermelho), !.
cabelo_cinza :- verificar(tem_cabelo_cinza), !.
cabelo_azul :- verificar(tem_cabelo_azul), !.

% Olhos
olhos_azul :- verificar(tem_olhos_azul), !.
olhos_preto :- verificar(tem_olhos_preto), !.
olhos_cinza :- verificar(tem_olhos_cinza), !.
olhos_sharingan :- verificar(tem_olhos_sharingan), !.
olhos_byakugan :- verificar(tem_olhos_byakugan), !.

% Clã
cla_uzumaki :- verificar(eh_do_cla_uzumaki), !.
cla_uchiha :- verificar(eh_do_cla_uchiha), !.
cla_hyuuga :- verificar(eh_do_cla_hyuuga), !.
cla_nara :- verificar(eh_do_cla_nara), !.
cla_akimichi :- verificar(eh_do_cla_akimichi), !.
cla_yamanaka :- verificar(eh_do_cla_yamanaka), !.
cla_aburame :- verificar(eh_do_cla_aburame), !.
cla_inuzuka :- verificar(eh_do_cla_inuzuka), !.
cla_sarutobi :- verificar(eh_do_cla_sarutobi), !.
cla_hatake :- verificar(eh_do_cla_hatake), !.
cla_yuhi :- verificar(eh_do_cla_yuhi), !.

% Equipe
equipe_time_7 :- verificar(eh_do_time_7), !.
equipe_time_10 :- verificar(eh_do_time_10), !.
equipe_time_8 :- verificar(eh_do_time_8), !.
equipe_time_guy :- verificar(eh_do_time_guy), !.
equipe_sand :- verificar(eh_do_time_sand), !.
equipe_akatsuki :- verificar(eh_do_time_akatsuki), !.
equipe_time_minato :- verificar(eh_do_time_minato), !.
equipe_time_hiruzen :- verificar(eh_do_time_hiruzen), !.
equipe_time_jiraiya :- verificar(eh_do_time_jiraiya), !.
equipe_time_4_hokages :- verificar(eh_do_time_4_hokages), !.
equipe_time_3_sannins :- verificar(eh_do_time_3_sannins), !.

% Sensei
sensei_kakashi :- verificar(eh_do_sensei_kakashi), !.
sensei_saruotbi :- verificar(eh_do_sensei_sarutobi), !.
sensei_kurenai :- verificar(eh_do_sensei_kurenai), !.
sensei_guy :- verificar(eh_do_sensei_guy), !.
sensei_baki :- verificar(eh_do_sensei_baki), !.
sensei_sasori :- verificar(eh_do_sensei_sasori), !.
sensei_hiruzen :- verificar(eh_do_sensei_hiruzen), !.
sensei_kakuzu :- verificar(eh_do_sensei_kakuzu), !.
sensei_pain :- verificar(eh_do_sensei_pain), !.

% Aluno
aluno_naruto :- verificar(eh_do_aluno_naruto), !.
aluno_sasuke :- verificar(eh_do_aluno_sasuke), !.
aluno_sakura :- verificar(eh_do_aluno_sakura), !.
aluno_choji :- verificar(eh_do_aluno_choji), !.
aluno_shikamaru :- verificar(eh_do_aluno_shikamaru), !.
aluno_ino :- verificar(eh_do_aluno_ino), !.
aluno_kiba :- verificar(eh_do_aluno_kiba), !.
aluno_hinata :- verificar(eh_do_aluno_hinata), !.
aluno_shino :- verificar(eh_do_aluno_shino), !.
aluno_rock_lee :- verificar(eh_do_aluno_rock_lee), !.
aluno_neji :- verificar(eh_do_aluno_neji), !.
aluno_tenten :- verificar(eh_do_aluno_tenten), !.
aluno_gaara :- verificar(eh_do_aluno_gaara), !.
aluno_kankuro :- verificar(eh_do_aluno_kankuro), !.
aluno_temari :- verificar(eh_do_aluno_temari), !.

% Jutsus
jutsu_katon :- verificar(usa_jutsu_katon), !.
jutsu_futon :- verificar(usa_jutsu_futon), !.
jutsu_doton :- verificar(usa_jutsu_doton), !.
jutsu_suiton :- verificar(usa_jutsu_suiton), !.
jutsu_raiton :- verificar(usa_jutsu_raiton), !.
jutsu_mokuton :- verificar(usa_jutsu_mokuton), !.
jutsu_bakuton :- verificar(usa_jutsu_bakuton), !.
jutsu_byakugan :- verificar(usa_jutsu_byakugan), !.
jutsu_sharingan :- verificar(usa_jutsu_sharingan), !.
jutsu_taijutsu :- verificar(usa_jutsu_taijutsu), !.
jutsu_genjutsu :- verificar(usa_jutsu_gensutsu), !.
jutsus_medicos :- verificar(usa_jutsus_medicos), !.
jutsu_kuchiyose :- verificar(usa_jutsu_kuchiyose), !.
jutsu_kekkei_genkai :- verificar(usa_jutsu_kekkei_genkai), !.
jutsu_hyoton :- verificar(usa_jutsu_hyoton), !.
jutsu_kage_bunshin :- verificar(usa_jutsu_kage_bunshin), !.
jutsu_kage_mane :- verificar(usa_jutsu_kage_mane), !.
jutsu_hiraishin :- verificar(usa_jutsu_hiraishin), !.
jutsu_raikiri :- verificar(usa_jutsu_raikiri), !.

% % Personagens
% usando a ordem do sexo, cabelo, olhos, clã, equipe, sensei, aluno, jutsu
asuma_sarutobi :- sexo_masculino, cabelo_castanho, olhos_preto, cla_sarutobi, equipe_time_10, sensei_saruotbi, jutsu_katon, jutsu_taijutsu, jutsus_medicos.

choji_akimichi :- sexo_masculino, cabelo_castanho, olhos_preto, cla_akimichi, equipe_time_10, sensei_saruotbi, jutsu_taijutsu, jutsus_medicos.

gaara :- sexo_masculino, cabelo_ruivo, olhos_azul, cla_sabaku, equipe_sand, sensei_baki, jutsu_suiton, jutsu_doton.

haku :- sexo_masculino, cabelo_prateado, olhos_azul, cla_yuki, equipe_time_zabuza, sensei_zabuza, jutsu_suiton, jutsu_hyoton.

hinata_hyuuga :- sexo_feminino, cabelo_azul, olhos_branco, cla_hyuuga, equipe_time_7, sensei_kurenai, jutsu_byakugan, jutsu_taijutsu.

ino_yamanaka :- sexo_feminino, cabelo_loiro, olhos_azul, cla_yamanaka, equipe_time_10, sensei_kakashi, jutsu_genjutsu.

iruka_umino :- sexo_masculino, cabelo_preto, olhos_preto, cla_umino, equipe_time_7, sensei_kakashi, jutsu_taijutsu.

itachi_uchiha :- sexo_masculino, cabelo_preto, olhos_vermelho, cla_uchiha, equipe_time_akatsuki, sensei_kakuzu, jutsu_genjutsu, jutsu_sharingan.

jiraiya :- sexo_masculino, cabelo_branco, olhos_preto, cla_sarutobi, equipe_time_jiraiya, sensei_hiruzen, jutsu_suiton, jutsu_taijutsu.

kabuto_yakushi :- sexo_masculino, cabelo_preto, olhos_preto, cla_yakushi, equipe_time_orochimaru, sensei_orochimaru, jutsu_medico, jutsu_genjutsu.

kakashi_hatake :- sexo_masculino, cabelo_branco, olhos_preto, cla_hatake, equipe_time_7, sensei_minato, jutsu_katon, jutsu_raikiri.

kiba_inuzuka :- sexo_masculino, cabelo_marrom, olhos_preto, cla_inuzuka, equipe_time_8, sensei_kurenai, jutsu_kuchiyose, jutsu_taijutsu.

kimimaro :- sexo_masculino, cabelo_branco, olhos_preto, cla_kaguya, equipe_time_orochimaru, sensei_orochimaru, jutsu_kekkei_genkai, jutsu_taijutsu.

kurenai_yuhi :- sexo_feminino, cabelo_vermelho, olhos_vermelho, cla_yuhi, equipe_time_8, sensei_arashi, jutsu_genjutsu.

might_guy :- sexo_masculino, cabelo_preto, olhos_preto, cla_hatake, equipe_time_guy, sensei_kakashi, jutsu_taijutsu.

minato_namikaze :- sexo_masculino, cabelo_amarelo, olhos_azul, cla_namikaze, equipe_time_minato, sensei_jiraiya, jutsu_hiraishin, jutsu_katon.

naruto_uzumaki :- sexo_masculino, cabelo_loiro, olhos_azul, cla_uzumaki, equipe_time_7, sensei_kakashi, jutsu_kage_bunshin, jutsu_katon.

neji_hyuuga :- sexo_masculino, cabelo_marrom, olhos_branco, cla_hyuuga, equipe_time_7, sensei_kakashi, jutsu_byakugan, jutsu_taijutsu.

orochimaru :- sexo_masculino, cabelo_preto, olhos_amarelo, cla_sannin, equipe_time_orochimaru, sensei_hiruzen, jutsu_kuchiyose, jutsu_kekkei_genkai.

rock_lee :- sexo_masculino, cabelo_preto, olhos_preto, cla_lee, equipe_time_guy, sensei_guy, jutsu_taijutsu.

sakura_haruno :- sexo_feminino, cabelo_rosa, olhos_verde, cla_haruno, equipe_time_7, sensei_kakashi, jutsu_kuchiyose, jutsu_taijutsu.

sarutobi_hiruzen :- sexo_masculino, cabelo_branco, olhos_preto, cla_sarutobi, equipe_time_4_hokages, sensei_tobirama, jutsu_katon, jutsu_taijutsu.

sasuke_uchiha :- sexo_masculino, cabelo_preto, olhos_preto, cla_uchiha, equipe_time_7, sensei_orochimaru, jutsu_katon, jutsu_sharingan.

shikamaru_nara :- sexo_masculino, cabelo_preto, olhos_preto, cla_nara, equipe_time_10, sensei_arashi, jutsu_kage_mane, jutsu_taijutsu.

shino_aburame :- sexo_masculino, cabelo_preto, olhos_preto, cla_aburame, equipe_time_8, sensei_kurenai, jutsu_kuchiyose, jutsu_taijutsu.

% Perguntas ao usuário
perguntar(Questao) :-
    write('O personagem: '),
    write(Questao),
    write(' (s|n) ? '),
    read(Resposta),
    nl,
    ( (Resposta == sim ; Resposta == s)
        -> assert(yes(Questao))
        ; (Resposta == nao ; Resposta == n)
        -> assert(no(Questao))
        ; fail
        ).

:- dynamic yes/1,no/1.

% Verificar se uma resposta é sim ou não
verificar(S) :- (yes(S) -> true ;
                        (no(S)  -> fail ; perguntar(S))
                ).

% Desfazer as respostas
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.