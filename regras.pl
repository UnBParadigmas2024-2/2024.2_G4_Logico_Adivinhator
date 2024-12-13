:- consult('new_base_animais').

% Função para encontrar o animal com base nas perguntas
encontrar_animal(Animal) :-
    listar_animais(Possiveis),
    escolher_animal(Possiveis, [], Animal).

listar_animais(Animais) :-
    findall(A, caracteristicas_animal_old(A, _), Animais).
    
% Caso base: uma lista vazia significa que nenhum animal foi encontrado
escolher_animal([], _, desconhecido) :- 
    write('Não consegui identificar o animal com as informações fornecidas.'), nl.

% Caso base: se sobrar apenas um animal, ele é selecionado
escolher_animal([Animal], _, Animal) :- 
    format('O animal identificado é: ~w.~n', [Animal]).

% Caso geral: continuar perguntando
escolher_animal(Possiveis, JaPerguntadas, Animal) :-
    escolher_caracteristica(Possiveis, JaPerguntadas, Caracteristica, _),
    perguntar(Caracteristica, Resposta),
    filtrar_animais(Possiveis, Caracteristica, Resposta, Filtrados),
    escolher_animal(Filtrados, [Caracteristica | JaPerguntadas], Animal).

% Perguntar ao jogador com validação de entrada
perguntar(Caracteristica, Resposta) :-
    format('O animal possui a seguinte característica: ~w? (sim/nao/nao_sei): ', [Caracteristica]),
    validar_entrada(['sim', 'nao', 'nao_sei'], Resposta).

% Ler entrada válida com validação de opções permitidas
validar_entrada(Validas, Resposta) :-
    read(Input),
    (   member(Input, Validas)
    ->  Resposta = Input
    ;   write('Entrada inválida! Tente novamente (sim/nao/nao_sei): '),
        validar_entrada(Validas, Resposta)
    ).

interpretar_resposta(sim, sim).
interpretar_resposta(nao, nao).
interpretar_resposta(nao_sei, nao_sei).

% Filtrar animais com base na resposta
filtrar_animais(Animais, Caracteristica, sim, Filtrados) :-
    include(tem_caracteristica(Caracteristica), Animais, Filtrados).
filtrar_animais(Animais, Caracteristica, nao, Filtrados) :-
    exclude(tem_caracteristica(Caracteristica), Animais, Filtrados).
filtrar_animais(Animais, _, nao_sei, Animais).

% Escolher a próxima característica com maior entropia
escolher_caracteristica(Animais, JaPerguntadas, MelhorCaracteristica, MelhorEntropia) :-
    findall(Caracteristica, 
            (member(A, Animais), caracteristicas_animal_old(A, Caracteristicas), member(Caracteristica, Caracteristicas)), 
            TodasCaracteristicas),
    list_to_set(TodasCaracteristicas, CaracteristicasUnicas),
    subtract(CaracteristicasUnicas, JaPerguntadas, CaracteristicasNaoPerguntadas),
    embaralhar(CaracteristicasNaoPerguntadas, CaracteristicasEmbaralhadas), % Embaralha as características disponíveis
    maplist(calcular_entropia(Animais), CaracteristicasEmbaralhadas, Entropias),
    pairs_keys_values(Pares, Entropias, CaracteristicasEmbaralhadas),
    keysort(Pares, Ordenadas),
    reverse(Ordenadas, OrdenadasDescendente),  % Inverter a ordem para priorizar as características com maior entropia
    OrdenadasDescendente = [MelhorEntropia-MelhorCaracteristica | _].

% Embaralhamento de lista
embaralhar(Lista, Embaralhada) :-
    random_permutation(Lista, Embaralhada).

% Calcular entropia para uma característica
calcular_entropia(Animais, Caracteristica, Entropia) :-
    incluir_caracteristica(Animais, Caracteristica, Positivos),
    length(Positivos, PositivoCount),
    excluir_caracteristica(Animais, Caracteristica, Negativos),
    length(Negativos, NegativoCount),
    length(Animais, Total),
    PositivoProb is PositivoCount / Total,
    NegativoProb is NegativoCount / Total,
    ( PositivoProb > 0 -> PositivoEntropy is -PositivoProb * log(PositivoProb) ; PositivoEntropy is 0 ),
    ( NegativoProb > 0 -> NegativoEntropy is -NegativoProb * log(NegativoProb) ; NegativoEntropy is 0 ),
    Entropia is PositivoEntropy + NegativoEntropy.

% Funções auxiliares para filtrar animais
incluir_caracteristica(Animais, Caracteristica, Positivos) :-
    include(tem_caracteristica(Caracteristica), Animais, Positivos).

excluir_caracteristica(Animais, Caracteristica, Negativos) :-
    exclude(tem_caracteristica(Caracteristica), Animais, Negativos).

% Verifica se o animal possui a característica
tem_caracteristica(Caracteristica, Animal) :-
    caracteristicas_animal_old(Animal, Caracteristicas),
    member(Caracteristica, Caracteristicas).
