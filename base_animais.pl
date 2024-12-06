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
