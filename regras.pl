% Definição de hierarquia de categorias
e_um(cachorro, mamifero).
e_um(gato, mamifero).
e_um(passaro, ave).
e_um(peixe, animal_aquatico).
e_um(cavalo, mamifero).
e_um(cobra, reptil).
e_um(tartaruga, reptil).
e_um(elefante, mamifero).

e_um(mamifero, vertebrado).
e_um(ave, vertebrado).
e_um(reptil, vertebrado).
e_um(animal_aquatico, vertebrado).

e_um(vertebrado, animal).
e_um(animal, ser_vivo).

% Propriedades
possui(mamifero, sangue_quente).
possui(ave, sangue_quente).
possui(reptil, sangue_frio).
possui(animal_aquatico, guelras).

possui(cachorro, late).
possui(cachorro, domestico).
possui(gato, mia).
possui(gato, domestico).
possui(passaro, voa).
possui(peixe, nadadeiras).
possui(peixe, vive_em_agua).
possui(cavalo, grande).
possui(cobra, rasteja).
possui(cobra, carnivoro).
possui(tartaruga, casco).
possui(elefante, grande).
possui(elefante, tromba).

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

% Definição de características por animal
caracteristicas_animal(leão, ["diurno", "carnívoro", "savana", "não_voa", "grande", "garras", "caçador"]).
caracteristicas_animal(tigre, ["noturno", "carnívoro", "floresta", "não_voa", "listras", "grande", "caçador"]).
caracteristicas_animal(macaco, ["diurno", "onívoro", "floresta", "não_voa", "pequeno", "brincalhão", "polegar opositor"]).

% ... (Outras características de animais podem ser adicionadas aqui)

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
