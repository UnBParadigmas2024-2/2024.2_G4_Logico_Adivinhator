% Definição de hierarquia de categorias, 
% do mais baixo ao mais alto
% (considerando por enquanto apenas mamiferos, aves, aquaticos e repteis) 
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


% Uso de "possui" pra definição de propriedades da categorias anteriores
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


% Filo
filo(cordados).
filo(artrópodes).
filo(moluscos).

% Classe
classe(cordados, mamíferos).
classe(cordados, aves).
classe(cordados, répteis).
classe(artrópodes, insetos).
classe(moluscos, gastrópodes).

% Ordem
ordem(mamíferos, predadores).   % Carnívoros
ordem(mamíferos, primatas).
ordem(aves, rapinantes).        % Aves de rapina
ordem(aves, aves).              % Passeriformes
ordem(répteis, rastejantes).    % Escamados
ordem(insetos, besouros).       % Coleópteros
ordem(insetos, borboletas).     % Lepidópteros
ordem(insetos, abelhas).        % Hymenoptera
ordem(moluscos, gastrópodes).   % Caracóis e lesmas

% Características de cada ordem
caracteristicas(predadores, ["se alimentam de carne", "caçam para sobreviver"]).
caracteristicas(primatas, ["vivem em árvores", "têm polegares opositores"]).
caracteristicas(rapinantes, ["têm bico curvado", "caçam com garras"]).
caracteristicas(aves, ["voam", "se alimentam de sementes", "vivem em árvores"]).
caracteristicas(rastejantes, ["têm escamas", "se movem rastejando"]).
caracteristicas(besouros, ["têm asas rígidas", "voam"]).
caracteristicas(borboletas, ["voam", "se alimentam de néctar", "têm asas coloridas"]).
caracteristicas(abelhas, ["voam", "produzem mel", "vivem em colmeias"]).
caracteristicas(gastrópodes, ["se movem lentamente", "alguns têm concha", "viveram em ambientes húmidos"]).

% Características dos animais com formato padronizado:
% [atividade (noturno/diurno), dieta (carnívoro/herbívoro/onívoro), bioma principal, locomoção (voa/não_voa), característica específica 1, característica específica 2, característica específica 3]

caracteristicas_animal(leão, ["diurno", "carnívoro", "savana", "não_voa", "grande", "garras", "caçador"]).
caracteristicas_animal(tigre, ["noturno", "carnívoro", "floresta", "não_voa", "listras", "grande", "caçador"]).
caracteristicas_animal(macaco, ["diurno", "onívoro", "floresta", "não_voa", "pequeno", "brincalhão", "polegar opositor"]).
caracteristicas_animal(chimpanzé, ["diurno", "onívoro", "floresta", "não_voa", "grande", "inteligente", "usa ferramentas"]).
caracteristicas_animal(águia, ["diurno", "carnívoro", "montanhas", "voa", "garras", "visão aguçada", "caçador"]).
caracteristicas_animal(falcão, ["diurno", "carnívoro", "campos abertos", "voa", "garras", "veloz", "caçador"]).
caracteristicas_animal(pardal, ["diurno", "onívoro", "áreas urbanas", "voa", "pequeno", "sociável", "se alimenta de sementes"]).
caracteristicas_animal(andorinha, ["diurno", "insetívoro", "campos", "voa", "pequeno", "migratória", "rápido"]).
caracteristicas_animal(cobra, ["noturno", "carnívoro", "floresta", "não_voa", "escamas", "silenciosa", "pode ser venenosa"]).
caracteristicas_animal(lagarto, ["diurno", "onívoro", "caatinga", "não_voa", "escamas", "rápido", "troca de pele"]).
caracteristicas_animal(besouro, ["diurno", "herbívoro", "floresta", "voa", "pequeno", "exoesqueleto rígido", "corpo compacto"]).
caracteristicas_animal(joaninha, ["diurno", "insetívoro", "floresta", "voa", "pequeno", "vermelha com pintas", "come pulgões"]).
caracteristicas_animal(borboleta, ["diurno", "herbívoro", "campos", "voa", "colorida", "asas escamosas", "se alimenta de néctar"]).
caracteristicas_animal(mariposa, ["noturno", "herbívoro", "floresta", "voa", "peluda", "atraída por luz", "noturna"]).
caracteristicas_animal(abelha, ["diurno", "onívoro", "floresta", "voa", "pequena", "produz mel", "vive em colmeias"]).
caracteristicas_animal(caracol, ["diurno", "herbívoro", "jardins", "não_voa", "concha", "lento", "ambientes húmidos"]).
caracteristicas_animal(lesma, ["noturno", "herbívoro", "floresta", "não_voa", "sem concha", "lento", "se movimenta com muco"]).

% Novos Filos
filo(poriferos).
filo(cnidarios).

% Novas Classes
classe(cordados, anfibios).
classe(cordados, peixes_cartilaginosos).
classe(cordados, peixes_osseos).

% Novas Ordens
ordem(anfibios, ras).
ordem(peixes_cartilaginosos, tubaroes).
ordem(peixes_osseos, peixes_osseos).
ordem(cnidarios, cnidarios).

% Novas Características Gerais
caracteristicas(ras, ["anfíbio", "pele úmida", "dependem de água para reprodução"]).
caracteristicas(tubaroes, ["cartilaginoso", "nadadeiras fortes", "predadores ágeis"]).
caracteristicas(peixes_osseos, ["esqueleto ósseo", "escamas", "brânquias para respiração"]).
caracteristicas(cnidarios, ["corpo mole", "tentáculos com células urticantes"]).

% Novos Animais com Características
animal(ras, ra).
animal(ras, salamandra).
animal(tubaroes, tubarao).
animal(peixes_osseos, salmao).
animal(cnidarios, agua_viva).
animal(cnidarios, coral).

% Características Detalhadas por Animal
caracteristicas_animal(ra, ["anfíbio", "pele úmida", "pequeno", "salta", "noturna", "vive em água doce"]).
caracteristicas_animal(salamandra, ["anfíbio", "pele úmida", "corpo longo", "regenera membros", "vive em água doce e terra"]).
caracteristicas_animal(tubarao, ["cartilaginoso", "predador", "vive no mar", "grande", "nadadeiras fortes", "respiração por brânquias"]).
caracteristicas_animal(salmao, ["peixe ósseo", "escamas", "vive em água doce e salgada", "migratório", "dieta variada"]).
caracteristicas_animal(agua_viva, ["cnidário", "tentáculos", "translúcida", "vive no mar", "caça com células urticantes"]).
caracteristicas_animal(coral, ["cnidário", "vive fixo", "colorido", "forma recifes", "vive em colônias"]).
