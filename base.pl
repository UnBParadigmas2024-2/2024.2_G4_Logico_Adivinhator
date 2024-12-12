% base.pl

% Declare discontiguous predicates
:- discontiguous filo/1.
:- discontiguous classe/2.
:- discontiguous caracteristicas/2.
:- discontiguous caracteristicas_animal/2.

% Questions database
pergunta(tipo_mamifero, "O animal é um mamífero?").
pergunta(tipo_ave, "O animal é uma ave?").
pergunta(tipo_reptil, "O animal é um réptil?").
pergunta(tipo_anfibio, "O animal é um anfíbio?").
pergunta(tipo_peixe, "O animal é um peixe?").
pergunta(tipo_inseto, "O animal é um inseto?").

pergunta(tamanho_grande, "O animal é grande?").
pergunta(tamanho_medio, "O animal é de tamanho médio?").
pergunta(tamanho_pequeno, "O animal é pequeno?").

pergunta(habitat_terrestre, "O animal vive em terra?").
pergunta(habitat_aquatico, "O animal vive na água?").
pergunta(habitat_aereo, "O animal passa a maior parte do tempo voando?").

pergunta(dieta_carnivoro, "O animal é carnívoro?").
pergunta(dieta_herbivoro, "O animal é herbívoro?").
pergunta(dieta_onivoro, "O animal é onívoro?").

pergunta(cobertura_pelos, "O animal tem pelos?").
pergunta(cobertura_penas, "O animal tem penas?").
pergunta(cobertura_escamas, "O animal tem escamas?").

pergunta(domestico, "O animal é doméstico?").
pergunta(selvagem, "O animal é selvagem?").

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