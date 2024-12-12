% Definição de hierarquia de categorias
e_um(leão, predadores).
e_um(tigre, predadores).
e_um(macaco, primatas).
e_um(chimpanzé, primatas).
e_um(águia, rapinantes).
e_um(falcão, rapinantes).
e_um(pardal, aves).
e_um(andorinha, aves).
e_um(cobra, rastejantes).
e_um(lagarto, rastejantes).
e_um(besouro, besouros).
e_um(joaninha, besouros).
e_um(borboleta, borboletas).
e_um(mariposa, borboletas).
e_um(abelha, insetos).
e_um(caracol, gastrópodes).
e_um(lesma, gastrópodes).

e_um(predadores, ordem).
e_um(primatas, ordem).
e_um(rapinantes, ordem).
e_um(aves, ordem).
e_um(rastejantes, ordem).
e_um(besouros, ordem).
e_um(borboletas, ordem).
e_um(insetos, ordem).
e_um(gastrópodes, ordem).

e_um(ordem, classe).
e_um(classe, filo).
e_um(filo, ser_vivo).

% Propriedades
possui(predadores, "caçam para sobreviver").
possui(primatas, "vivem em árvores").
possui(rapinantes, "têm bico curvado").
possui(aves, "voam").
possui(rastejantes, "se movem rastejando").
possui(besouros, "têm asas rígidas").
possui(borboletas, "têm asas coloridas").
possui(insetos, "produzem mel").
possui(gastrópodes, "se movem lentamente").

possui(leão, "grande").
possui(leão, "carnívoro").
possui(tigre, "listras").
possui(tigre, "carnívoro").
possui(macaco, "brincalhão").
possui(macaco, "polegar opositor").
possui(chimpanzé, "inteligente").
possui(chimpanzé, "usa ferramentas").
possui(águia, "garras").
possui(águia, "caçador").
possui(falcão, "veloz").
possui(falcão, "caçador").
possui(pardal, "sociável").
possui(andorinha, "migratória").
possui(cobra, "escamas").
possui(cobra, "silenciosa").
possui(lagarto, "rápido").
possui(besouro, "corpo compacto").
possui(joaninha, "vermelha com pintas").
possui(borboleta, "se alimenta de néctar").
possui(mariposa, "atraída por luz").
possui(abelha, "vive em colmeias").
possui(caracol, "concha").
possui(lesma, "sem concha").

% Regras para verificar as propriedades
tem_propriedade(Animal, Propriedade) :-
    possui(Animal, Propriedade).
tem_propriedade(Animal, Propriedade) :-
    e_um(Animal, Categoria),
    tem_propriedade(Categoria, Propriedade).

% Filtragem por características
filtrar_animais(Animais, Caracteristica, sim, Filtrados) :-
    include(tem_caracteristica(Caracteristica), Animais, Filtrados).

filtrar_animais(Animais, Caracteristica, nao, Filtrados) :-
    exclude(tem_caracteristica(Caracteristica), Animais, Filtrados).

filtrar_animais(Animais, _, nao_sei, Animais).

% Lógica de checagem de características
tem_caracteristica(Caracteristica, Animal) :-
    tem_propriedade(Animal, Caracteristica).
tem_caracteristica(Caracteristica, Animal) :-
    e_um(Animal, Categoria),
    tem_caracteristica(Caracteristica, Categoria).

% Perguntas e respostas
perguntar(Caracteristica, Resposta) :-
    format('O animal possui a seguinte característica: ~w? (sim/nao/nao_sei) ', [Caracteristica]),
    read(Entrada),
    ( interpretar_resposta(Entrada, Resposta) ->
        true
    ;   write('Resposta inválida. Tente novamente com "sim", "nao" ou "nao_sei".'), nl,
        perguntar(Caracteristica, Resposta)
    ).

interpretar_resposta(sim, sim).
interpretar_resposta(nao, nao).
interpretar_resposta(nao_sei, nao_sei).

% Função principal para iniciar o jogo
jogar :-
    write('Pense em um animal, e eu tentarei adivinhar.'), nl,
    encontrar_animal(Animal),
    !,
    format('O animal que você pensou é: ~w!', [Animal]), nl.

jogar :-
    write('Não consegui adivinhar o animal. Você venceu!'), nl.

% Encontra o animal baseado nas perguntas
encontrar_animal(Animal) :-
    listar_animais(Possiveis),
    escolher_animal(Possiveis, [], Animal).

listar_animais(Animais) :-
    findall(A, e_um(A, _), Animais).

escolher_animal([Animal], _, Animal) :- !.
escolher_animal([], _, _) :- fail.
escolher_animal(Possiveis, JaPerguntadas, Animal) :-
    escolher_caracteristica(Possiveis, JaPerguntadas, Caracteristica),
    perguntar(Caracteristica, Resposta),
    filtrar_animais(Possiveis, Caracteristica, Resposta, Filtrados),
    escolher_animal(Filtrados, [Caracteristica | JaPerguntadas], Animal).

% Escolher a próxima característica a ser perguntada
escolher_caracteristica(Animais, JaPerguntadas, Caracteristica) :-
    findall(C, (member(A, Animais), tem_propriedade(A, C)), Caracteristicas),
    msort(Caracteristicas, CaracteristicasOrdenadas),
    list_to_set(CaracteristicasOrdenadas, CaracteristicasUnicas),
    subtract(CaracteristicasUnicas, JaPerguntadas, CaracteristicasNaoPerguntadas),
    embaralhar(CaracteristicasNaoPerguntadas, CaracteristicasEmbaralhadas),
    member(Caracteristica, CaracteristicasEmbaralhadas).

% Embaralhamento de lista para evitar repetição de perguntas
embaralhar(Lista, Embaralhada) :-
    random_permutation(Lista, Embaralhada).
