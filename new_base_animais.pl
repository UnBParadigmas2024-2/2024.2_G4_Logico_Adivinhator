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
caracteristicas_animal(coruja, ["noturno", "carnívoro", "campos abertos", "voa", "garras", "veloz", "caçador"]).
caracteristicas_animal(humano, ["diurno", "onívoro", "cidade", "não_voa", "capacidade de fala", "usa ferramentas", "sente inveja"]).
caracteristicas_animal(baleia, ["diurno", "carnívoro", "oceano", "não_voa", "usam ecolocalização", "grande", "é caçado pela gordura"]).
caracteristicas_animal(golfinho, ["diurno", "carnívoro", "oceano", "não_voa", "usam ecolocalização", "médio", "sente prazer durante sexo"]).

% Animais específicos
animal(predadores, leão).
animal(predadores, tigre).
animal(primatas, macaco).
animal(primatas, chimpanzé).
animal(rapinantes, águia).
animal(rapinantes, falcão).
animal(aves, pardal).
animal(aves, andorinha).
animal(rastejantes, cobra).
animal(rastejantes, lagarto).
animal(besouros, besouro).
animal(besouros, joaninha).
animal(borboletas, borboleta).
animal(borboletas, mariposa).
animal(insetos, abelha).
animal(gastrópodes, caracol).
animal(gastrópodes, lesma).
