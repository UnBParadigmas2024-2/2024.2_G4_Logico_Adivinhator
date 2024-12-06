:- [base_animais]. % import da base de dados

% Início do jogo
jogar :-
    write('Pense em um animal, e eu tentarei adivinhar.'), nl,
    encontrar_animal(Animal),
    !,
    format('O animal que você pensou é: ~w!', [Animal]), nl.

jogar :-
    write('Não consegui adivinhar o animal. Você venceu!'), nl.

encontrar_animal(Animal) :-
    listar_animais(Possiveis),
    escolher_animal(Possiveis, [], Animal).


listar_animais(Animais) :-
    findall(A, e_um(A, _), Animais). % num primeiro momento vai listar todos os animais


escolher_animal([Animal], _, Animal) :- !. % caso de só um animal
escolher_animal([], _, _) :- fail. % Nenhum animal restante
escolher_animal(Possiveis, JaPerguntadas, Animal) :-
    escolher_caracteristica(Possiveis, JaPerguntadas, Caracteristica),
    perguntar(Caracteristica, Resposta),
    filtrar_animais(Possiveis, Caracteristica, Resposta, Filtrados),
    escolher_animal(Filtrados, [Caracteristica | JaPerguntadas], Animal).

% Escolhe a próxima característica para perguntar
escolher_caracteristica(Animais, JaPerguntadas, Caracteristica) :-
    findall(C, (member(A, Animais), tem_propriedade(A, C)), Caracteristicas),
    msort(Caracteristicas, CaracteristicasOrdenadas), % ordena para evitar duplicatas
    list_to_set(CaracteristicasOrdenadas, CaracteristicasUnicas),
    subtract(CaracteristicasUnicas, JaPerguntadas, CaracteristicasNaoPerguntadas),
    embaralhar(CaracteristicasNaoPerguntadas, CaracteristicasEmbaralhadas),
    member(Caracteristica, CaracteristicasEmbaralhadas).

% em uma lista
embaralhar(Lista, Embaralhada) :-
    random_permutation(Lista, Embaralhada).


perguntar(Caracteristica, Resposta) :-
    format('O animal possui a seguinte característica: ~w? (sim/nao/nao_sei) ', [Caracteristica]),
    read(Entrada),
    ( interpretar_resposta(Entrada, Resposta) ->
        true
    ;   write('Resposta inválida. Tente novamente com "sim", "nao" ou "nao_sei".'), nl,
        perguntar(Caracteristica, Resposta)
    ).

% para filtrar a entrada do usuário
interpretar_resposta(sim, sim).
interpretar_resposta(nao, nao).
interpretar_resposta(nao_sei, nao_sei).


filtrar_animais(Animais, Caracteristica, sim, Filtrados) :-
    include(tem_caracteristica(Caracteristica), Animais, Filtrados).

filtrar_animais(Animais, Caracteristica, nao, Filtrados) :-
    exclude(tem_caracteristica(Caracteristica), Animais, Filtrados).

filtrar_animais(Animais, _, nao_sei, Animais).


% logica pra verificar a caractereistica do animal pela rede semantica
tem_caracteristica(Caracteristica, Animal) :-
    tem_propriedade(Animal, Caracteristica).


% já inicia o jogo ao carregar o arquivo
:- initialization(jogar).