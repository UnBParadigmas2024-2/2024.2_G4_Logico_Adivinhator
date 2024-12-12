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
