% Filo
filo(cordados).
filo(artrópodes).
filo(moluscos).
filo(poriferos).
filo(cnidarios).
filo(equinodermos).

% Classe - classe(X,Y) representados de forma que Y (classe) é um X (filo)
classe(cordados, mamíferos).
classe(cordados, aves).
classe(cordados, répteis).
classe(cordados, anfíbios).
classe(cordados, peixes_cartilaginosos).
classe(cordados, peixes_ósseos).
classe(artrópodes, insetos).
classe(artrópodes, aracnídeos).
classe(artrópodes, crustáceos).
classe(moluscos, gastrópodes).
classe(moluscos, cefalópodes).
classe(moluscos, bivalves).
classe(poriferos, esponjas_calcárias).
classe(poriferos, esponjas_de_vidro).
classe(cnidarios, hidrozoários).
classe(cnidarios, medusas).
classe(cnidarios, corais_e_anêmonas).
classe(equinodermos, estrelas_do_mar).
classe(equinodermos, ouriços_do_mar).
classe(equinodermos, pepinos_do_mar).

% Ordem - ordem(X,Y) representados de forma que Y (ordem) é de X (classe)
ordem(mamíferos, carnivoros).
ordem(mamíferos, primatas).
ordem(mamíferos, perissodáctilos).
ordem(mamíferos, proboscídeos).
ordem(mamíferos, cetaceos).
ordem(aves, rapinantes).
ordem(aves, passeriformes).
ordem(répteis, escamados).
ordem(répteis, quelonios).
ordem(insetos, coleópteros).
ordem(insetos, lepidópteros).
ordem(insetos, himenópteros).
ordem(aracnídeos, araneae).
ordem(aracnídeos, scorpiones).
ordem(crustáceos, decápodes).
ordem(moluscos, gastrópodes).
ordem(moluscos, cefalópodes).
ordem(moluscos, bivalves).
ordem(anfíbios, anuros).
ordem(peixes_cartilaginosos, seláquios).
ordem(peixes_ósseos, perciformes).
ordem(cnidarios, hidrozoários).
ordem(cnidarios, escifozoários).
ordem(cnidarios, antozoários).
ordem(equinodermos, asteroides).
ordem(equinodermos, equinoides).
ordem(equinodermos, holoturoides).

% Famílias - familia(X,Y) representados de forma que Y é um X
familia(carnivoros, felinos).
familia(carnivoros, canídeos).
familia(perissodáctilos, equino).

% Características de cada ordem
caracteristicas(carnivoros, ["se alimenta de carne", "dentes afiados", "instinto predador"]).
caracteristicas(proboscídeos, ["tem tromba longa", "grandes herbívoro", "tem presas"]).
caracteristicas(perissodáctilos, ["quadrúpede", "médio-grande porte", "casco nas patas"]).
caracteristicas(quelonios, ["têm casco protetor", "movem-se lentamente", "ovíparos"]).
caracteristicas(cetaceos, ["vive exclusivamente na água", "respira por pulmões", "tem nadadeiras"]).
caracteristicas(primatas, ["vive em árvores", "tem polegares opositores", "é sociável"]).
caracteristicas(rapinantes, ["tem bico curvado", "caça com garras", "voa"]).
caracteristicas(passeriformes, ["voa", "se alimenta de sementes", "vive em árvores"]).
caracteristicas(escamados, ["tem escamas", "se move rastejando", "pode ser venenosos"]).
caracteristicas(coleópteros, ["tem asas rígidas", "voa", "tem exoesqueleto duro"]).
caracteristicas(lepidópteros, ["voa", "se alimenta de néctar", "tem asas coloridas"]).
caracteristicas(himenópteros, ["voa", "pequeno porte", "vive em comunidade"]).
caracteristicas(araneae, ["tem oito pernas", "produz teias", "é predador"]).
caracteristicas(scorpiones, ["tem oito pernas", "tem cauda com ferrão", "é predador noturno"]).
caracteristicas(decápodes, ["tem dez pernas", "vive em ambientes aquáticos", "tem exoesqueleto duro"]).
caracteristicas(gastrópodes, ["se move lentamente", "pode ter concha", "vive em ambientes húmidos"]).
caracteristicas(cefalópodes, ["tem tentáculos", "é inteligente", "vive em ambientes marinhos"]).
caracteristicas(bivalves, ["tem conchas duplas", "vive fixos", "filtram a água para se alimentar"]).
caracteristicas(anuros, ["é anfíbio", "tem pele úmida", "saltam"]).
caracteristicas(seláquios, ["é cartilaginoso", "tem nadadeiras fortes", "é predador ágil"]).
caracteristicas(perciformes, ["tem esqueleto ósseo", "tem escamas", "respira por brânquias"]).
caracteristicas(hidrozoários, ["tem corpo mole", "vive em colônias", "tem tentáculos urticantes"]).
caracteristicas(escifozoários, ["tem corpo gelatinoso", "vive no mar", "tem tentáculos com células urticantes"]).
caracteristicas(antozoários, ["vive fixos", "é colorido", "compõe recifes de corais"]).
caracteristicas(asteroides, ["tem simetria radial", "regenera membros", "vive no mar"]).
caracteristicas(equinoides, ["tem espinhos", "vive no mar", "tem simetria radial"]).
caracteristicas(holoturoides, ["tem corpo alongado", "vive no mar", "pode expelir órgãos como defesa"]).

% Características de cada família
caracteristicas(felinos, ["língua áspera", "tem garras afiadas", "é caçador ágil"]).
caracteristicas(canídeos, ["cauda longa", "anda em bando", "tem olfato apurado"]).
caracteristicas(equinos, ["pescoço longo", "tem crina", "pode ser montado"]).


% Características dos animais com formato padronizado (e agrupados por semelhanças):
% [atividade (noturno/diurno), dieta (carnívoro/herbívoro/onívoro), bioma principal, locomoção (voa/não_voa), característica específica 1, característica específica 2, característica específica 3]

caracteristicas_animal(leão, ["diurno", "carnívoro", "savana", "não_voa", "grande", "garras", "caçador"]).
caracteristicas_animal(tigre, ["noturno", "carnívoro", "floresta", "não_voa", "listras", "grande", "caçador"]).
caracteristicas_animal(pantera, ["noturno", "carnívoro", "floresta", "não_voa", "preta", "grande", "caçador"]).
caracteristicas_animal(cheetah, ["diurno", "carnívoro", "savana", "não_voa", "rápido", "manchas", "caçador"]).
caracteristicas_animal(lince, ["diurno", "carnívoro", "florestas temperadas", "não_voa", "patas longas", "orelhas pontudas", "caçador"]).
caracteristicas_animal(gato, ["noturno", "carnívoro", "áreas urbanas", "não_voa", "domesticado", "independente", "arranha"]).

caracteristicas_animal(cachorro, ["diurno", "onívoro", "áreas urbanas", "não_voa", "late", "sociável", "fiel"]).
caracteristicas_animal(lobo, ["noturno", "carnívoro", "floresta", "não_voa", "grande", "vive em alcateias", "caçador"]).
caracteristicas_animal(raposa, ["noturno", "onívoro", "florestas", "não_voa", "astuta", "pequena", "solitária"]).
caracteristicas_animal(hiena, ["noturno", "carnívoro", "savana", "não_voa", "risada", "vive em clãs", "caçador e catador"]).
caracteristicas_animal(chacal, ["noturno", "onívoro", "savana", "não_voa", "astuto", "sociável", "caçador e catador"]).

caracteristicas_animal(macaco, ["diurno", "onívoro", "floresta", "não_voa", "pequeno", "brincalhão", "polegar opositor"]).
caracteristicas_animal(chimpanzé, ["diurno", "onívoro", "floresta", "não_voa", "grande", "inteligente", "usa ferramentas"]).
caracteristicas_animal(gorila, ["diurno", "herbívoro", "floresta", "não_voa", "grande", "forte", "sociável"]).
caracteristicas_animal(orangotango, ["diurno", "frugívoro", "florestas tropicais", "não_voa", "braços longos", "inteligente", "cor comumente laranja"]).
caracteristicas_animal(babuíno, ["diurno", "onívoro", "savana", "não_voa", "focinho longo", "briga", "inteligente"]).

caracteristicas_animal(águia, ["diurno", "carnívoro", "montanhas", "voa", "garras", "visão aguçada", "caçador"]).
caracteristicas_animal(falcão, ["diurno", "carnívoro", "campos abertos", "voa", "garras", "veloz", "caçador"]).
caracteristicas_animal(coruja, ["noturno", "carnívoro", "floresta", "voa", "garras afiadas", "visão noturna", "silenciosa"]).
caracteristicas_animal(pardal, ["diurno", "onívoro", "áreas urbanas", "voa", "pequeno", "sociável", "se alimenta de sementes"]).
caracteristicas_animal(andorinha, ["diurno", "insetívoro", "campos", "voa", "pequeno", "migratória", "rápido"]).
caracteristicas_animal(pombo, ["diurno", "onívoro", "áreas urbanas", "voa", "sociável", "orientação magnética", "vive em grandes grupos"]).
caracteristicas_animal(papagaio, ["diurno", "herbívoro", "florestas", "voa", "colorido", "imitador", "sociável"]).
caracteristicas_animal(periquito, ["diurno", "herbívoro", "florestas", "voa", "colorido", "pequeno", "vocaliza bastante"]).
caracteristicas_animal(tucano, ["diurno", "frugívoro", "floresta tropical", "voa", "bico grande", "colorido", "social"]).

caracteristicas_animal(cobra, ["noturno", "carnívoro", "floresta", "não_voa", "escamas", "silenciosa", "pode ser venenosa"]).
caracteristicas_animal(lagarto, ["diurno", "onívoro", "caatinga", "não_voa", "escamas", "rápido", "troca de pele"]).
caracteristicas_animal(jacaré, ["diurno", "carnívoro", "pantanal", "não_voa", "muitos dentes", "nada", "predador"]).
caracteristicas_animal(jiboia, ["noturno", "carnívoro", "florestas", "não_voa", "comprida", "não é venenosa", "silenciosa"]).
caracteristicas_animal(iguana, ["diurno", "herbívoro", "florestas", "não_voa", "escamas", "rabo longo", "escaladora"]).

caracteristicas_animal(besouro, ["diurno", "herbívoro", "floresta", "voa", "pequeno", "exoesqueleto rígido", "corpo compacto"]).
caracteristicas_animal(joaninha, ["diurno", "insetívoro", "floresta", "voa", "pequeno", "vermelha com pintas", "come pulgões"]).
caracteristicas_animal(formiga, ["diurno", "onívoro", "florestas", "não_voa", "pequena", "trabalhadora", "vive em colônias"]).
caracteristicas_animal(cupim, ["diurno", "herbívoro", "florestas", "não_voa", "vive em colônias", "constrói ninhos", "inseto"]).
caracteristicas_animal(grilo, ["noturno", "herbívoro", "campos", "não_voa", "emite sons", "pequeno", "salta"]).
caracteristicas_animal(cigarra, ["diurno", "herbívoro", "florestas", "voa", "emite sons", "ciclo de vida longo", "inseto"]).
caracteristicas_animal(barata, ["noturno", "onívoro", "áreas urbanas", "não_voa", "resistente", "vive em grupos", "pequena"]).
caracteristicas_animal(libélula, ["diurno", "carnívoro", "pântanos", "voa", "asas transparentes", "rápido", "caçador de insetos"]).
caracteristicas_animal(formiga_cortadeira, ["diurno", "herbívoro", "florestas", "não_voa", "trabalhadora", "corta folhas", "vive em colônias"]).
caracteristicas_animal(escaravelho, ["diurno", "herbívoro", "floresta", "voa", "grande", "coleóptero", "excava"]).
caracteristicas_animal(borboleta, ["diurno", "herbívoro", "campos", "voa", "colorida", "asas escamosas", "se alimenta de néctar"]).
caracteristicas_animal(mariposa, ["noturno", "herbívoro", "floresta", "voa", "peluda", "atraída por luz", "noturna"]).
caracteristicas_animal(borboleta_monarca, ["diurno", "herbívoro", "campos", "voa", "colorida", "migratória", "asa escamosa"]).
caracteristicas_animal(abelha, ["diurno", "onívoro", "floresta", "voa", "pequena", "produz mel", "vive em colmeias"]).
caracteristicas_animal(vespa, ["diurno", "carnívoro", "floresta", "voa", "agressiva", "veneno forte", "constrói ninhos"]).
caracteristicas_animal(aranha, ["noturno", "carnívoro", "diversos biomas", "não_voa", "oito patas", "produz teias", "pequena"]).
caracteristicas_animal(escorpião, ["noturno", "carnívoro", "deserto", "não_voa", "oito patas", "ferrão venenoso", "pequeno"]).

caracteristicas_animal(rã, ["diurno", "onívoro", "pântanos", "não_voa", "pele úmida", "salta", "anfíbio"]).
caracteristicas_animal(salamandra, ["diurno", "onívoro", "floresta", "não_voa", "pele úmida", "regenera membros", "anfíbio"]).
caracteristicas_animal(salamandra_tigre, ["noturno", "carnívoro", "florestas temperadas", "não_voa", "pele úmida", "regenera membros", "anfíbio"]).
caracteristicas_animal(sapo, ["noturno", "insetívoro", "pântanos", "não_voa", "selvagem", "saltador", "pele_úmida"]).

caracteristicas_animal(caracol, ["diurno", "herbívoro", "jardins", "não_voa", "tem concha", "lento", "ambientes húmidos"]).
caracteristicas_animal(lesma, ["noturno", "herbívoro", "floresta", "não_voa", "sem concha", "lento", "se movimenta com muco"]).

caracteristicas_animal(camarão, ["diurno", "onívoro", "mar", "não_voa", "dez patas", "corpo segmentado", "vive em cardumes"]).
caracteristicas_animal(caranguejo, ["diurno", "onívoro", "praias", "não_voa", "dez patas", "carapaça dura", "pinças"]).
caracteristicas_animal(lagosta, ["diurno", "onívoro", "mar", "não_voa", "exoesqueleto", "garras", "vive em recifes"]).
caracteristicas_animal(salmão, ["diurno", "onívoro", "rios", "não_voa", "escamas", "migratório", "vive em cardumes"]).
caracteristicas_animal(polvo, ["noturno", "carnívoro", "mar", "não_voa", "tentáculos", "inteligente", "muda de cor"]).
caracteristicas_animal(polvo_azul, ["noturno", "carnívoro", "mares tropicais", "não_voa", "tentáculos", "muda de cor", "veneno forte"]).
caracteristicas_animal(tubarão, ["diurno", "carnívoro", "mar", "não_voa", "nadadeiras fortes", "cartilaginoso", "predador"]).
caracteristicas_animal(água_viva, ["noturno", "carnívoro", "mar", "não_voa", "corpo translúcido", "tentáculos urticantes", "gelatinoso"]).
caracteristicas_animal(coral, ["diurno", "herbívoro", "mar", "não_voa", "fixo", "colorido", "vive em colônias"]).
caracteristicas_animal(anêmona, ["diurno", "carnívoro", "mar", "não_voa", "colorida", "tentáculos", "fixa"]).
caracteristicas_animal(náutilo, ["noturno", "carnívoro", "mar", "não_voa", "concha espiralada", "flutua", "tentáculos"]).
caracteristicas_animal(ouriço_do_mar, ["noturno", "herbívoro", "mar", "não_voa", "espinhos", "vive no fundo", "lento"]).
caracteristicas_animal(estrela_do_mar, ["diurno", "carnívoro", "mar", "não_voa", "regenera membros", "simetria radial", "vive no fundo"]).
caracteristicas_animal(porquinho_do_mar, ["diurno", "herbívoro", "mares", "não_voa", "pequeno", "vive no fundo", "espinhos curtos"]).
caracteristicas_animal(truta, ["diurno", "carnívoro", "rios", "não_voa", "vive em água doce", "nadadora", "escamas coloridas"]).
caracteristicas_animal(lula_gigante, ["noturno", "carnívoro", "mares profundos", "não_voa", "tentáculos longos", "grande", "inteligente"]).
caracteristicas_animal(caramujo_gigante, ["diurno", "herbívoro", "florestas", "não_voa", "concha grande", "lento", "vive em ambientes úmidos"]).
caracteristicas_animal(peixe_palhaço, ["diurno", "onívoro", "recifes de corais", "não_voa", "colorido", "vive em anêmonas", "pequeno"]).
caracteristicas_animal(cavalo_marinho, ["diurno", "carnívoro", "mares tropicais", "não_voa", "corpo curvado", "pequeno", "vive em recifes"]).
caracteristicas_animal(pinguim, ["diurno", "carnívoro", "antártica", "não_voa", "nadador", "vive em colônias", "plumagem densa"]).
caracteristicas_animal(ostra, ["noturno", "filtrador", "mar", "não_voa", "duas conchas", "vive fixo", "produz pérolas"]).
caracteristicas_animal(tritão, ["noturno", "carnívoro", "pântanos", "não_voa", "pele úmida", "regenera membros", "anfíbio"]).
caracteristicas_animal(bagre, ["noturno", "onívoro", "rios", "não_voa", "bigodes", "escamas lisas", "vive no fundo"]).
caracteristicas_animal(tainha, ["diurno", "onívoro", "mares tropicais", "não_voa", "pequena", "vive em cardumes", "nadadora"]).
caracteristicas_animal(tartaruga, ["diurno", "herbívoro", "áreas costeiras", "não_voa", "mordida forte", "tem grande casco", "lenta"]).
caracteristicas_animal(baleia, ["diurno", "carnívoro", "mar", "não_voa", "selvagem", "gigante", "pesa toneladas"]).
caracteristicas_animal(orca, ["diurno", "carnívoro", "mar", "não_voa", "selvagem", "predador", "cor preto e branco"]).
caracteristicas_animal(golfinho, ["diurno", "carnívoro", "mar", "não_voa", "amigável", "inteligente", "salta da água"]).

caracteristicas_animal(estrela_coberta, ["diurno", "carnívoro", "mares profundos", "não_voa", "simetria radial", "espinhos pequenos", "lento"]).
caracteristicas_animal(centopeia, ["noturno", "carnívoro", "florestas", "não_voa", "múltiplas pernas", "rápido", "veneno"]).

caracteristicas_animal(cavalo, ["diurno", "herbívoro", "pradarias", "não_voa", "domesticado", "veloz", "forte"]).
caracteristicas_animal(zebra, ["diurno", "herbívoro", "savana", "não_voa", "selvagem", "listrada", "anda em bando"]).
caracteristicas_animal(rinoceronte, ["diurno", "herbívoro", "savana", "não_voa", "selvagem", "tem chifre", "grande"]).

caracteristicas_animal(elefante, ["diurno", "herbívoro", "savana", "não_voa", "selvagem", "tem tromba", "inteligente"]).

caracteristicas_animal(urso, ["diurno", "onívoro", "florestas", "não_voa", "selvagem", "forte", "costuma hibernar"]).
caracteristicas_animal(urso_polar, ["diurno", "carnívoro", "áreas árticas", "não_voa", "selvagem", "forte", "pelagem_branca"]).


% Animais específicos
animal(felinos, leão).
animal(felinos, tigre).
animal(felinos, pantera).
animal(felinos, lince).
animal(felinos, cheetah).
animal(felinos, hiena).
animal(felinos, gato).
animal(canídeos, cachorro).
animal(canídeos, lobo).
animal(canídeos, raposa).
animal(canídeos, chacal).
animal(primatas, macaco).
animal(primatas, chimpanzé).
animal(primatas, gorila).
animal(primatas, orangotango).
animal(primatas, babuíno).
animal(rapinantes, águia).
animal(rapinantes, falcão).
animal(rapinantes, coruja).
animal(rapinantes, papagaio).
animal(rapinantes, periquito).
animal(rapinantes, tucano).
animal(passeriformes, pardal).
animal(passeriformes, andorinha).
animal(passeriformes, pombo).
animal(passeriformes, pinguim).
animal(escamados, cobra).
animal(escamados, lagarto).
animal(escamados, jacaré).
animal(escamados, jiboia).
animal(escamados, iguana).
animal(coleópteros, besouro).
animal(coleópteros, joaninha).
animal(coleópteros, escaravelho).
animal(coleópteros, cigarra).
animal(coleópteros, grilo).
animal(coleópteros, cupim).
animal(coleópteros, barata).
animal(lepidópteros, borboleta).
animal(lepidópteros, mariposa).
animal(lepidópteros, borboleta_monarca).
animal(himenópteros, abelha).
animal(himenópteros, formiga).
animal(himenópteros, vespa).
animal(himenópteros, formiga_cortadeira).
animal(araneae, aranha).
animal(araneae, centopeia).
animal(scorpiones, escorpião).
animal(decápodes, camarão).
animal(decápodes, caranguejo).
animal(decápodes, lagosta).
animal(gastrópodes, caracol).
animal(gastrópodes, lesma).
animal(gastrópodes, caramujo_gigante).
animal(cefalópodes, polvo).
animal(cefalópodes, náutilo).
animal(cefalópodes, polvo_azul).
animal(cefalópodes, lula_gigante).
animal(anuros, rã).
animal(anuros, salamandra).
animal(anuros, tritão).
animal(anuros, salamandra_tigre).
animal(anuros, sapo).
animal(seláquios, tubarão).
animal(perciformes, salmão).
animal(perciformes, bagre).
animal(perciformes, tainha).
animal(perciformes, truta).
animal(perciformes, peixe_palhaço).
animal(perciformes, cavalo_marinho).
animal(hidrozoários, água_viva).
animal(antozoários, coral).
animal(antozoários, anêmona).
animal(bivalves, ostra).
animal(equinoides, ouriço_do_mar).
animal(equinoides, porquinho_do_mar).
animal(asteroides, estrela_do_mar).
animal(asteroides, estrela_coberta).
animal(odonatos, libélula).
animal(equinos, cavalo).
animal(perissodáctilos, rinoceronte).
animal(equídeos, zebra).
animal(proboscídeos, elefante).
animal(carnivoros, urso).
animal(carnivoros, urso_polar).
animal(quelonios, tartaruga).
animal(cetaceos, baleia).
animal(cetaceos, orca).
animal(cetaceos, golfinho).


% (regras basicas) Verifica se um animal tem uma característica específica
tem_propriedade(Animal, Propriedade) :-
    % Busca características genéricas a partir do grupo taxonômico
    animal(Grupo, Animal),
    caracteristicas(Grupo, CaracteristicasGrupo),
    member(Propriedade, CaracteristicasGrupo).

tem_propriedade(Animal, Propriedade) :-
    % Busca características específicas do animal
    caracteristicas_animal(Animal, CaracteristicasEspecificas),
    member(Propriedade, CaracteristicasEspecificas).
   