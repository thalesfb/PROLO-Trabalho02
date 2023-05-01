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
Hanabi Hyuga
Hashirama Senju
Hidan
Hiashi Hyuga
Hiruzen Sarutobi
Hizashi Hyuga
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
Neji Hyuga
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

%inicio
iniciar :- hipotese(personagem),
      write('Eu acho que o personagem é: '),
      write(personagem),
      nl,
      undo.
  
% hipoteses a serem testadas
hipotese(asuma sarutobi) :- asuma sarutobi, !.
hipotese(baki) :- baki, !.
hipotese(chouji akimichi) :- chouji akimichi, !.
hipotese(danzo shimura) :- danzo shimura, !.
hipotese(deidara) :- deidara, !.
hipotese(fugaku uchiha) :- fugaku uchiha, !.
hipotese(gaara) :- gaara, !.
hipotese(haku) :- haku, !.
hipotese(hanabi hyuuga) :- hanabi hyuuga, !.
hipotese(hashirama senju) :- hashirama senju, !.
hipotese(hidan) :- hidan, !.
hipotese(hiashi hyuuga) :- hiashi hyuuga, !.
hipotese(hiruzen sarutobi) :- hiruzen sarutobi, !.
hipotese(hizashi hyuuga) :- hizashi hyuuga, !.
hipotese(ino yamanaka) :- ino yamanaka, !.
hipotese(itachi uchiha) :- itachi uchiha, !.
hipotese(jiraiya) :- jiraiya, !.
hipotese(kabuto yakushi) :- kabuto yakushi, !.
hipotese(kakashi hatake) :- kakashi hatake, !.
hipotese(kakuzu) :- kakuzu, !.
hipotese(kankuro) :- kankuro, !.
hipotese(kiba inuzuka) :- kiba inuzuka, !.
hipotese(kisame hoshigaki) :- kisame hoshigaki, !.
hipotese(konan) :- konan, !.
hipotese(kushina uzumaki) :- kushina uzumaki, !.
hipotese(kurenai yuhi) :- kurenai yuhi, !.
hipotese(might guy) :- might guy, !.
hipotese(mikoto uchiha) :- mikoto uchiha, !.
hipotese(minato namikaze) :- minato namikaze, !.
hipotese(naruto uzumaki) :- naruto uzumaki, !.
hipotese(neji hyuuga) :- neji hyuuga, !.
hipotese(obito uchiha) :- obito uchiha, !.
hipotese(orochimaru ) :- orochimaru , !.
hipotese(rin nohara) :- rin nohara, !.
hipotese(rock lee) :- rock lee, !.
hipotese(sai) :- sai, !.
hipotese(sakura haruno) :- sakura haruno, !.
hipotese(sasori) :- sasori, !.
hipotese(sasuke uchiha) :- sasuke uchiha, !.
hipotese(shikamaru nara) :- shikamaru nara, !.
hipotese(shino aburame) :- shino aburame, !.
hipotese(temari) :- temari , !.
hipotese(tenten) :- tenten, !.
hipotese(tobirama senju) :- tobirama senju, !.
hipotese(tsunade) :- tsunade, !.
hipotese(zabuza momochi) :- zabuza momochi, !.
hipotese(zetsu) :- zetsu, !.
hipotese(desconhecido).

% Regras de classificação

% Cor do cabelo
% Loiro
cor_cabelo(loiro, [naruto_uzumaki, ino_yamanaka, deidara, tsunade, minato_namikaze]).

% Preto
cor_cabelo(preto, [sasuke_uchiha, itachi_uchiha, fugaku_uchiha, mikoto_uchila, hinata_hyuga, neji_hyuga, hiashi_hyuga, hizashi_hyuga, hanabi_hyuga, sai, iruka_umino, kabuto_yakushi, orochimaru, haku]).

% Castanho
cor_cabelo(castanho, [sakura_haruno, shikamaru_nara, choji_akimichi, kurenai_yuhi, hiruzen_sarutobi, asuma_sarutobi, rin_nohara, tenten]).

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
cor_olhos(preto, [sasuke_uchiha, hinata_hyuga, neji_hyuga, shikamaru_nara, choji_akimichi, rock_lee, tenten, kurenai_yuhi, asuma_sarutobi]).

% Cinza
cor_olhos(cinza, [kakashi_hatake]).

% Sharingan
cor_olhos(sharingan, [itachi_uchiha, sasuke_uchiha, obito_uchiha]).

% Clã
cla(uzumaki, [naruto_uzumaki, kushina_uzumaki]).
cla(uchiha, [sasuke_uchiha, itachi_uchiha, fugaku_uchiha, mikoto_uchiha]).
cla(hyuga, [hinata_hyuga, neji_hyuga, hiashi_hyuga, hizashi_hyuga, hanabi_hyuga]).
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
equipe(time_8, [kiba_inuzuka, hinata_hyuga, shino_aburame, kurenai_yuhi]).
equipe(time_guy, [rock_lee, neji_hyuga, tenten, might_guy]).
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
sensei(kurenai_yuhi, [kiba_inuzuka, hinata_hyuga, shino_aburame]).
sensei(might_guy, [rock_lee, neji_hyuga, tenten]).
sensei(baki, [gaara, kankuro, temari]).

% Aluno
aluno(naruto_uzumaki, [kakashi_hatake, jiraiya, minato_namikaze, iruka_uzumaki]).
aluno(sasuke_uchiha, [kakashi_hatake, orochimaru, itachi_uchiha]).
aluno(sakura_haruno, [kakashi_hatake, tsunade]).
aluno(choji_akimichi, [asuma_sarutobi]).
aluno(shikamaru_nara, [asuma_sarutobi]).
aluno(ino_yamanaka, [asuma_sarutobi]).
aluno(kiba_inuzuka, [kurenai_yuhi]).
aluno(hinata_hyuga, [kurenai_yuhi]).
aluno(shino_aburame, [kurenai_yuhi]).
aluno(rock_lee, [might_guy]).
aluno(neji_hyuga, [might_guy]).
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
jutsu(byakugan, [hinata_hyuga, neji_hyuga]).
jutsu(sharingan, [sasuke_uchiha, itachi_uchiha, kakashi_hatake]).
jutsu(taijutsu, [rock_lee, might_guy, neji_hyuga]).
jutsu(genjutsu, [kurenai_yuhi, itachi_uchiha]).
jutsu(jutsus_medicos, [sakura_haruno, tsunade, kabuto_yakushi]).

% Regras de identificação de personagens

personagem_do_cla(X, cla) :- cla(cla, Membros), member(X, Membros).
personagem_da_equipe(X, equipe) :- equipe(equipe, Membros), member(X, Membros).
personagem_com_jutsu(X, jutsu) :- jutsu(jutsu, Usuarios), member(X, Usuarios).
personagem_cor_cabelo(X, cor) :- cor_cabelo(cor, Personagens), member(X, Personagens).
personagem_cor_olhos(X, cor) :- cor_olhos(cor, Personagens), member(X, Personagens).
personagem_do_sensei(X, sensei) :- sensei(sensei, Estudantes), member(X, Estudantes).
personagem_do_aluno(X, aluno) :- aluno(aluno, Professores), member(X, Professores).

% regras de identificação do personagem
asuma sarutobi :- personagem_do_cla(asuma_sarutobi, cla),
                  personagem_da_equipe(asuma_sarutobi, equipe),
                  personagem_com_jutsu(asuma_sarutobi, jutsu),
                  personagem_cor_cabelo(asuma_sarutobi, cor),
                  personagem_cor_olhos(asuma_sarutobi, cor),
                  personagem_do_sensei(asuma_sarutobi, sensei),
                  personagem_do_aluno(asuma_sarutobi, aluno).
kabi :- personagem_do_cla(kabi, cla),
        personagem_da_equipe(kabi, equipe),
        personagem_com_jutsu(kabi, jutsu),
        personagem_cor_cabelo(kabi, cor),
        personagem_cor_olhos(kabi, cor),
        personagem_do_sensei(kabi, sensei),
        personagem_do_aluno(kabi, aluno).
chouji akimichi :- personagem_do_cla(chouji_akimichi, cla),
                   personagem_da_equipe(chouji_akimichi, equipe),
                   personagem_com_jutsu(chouji_akimichi, jutsu),
                   personagem_cor_cabelo(chouji_akimichi, cor),
                   personagem_cor_olhos(chouji_akimichi, cor),
                   personagem_do_sensei(chouji_akimichi, sensei),
                   personagem_do_aluno(chouji_akimichi, aluno).
danzo shimura :- personagem_do_cla(danzo_shimura, cla),
                 personagem_da_equipe(danzo_shimura, equipe),
                 personagem_com_jutsu(danzo_shimura, jutsu),
                 personagem_cor_cabelo(danzo_shimura, cor),
                 personagem_cor_olhos(danzo_shimura, cor),
                 personagem_do_sensei(danzo_shimura, sensei),
                 personagem_do_aluno(danzo_shimura, aluno).
deidara :- personagem_do_cla(deidara, cla),
            personagem_da_equipe(deidara, equipe),
            personagem_com_jutsu(deidara, jutsu),
            personagem_cor_cabelo(deidara, cor),
            personagem_cor_olhos(deidara, cor),
            personagem_do_sensei(deidara, sensei),
            personagem_do_aluno(deidara, aluno).
fugaku uchiha :- personagem_do_cla(fugaku_uchiha, cla),
                 personagem_da_equipe(fugaku_uchiha, equipe),
                 personagem_com_jutsu(fugaku_uchiha, jutsu),
                 personagem_cor_cabelo(fugaku_uchiha, cor),
                 personagem_cor_olhos(fugaku_uchiha, cor),
                 personagem_do_sensei(fugaku_uchiha, sensei),
                 personagem_do_aluno(fugaku_uchiha, aluno).
gaara :- personagem_do_cla(gaara, cla),
         personagem_da_equipe(gaara, equipe),
         personagem_com_jutsu(gaara, jutsu),
         personagem_cor_cabelo(gaara, cor),
         personagem_cor_olhos(gaara, cor),
         personagem_do_sensei(gaara, sensei),
         personagem_do_aluno(gaara, aluno).
haku :- personagem_do_cla(haku, cla),
        personagem_da_equipe(haku, equipe),
        personagem_com_jutsu(haku, jutsu),
        personagem_cor_cabelo(haku, cor),
        personagem_cor_olhos(haku, cor),
        personagem_do_sensei(haku, sensei),
        personagem_do_aluno(haku, aluno).
hanabi hyuuga :- personagem_do_cla(hanabi_hyuuga, cla),
                 personagem_da_equipe(hanabi_hyuuga, equipe),
                 personagem_com_jutsu(hanabi_hyuuga, jutsu),
                 personagem_cor_cabelo(hanabi_hyuuga, cor),
                 personagem_cor_olhos(hanabi_hyuuga, cor),
                 personagem_do_sensei(hanabi_hyuuga, sensei),
                 personagem_do_aluno(hanabi_hyuuga, aluno).
hashirama senju :- personagem_do_cla(hashirama_senju, cla),
                   personagem_da_equipe(hashirama_senju, equipe),
                   personagem_com_jutsu(hashirama_senju, jutsu),
                   personagem_cor_cabelo(hashirama_senju, cor),
                   personagem_cor_olhos(hashirama_senju, cor),
                   personagem_do_sensei(hashirama_senju, sensei),
                   personagem_do_aluno(hashirama_senju, aluno).
hidan :- personagem_do_cla(hidan, cla),
          personagem_da_equipe(hidan, equipe),
          personagem_com_jutsu(hidan, jutsu),
          personagem_cor_cabelo(hidan, cor),
          personagem_cor_olhos(hidan, cor),
          personagem_do_sensei(hidan, sensei),
          personagem_do_aluno(hidan, aluno).
hiashi hyuga :- personagem_do_cla(hiashi_hyuga, cla),
                personagem_da_equipe(hiashi_hyuga, equipe),
                personagem_com_jutsu(hiashi_hyuga, jutsu),
                personagem_cor_cabelo(hiashi_hyuga, cor),
                personagem_cor_olhos(hiashi_hyuga, cor),
                personagem_do_sensei(hiashi_hyuga, sensei),
                personagem_do_aluno(hiashi_hyuga, aluno).
hiruzen sarutobi :- personagem_do_cla(hiruzen_sarutobi, cla),
                    personagem_da_equipe(hiruzen_sarutobi, equipe),
                    personagem_com_jutsu(hiruzen_sarutobi, jutsu),
                    personagem_cor_cabelo(hiruzen_sarutobi, cor),
                    personagem_cor_olhos(hiruzen_sarutobi, cor),
                    personagem_do_sensei(hiruzen_sarutobi, sensei),
                    personagem_do_aluno(hiruzen_sarutobi, aluno).
hizashi hyuga :- personagem_do_cla(hizashi_hyuga, cla),
                 personagem_da_equipe(hizashi_hyuga, equipe),
                 personagem_com_jutsu(hizashi_hyuga, jutsu),
                 personagem_cor_cabelo(hizashi_hyuga, cor),
                 personagem_cor_olhos(hizashi_hyuga, cor),
                 personagem_do_sensei(hizashi_hyuga, sensei),
                 personagem_do_aluno(hizashi_hyuga, aluno).
ino yamanaka :- personagem_do_cla(ino_yamanaka, cla),
                personagem_da_equipe(ino_yamanaka, equipe),
                personagem_com_jutsu(ino_yamanaka, jutsu),
                personagem_cor_cabelo(ino_yamanaka, cor),
                personagem_cor_olhos(ino_yamanaka, cor),
                personagem_do_sensei(ino_yamanaka, sensei),
                personagem_do_aluno(ino_yamanaka, aluno).
itachi uchiha :- personagem_do_cla(itachi_uchiha, cla),
                 personagem_da_equipe(itachi_uchiha, equipe),
                 personagem_com_jutsu(itachi_uchiha, jutsu),
                 personagem_cor_cabelo(itachi_uchiha, cor),
                 personagem_cor_olhos(itachi_uchiha, cor),
                 personagem_do_sensei(itachi_uchiha, sensei),
                 personagem_do_aluno(itachi_uchiha, aluno).
jiraiya :- personagem_do_cla(jiraiya, cla),
           personagem_da_equipe(jiraiya, equipe),
           personagem_com_jutsu(jiraiya, jutsu),
           personagem_cor_cabelo(jiraiya, cor),
           personagem_cor_olhos(jiraiya, cor),
           personagem_do_sensei(jiraiya, sensei),
           personagem_do_aluno(jiraiya, aluno).
kabuto yakushi :- personagem_do_cla(kabuto_yakushi, cla),
                  personagem_da_equipe(kabuto_yakushi, equipe),
                  personagem_com_jutsu(kabuto_yakushi, jutsu),
                  personagem_cor_cabelo(kabuto_yakushi, cor),
                  personagem_cor_olhos(kabuto_yakushi, cor),
                  personagem_do_sensei(kabuto_yakushi, sensei),
                  personagem_do_aluno(kabuto_yakushi, aluno).
kakashi hatake :- personagem_do_cla(kakashi_hatake, cla),
                  personagem_da_equipe(kakashi_hatake, equipe),
                  personagem_com_jutsu(kakashi_hatake, jutsu),
                  personagem_cor_cabelo(kakashi_hatake, cor),
                  personagem_cor_olhos(kakashi_hatake, cor),
                  personagem_do_sensei(kakashi_hatake, sensei),
                  personagem_do_aluno(kakashi_hatake, aluno).
kakuzo :- personagem_do_cla(kakuzo, cla),
          personagem_da_equipe(kakuzo, equipe),
          personagem_com_jutsu(kakuzo, jutsu),
          personagem_cor_cabelo(kakuzo, cor),
          personagem_cor_olhos(kakuzo, cor),
          personagem_do_sensei(kakuzo, sensei),
          personagem_do_aluno(kakuzo, aluno).
kankuro :- personagem_do_cla(kankuro, cla),
            personagem_da_equipe(kankuro, equipe),
            personagem_com_jutsu(kankuro, jutsu),
            personagem_cor_cabelo(kankuro, cor),
            personagem_cor_olhos(kankuro, cor),
            personagem_do_sensei(kankuro, sensei),
            personagem_do_aluno(kankuro, aluno).
kiba inuzuka :- personagem_do_cla(kiba_inuzuka, cla),
        personagem_da_equipe(kiba_inuzuka, equipe),
        personagem_com_jutsu(kiba_inuzuka, jutsu),
        personagem_cor_cabelo(kiba_inuzuka, cor),
        personagem_cor_olhos(kiba_inuzuka, cor),
        personagem_do_sensei(kiba_inuzuka, sensei),
        personagem_do_aluno(kiba_inuzuka, aluno).
kisame hoshigaki :- personagem_do_cla(kisame_hoshigaki, cla),
                    personagem_da_equipe(kisame_hoshigaki, equipe),
                    personagem_com_jutsu(kisame_hoshigaki, jutsu),
                    personagem_cor_cabelo(kisame_hoshigaki, cor),
                    personagem_cor_olhos(kisame_hoshigaki, cor),
                    personagem_do_sensei(kisame_hoshigaki, sensei),
                    personagem_do_aluno(kisame_hoshigaki, aluno).
konan :- personagem_do_cla(konan, cla),
          personagem_da_equipe(konan, equipe),
          personagem_com_jutsu(konan, jutsu),
          personagem_cor_cabelo(konan, cor),
          personagem_cor_olhos(konan, cor),
          personagem_do_sensei(konan, sensei),
          personagem_do_aluno(konan, aluno).
kushina uzumaki :- personagem_do_cla(kushina_uzumaki, cla),
                   personagem_da_equipe(kushina_uzumaki, equipe),
                   personagem_com_jutsu(kushina_uzumaki, jutsu),
                   personagem_cor_cabelo(kushina_uzumaki, cor),
                   personagem_cor_olhos(kushina_uzumaki, cor),
                   personagem_do_sensei(kushina_uzumaki, sensei),
                   personagem_do_aluno(kushina_uzumaki, aluno).
kurenai yuhi :- personagem_do_cla(kurenai_yuhi, cla),
                personagem_da_equipe(kurenai_yuhi, equipe),
                personagem_com_jutsu(kurenai_yuhi, jutsu),
                personagem_cor_cabelo(kurenai_yuhi, cor),
                personagem_cor_olhos(kurenai_yuhi, cor),
                personagem_do_sensei(kurenai_yuhi, sensei),
                personagem_do_aluno(kurenai_yuhi, aluno).
might guy :- personagem_do_cla(might_guy, cla),
             personagem_da_equipe(might_guy, equipe),
             personagem_com_jutsu(might_guy, jutsu),
             personagem_cor_cabelo(might_guy, cor),
             personagem_cor_olhos(might_guy, cor),
             personagem_do_sensei(might_guy, sensei),
             personagem_do_aluno(might_guy, aluno).
mikoto uchiha :- personagem_do_cla(mikoto_uchiha, cla),
                 personagem_da_equipe(mikoto_uchiha, equipe),
                 personagem_com_jutsu(mikoto_uchiha, jutsu),
                 personagem_cor_cabelo(mikoto_uchiha, cor),
                 personagem_cor_olhos(mikoto_uchiha, cor),
                 personagem_do_sensei(mikoto_uchiha, sensei),
                 personagem_do_aluno(mikoto_uchiha, aluno).
minato namikaze :- personagem_do_cla(minato_namikaze, cla),
                   personagem_da_equipe(minato_namikaze, equipe),
                   personagem_com_jutsu(minato_namikaze, jutsu),
                   personagem_cor_cabelo(minato_namikaze, cor),
                   personagem_cor_olhos(minato_namikaze, cor),
                   personagem_do_sensei(minato_namikaze, sensei),
                   personagem_do_aluno(minato_namikaze, aluno).
naruto uzumaki :- personagem_do_cla(naruto_uzumaki, cla),
                  personagem_da_equipe(naruto_uzumaki, equipe),
                  personagem_com_jutsu(naruto_uzumaki, jutsu),
                  personagem_cor_cabelo(naruto_uzumaki, cor),
                  personagem_cor_olhos(naruto_uzumaki, cor),
                  personagem_do_sensei(naruto_uzumaki, sensei),
                  personagem_do_aluno(naruto_uzumaki, aluno).
neji hyuga :- personagem_do_cla(neji_hyuga, cla),
              personagem_da_equipe(neji_hyuga, equipe),
              personagem_com_jutsu(neji_hyuga, jutsu),
              personagem_cor_cabelo(neji_hyuga, cor),
              personagem_cor_olhos(neji_hyuga, cor),
              personagem_do_sensei(neji_hyuga, sensei),
              personagem_do_aluno(neji_hyuga, aluno).
obito uchiha :- personagem_do_cla(obito_uchiha, cla),
                personagem_da_equipe(obito_uchiha, equipe),
                personagem_com_jutsu(obito_uchiha, jutsu),
                personagem_cor_cabelo(obito_uchiha, cor),
                personagem_cor_olhos(obito_uchiha, cor),
                personagem_do_sensei(obito_uchiha, sensei),
                personagem_do_aluno(obito_uchiha, aluno).
orochimaru :- personagem_do_cla(orochimaru, cla),
              personagem_da_equipe(orochimaru, equipe),
              personagem_com_jutsu(orochimaru, jutsu),
              personagem_cor_cabelo(orochimaru, cor),
              personagem_cor_olhos(orochimaru, cor),
              personagem_do_sensei(orochimaru, sensei),
              personagem_do_aluno(orochimaru, aluno).
rin nohara :- personagem_do_cla(rin_nohara, cla),
              personagem_da_equipe(rin_nohara, equipe),
              personagem_com_jutsu(rin_nohara, jutsu),
              personagem_cor_cabelo(rin_nohara, cor),
              personagem_cor_olhos(rin_nohara, cor),
              personagem_do_sensei(rin_nohara, sensei),
              personagem_do_aluno(rin_nohara, aluno).
rock lee :- personagem_do_cla(rock_lee, cla),
            personagem_da_equipe(rock_lee, equipe),
            personagem_com_jutsu(rock_lee, jutsu),
            personagem_cor_cabelo(rock_lee, cor),
            personagem_cor_olhos(rock_lee, cor),
            personagem_do_sensei(rock_lee, sensei),
            personagem_do_aluno(rock_lee, aluno).
sai :- personagem_do_cla(sai, cla),
       personagem_da_equipe(sai, equipe),
       personagem_com_jutsu(sai, jutsu),
       personagem_cor_cabelo(sai, cor),
       personagem_cor_olhos(sai, cor),
       personagem_do_sensei(sai, sensei),
       personagem_do_aluno(sai, aluno).
sakura haruno :- personagem_do_cla(sakura_haruno, cla),
                 personagem_da_equipe(sakura_haruno, equipe),
                 personagem_com_jutsu(sakura_haruno, jutsu),
                 personagem_cor_cabelo(sakura_haruno, cor),
                 personagem_cor_olhos(sakura_haruno, cor),
                 personagem_do_sensei(sakura_haruno, sensei),
                 personagem_do_aluno(sakura_haruno, aluno).
sasori :- personagem_do_cla(sasori, cla),
          personagem_da_equipe(sasori, equipe),
          personagem_com_jutsu(sasori, jutsu),
          personagem_cor_cabelo(sasori, cor),
          personagem_cor_olhos(sasori, cor),
          personagem_do_sensei(sasori, sensei),
          personagem_do_aluno(sasori, aluno).
sasuke uchiha :- personagem_do_cla(sasuke_uchiha, cla),
                 personagem_da_equipe(sasuke_uchiha, equipe),
                 personagem_com_jutsu(sasuke_uchiha, jutsu),
                 personagem_cor_cabelo(sasuke_uchiha, cor),
                 personagem_cor_olhos(sasuke_uchiha, cor),
                 personagem_do_sensei(sasuke_uchiha, sensei),
                 personagem_do_aluno(sasuke_uchiha, aluno).
shikamaru nara :- personagem_do_cla(shikamaru_nara, cla),
                  personagem_da_equipe(shikamaru_nara, equipe),
                  personagem_com_jutsu(shikamaru_nara, jutsu),
                  personagem_cor_cabelo(shikamaru_nara, cor),
                  personagem_cor_olhos(shikamaru_nara, cor),
                  personagem_do_sensei(shikamaru_nara, sensei),
                  personagem_do_aluno(shikamaru_nara, aluno).
shino aburame :- personagem_do_cla(shino_aburame, cla),
                  personagem_da_equipe(shino_aburame, equipe),
                  personagem_com_jutsu(shino_aburame, jutsu),
                  personagem_cor_cabelo(shino_aburame, cor),
                  personagem_cor_olhos(shino_aburame, cor),
                  personagem_do_sensei(shino_aburame, sensei),
                  personagem_do_aluno(shino_aburame, aluno).
temari :- personagem_do_cla(temari, cla),
          personagem_da_equipe(temari, equipe),
          personagem_com_jutsu(temari, jutsu),
          personagem_cor_cabelo(temari, cor),
          personagem_cor_olhos(temari, cor),
          personagem_do_sensei(temari, sensei),
          personagem_do_aluno(temari, aluno).
tenten :- personagem_do_cla(tenten, cla),
          personagem_da_equipe(tenten, equipe),
          personagem_com_jutsu(tenten, jutsu),
          personagem_cor_cabelo(tenten, cor),
          personagem_cor_olhos(tenten, cor),
          personagem_do_sensei(tenten, sensei),
          personagem_do_aluno(tenten, aluno).
tobirama senju :- personagem_do_cla(tobirama_senju, cla),
                  personagem_da_equipe(tobirama_senju, equipe),
                  personagem_com_jutsu(tobirama_senju, jutsu),
                  personagem_cor_cabelo(tobirama_senju, cor),
                  personagem_cor_olhos(tobirama_senju, cor),
                  personagem_do_sensei(tobirama_senju, sensei),
                  personagem_do_aluno(tobirama_senju, aluno).
tsunade :- personagem_do_cla(tsunade, cla),
            personagem_da_equipe(tsunade, equipe),
            personagem_com_jutsu(tsunade, jutsu),
            personagem_cor_cabelo(tsunade, cor),
            personagem_cor_olhos(tsunade, cor),
            personagem_do_sensei(tsunade, sensei),
            personagem_do_aluno(tsunade, aluno).
zabuza momochi :- personagem_do_cla(zabuza_momochi, cla),
                  personagem_da_equipe(zabuza_momochi, equipe),
                  personagem_com_jutsu(zabuza_momochi, jutsu),
                  personagem_cor_cabelo(zabuza_momochi, cor),
                  personagem_cor_olhos(zabuza_momochi, cor),
                  personagem_do_sensei(zabuza_momochi, sensei),
                  personagem_do_aluno(zabuza_momochi, aluno).
zetsu :- personagem_do_cla(zetsu, cla),
          personagem_da_equipe(zetsu, equipe),
          personagem_com_jutsu(zetsu, jutsu),
          personagem_cor_cabelo(zetsu, cor),
          personagem_cor_olhos(zetsu, cor),
          personagem_do_sensei(zetsu, sensei),
          personagem_do_aluno(zetsu, aluno).


% perguntas para o usuário
perguntar(Questão) :-
    write('O personagem tem o seguinte atributo: '),
    write(Questão),
    write(' (s|n) ? '),
    read(Resposta),
    nl,
    ( (Resposta == sim ; Resposta == s)
      ->
       assert(yes(Questão)) ;
       assert(no(Questão)), fail).

% Resposta sim/nao
:- dynamic yes/1,no/1.
verificar(S) :- (yes(S) -> true ;
                        (no(S)  -> fail ; perguntar(S))
                 ).

% Desfaz as respostas
undo :- retract(personagem(_)),fail.
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.