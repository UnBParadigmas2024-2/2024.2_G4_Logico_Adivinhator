% base.pl

% Declare discontiguous predicates
:- discontiguous caracteristicas/2.
:- discontiguous caracteristicas_animal/2.

% Animal characteristics database
caracteristicas_animal(leao, [
    tipo_mamifero, tamanho_grande, habitat_terrestre, 
    dieta_carnivoro, cobertura_pelos, selvagem,
    "tem_juba", "ruge", "vive_em_grupo", "africano"
]).

caracteristicas_animal(elefante, [
    tipo_mamifero, tamanho_grande, habitat_terrestre,
    dieta_herbivoro, cobertura_pelos, selvagem,
    "tem_tromba", "tem_presas", "inteligente", "memoria_boa"
]).

caracteristicas_animal(macaco, [
    tipo_mamifero, tamanho_medio, habitat_terrestre,
    dieta_onivoro, cobertura_pelos, selvagem,
    "tem_cauda", "tem_polegar_opositor", "trepa_arvores", "inteligente"
]).

caracteristicas_animal(aguia, [
    tipo_ave, tamanho_medio, habitat_aereo,
    dieta_carnivoro, cobertura_penas, selvagem,
    "tem_garras", "tem_bico_curvo", "boa_visao", "predador"
]).

caracteristicas_animal(pinguim, [
    tipo_ave, tamanho_medio, habitat_aquatico,
    dieta_carnivoro, cobertura_penas, selvagem,
    "nao_voa", "nada_bem", "bipede", "preto_e_branco"
]).

caracteristicas_animal(cobra, [
    tipo_reptil, tamanho_medio, habitat_terrestre,
    dieta_carnivoro, cobertura_escamas, selvagem,
    "sem_pernas", "venenosa", "lingua_bifurcada", "rasteja"
]).

caracteristicas_animal(tartaruga, [
    tipo_reptil, tamanho_medio, habitat_terrestre,
    dieta_herbivoro, cobertura_escamas, domestico,
    "tem_casco", "movimento_lento", "longeva", "retrai_cabeca"
]).

caracteristicas_animal(sapo, [
    tipo_anfibio, tamanho_pequeno, habitat_aquatico,
    dieta_carnivoro, "pele_umida", selvagem,
    "pula", "tem_lingua_comprida", "faz_croac", "metamorfose"
]).

caracteristicas_animal(tubarao, [
    tipo_peixe, tamanho_grande, habitat_aquatico,
    dieta_carnivoro, cobertura_escamas, selvagem,
    "tem_barbatanas", "tem_guelras", "predador", "dentes_afiados"
]).

caracteristicas_animal(golfinho, [
    tipo_mamifero, tamanho_grande, habitat_aquatico,
    dieta_carnivoro, "pele_lisa", selvagem,
    "inteligente", "echolocalizacao", "respira_ar", "brinca"
]).

caracteristicas_animal(borboleta, [
    tipo_inseto, tamanho_pequeno, habitat_aereo,
    dieta_herbivoro, "tem_antenas", selvagem,
    "tem_asas_coloridas", "metamorfose", "polinizadora", "voa"
]).

caracteristicas_animal(gato, [
    tipo_mamifero, tamanho_pequeno, habitat_terrestre,
    dieta_carnivoro, cobertura_pelos, domestico,
    "mia", "tem_bigodes", "noturno", "retrai_garras"
]).

caracteristicas_animal(cachorro, [
    tipo_mamifero, tamanho_medio, habitat_terrestre,
    dieta_onivoro, cobertura_pelos, domestico,
    "late", "fiel", "fareja", "abana_rabo"
]).

caracteristicas_animal(cavalo, [
    tipo_mamifero, tamanho_grande, habitat_terrestre,
    dieta_herbivoro, cobertura_pelos, domestico,
    "tem_crina", "tem_cascos", "veloz", "relincha"
]).

caracteristicas_animal(papagaio, [
    tipo_ave, tamanho_pequeno, habitat_aereo,
    dieta_onivoro, cobertura_penas, domestico,
    "fala", "colorido", "tem_bico_curvo", "longevidade_alta"
]).

caracteristicas_animal(panda, [
    tipo_mamifero, tamanho_grande, habitat_terrestre,
    dieta_herbivoro, cobertura_pelos, selvagem,
    "preto_e_branco", "come_bambu", "lento", "fofo"
]).

caracteristicas_animal(pavao, [
    tipo_ave, tamanho_medio, habitat_terrestre,
    dieta_onivoro, cobertura_penas, selvagem,
    "colorido", "cauda_imponente", "dança_para_acasalamento", "exotico"
]).

caracteristicas_animal(lobo, [
    tipo_mamifero, tamanho_medio, habitat_terrestre,
    dieta_carnivoro, cobertura_pelos, selvagem,
    "uiva", "vive_em_matilhas", "predador", "inteligente"
]).

caracteristicas_animal(camaleao, [
    tipo_reptil, tamanho_pequeno, habitat_terrestre,
    dieta_carnivoro, cobertura_escamas, selvagem,
    "muda_de_cor", "olhos_independentes", "lingua_comprida", "arboreo"
]).

caracteristicas_animal(coruja, [
    tipo_ave, tamanho_medio, habitat_terrestre,
    dieta_carnivoro, cobertura_penas, selvagem,
    "ativa_a_noite", "tem_grandes_olhos", "silenciosa", "predadora"
]).

caracteristicas_animal(urso_pardo, [
    tipo_mamifero, tamanho_grande, habitat_terrestre,
    dieta_onivoro, cobertura_pelos, selvagem,
    "pesado", "forte", "hiberna", "predador_apex"
]).

% Base de características de animais
caracteristicas_animal(canguru, [
    tipo_mamifero, tamanho_medio, habitat_terrestre,
    dieta_herbivoro, cobertura_pelos, selvagem,
    "salta", "marsupial", "australiano", "cauda_forte"
]).

caracteristicas_animal(ornitorrinco, [
    tipo_mamifero, tamanho_pequeno, habitat_aquatico,
    dieta_carnivoro, cobertura_pelos, selvagem,
    "bico_de_pato", "bota_ovos", "tem_veneno", "exotico"
]).

caracteristicas_animal(flamingo, [
    tipo_ave, tamanho_medio, habitat_aquatico,
    dieta_herbivoro, cobertura_penas, selvagem,
    "rosa", "bico_curvado", "pernas_longas", "vive_em_bando"
]).

caracteristicas_animal(hipopotamo, [
    tipo_mamifero, tamanho_grande, habitat_aquatico,
    dieta_herbivoro, cobertura_pelos, selvagem,
    "agressivo", "vive_na_agua", "dentes_grandes", "africano"
]).

caracteristicas_animal(tigre, [
    tipo_mamifero, tamanho_grande, habitat_terrestre,
    dieta_carnivoro, cobertura_pelos, selvagem,
    "listrado", "predador_apex", "ruge", "solitario"
]).

caracteristicas_animal(cervo, [
    tipo_mamifero, tamanho_medio, habitat_terrestre,
    dieta_herbivoro, cobertura_pelos, selvagem,
    "tem_chifres", "corre_rapido", "arisco", "vive_em_bando"
]).

caracteristicas_animal(porquinho_da_india, [
    tipo_mamifero, tamanho_pequeno, habitat_terrestre,
    dieta_herbivoro, cobertura_pelos, domestico,
    "roedor", "manso", "pequeno", "brinca"
]).

caracteristicas_animal(aranha, [
    tipo_inseto, tamanho_pequeno, habitat_terrestre,
    dieta_carnivoro, "tem_oito_patas", selvagem,
    "faz_teia", "venenosa", "olhos_multiplos", "silenciosa"
]).

caracteristicas_animal(urso_polar, [
    tipo_mamifero, tamanho_grande, habitat_aquatico,
    dieta_carnivoro, cobertura_pelos, selvagem,
    "vive_no_gelo", "branco", "predador", "forte"
]).

caracteristicas_animal(avestruz, [
    tipo_ave, tamanho_grande, habitat_terrestre,
    dieta_herbivoro, cobertura_penas, selvagem,
    "corre_rapido", "grande", "não_voa", "vive_em_bando"
]).

caracteristicas_animal(Serpente marinha , [sabia,tem osso,sabe assoviar]).
