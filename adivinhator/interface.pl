% interface.pl
:- use_module(library(pce)).
:- [base].
:- [perguntas].

:- dynamic current_questions/1.
:- dynamic possible_animals/1.
:- dynamic current_characteristics/1.

menu :- 
    new(Dialog, dialog('Adivinhator')),
    send(Dialog, size, size(800, 600)),
    send(Dialog, background, '#202020'),
    initialize_game(Dialog).

initialize_game(Dialog) :-
    send(Dialog, clear),
    
    % Title and instructions
    new(Title, text('Adivinhator')),
    new(Subtitle, text('Pense em um animal e eu tentarei adivinhar!')),
    send(Title, font, font(screen, bold, 28)),
    send(Subtitle, font, font(screen, normal, 16)),
    send(Title, colour(white)),
    send(Subtitle, colour(white)),
    
    % Start button
    new(StartBtn, button('Começar',
        message(@prolog, start_game, Dialog))),
    
    % Layout
    send(Dialog, append, Title),
    send(Dialog, append, Subtitle),
    send(Dialog, append, StartBtn),
    send(Dialog, layout),
    send(Dialog, open_centered).

start_game(Dialog) :-
    retractall(current_questions(_)),
    retractall(possible_animals(_)),
    retractall(current_characteristics(_)),
    findall(Animal, caracteristicas_animal(Animal, _), AllAnimals),
    assert(possible_animals(AllAnimals)),
    assert(current_questions([])),
    assert(current_characteristics([])),
    next_question(Dialog).

next_question(Dialog) :-
    current_questions(Asked),
    possible_animals(Animals),
    
    (Animals = [Animal] ->
        show_guess(Dialog, Animal)
    ; Animals = [] ->
        show_error(Dialog)
    ; select_next_question(Animals, Asked, Question, QuestionText) ->
        show_question(Dialog, Question, QuestionText)
    ; show_error(Dialog)
    ).

select_next_question(Animals, Asked, Question, QuestionText) :-
    findall(Q-Text, 
            (pergunta(Q, Text),
             \+ member(Q, Asked),
             would_split_animals(Q, Animals)),
            Questions),
    Questions \= [],
    random_member(Question-QuestionText, Questions).

would_split_animals(Question, Animals) :-
    partition(has_characteristic(Question), Animals, Yes, No),
    Yes \= [], No \= [].

has_characteristic(Characteristic, Animal) :-
    caracteristicas_animal(Animal, Characteristics),
    member(Characteristic, Characteristics).

show_question(Dialog, Question, QuestionText) :-
    send(Dialog, clear),
    new(QuestionLabel, text(QuestionText)),
    send(QuestionLabel, font, font(screen, bold, 20)),
    send(QuestionLabel, colour(white)),
    
    new(YesBtn, button('Sim',
        message(@prolog, handle_answer, Dialog, Question, yes))),
    new(NoBtn, button('Não',
        message(@prolog, handle_answer, Dialog, Question, no))),
    new(DontKnowBtn, button('Não Sei',
        message(@prolog, handle_answer, Dialog, Question, dont_know))),
    
    send(Dialog, append, QuestionLabel),
    send(Dialog, append, YesBtn),
    send(Dialog, append, NoBtn),
    send(Dialog, append, DontKnowBtn),
    send(Dialog, layout).

handle_answer(Dialog, Question, Answer) :-
    current_questions(Asked),
    possible_animals(Current),
    
    retract(current_questions(Asked)),
    assert(current_questions([Question|Asked])),
    
    (Answer = yes ->
        include(has_characteristic(Question), Current, Filtered)
    ; Answer = no ->
        exclude(has_characteristic(Question), Current, Filtered)
    ; Answer = dont_know ->
        Filtered = Current 
    ),
    
    retract(possible_animals(Current)),
    assert(possible_animals(Filtered)),
    
    next_question(Dialog).

show_guess(Dialog, Animal) :-
    send(Dialog, clear),
    format(atom(Message), 'Acho que é um(a) ~w!', [Animal]),
    new(GuessText, text(Message)),
    send(GuessText, font, font(screen, bold, 24)),
    send(GuessText, colour(white)),
    
    new(CorrectBtn, button('Acertou!',
        message(@prolog, show_win, Dialog))),
    new(WrongBtn, button('Errou!',
        message(@prolog, show_error, Dialog))),
    
    send(Dialog, append, GuessText),
    send(Dialog, append, CorrectBtn),
    send(Dialog, append, WrongBtn),
    send(Dialog, layout).

show_win(Dialog) :-
    send(Dialog, clear),
    new(WinText, text('Oba! Eu acertei!')),
    send(WinText, font, font(screen, bold, 24)),
    send(WinText, colour(white)),
    
    new(PlayAgainBtn, button('Jogar Novamente',
        message(@prolog, initialize_game, Dialog))),
    
    send(Dialog, append, WinText),
    send(Dialog, append, PlayAgainBtn),
    send(Dialog, layout).

show_error(Dialog) :-
    send(Dialog, clear),

    new(ErrorText, text('Não consegui adivinhar!')),
    send(ErrorText, font, font(screen, bold, 24)),
    send(ErrorText, colour(white)),

    new(AddAnimalBtn, button('Adicionar Novo Animal',
        message(@prolog, add_new_animal, Dialog))),
    new(CancelBtn, button('Cancelar',
        message(@prolog, initialize_game, Dialog))),

    send(Dialog, append, ErrorText),
    send(Dialog, append, AddAnimalBtn),
    send(Dialog, append, CancelBtn),
    send(Dialog, layout).

add_new_animal(Dialog) :-
    send(Dialog, clear),

    % Animal name input
    new(AnimalLabel, text('Qual era o animal?')),
    send(AnimalLabel, font, font(screen, bold, 20)),
    send(AnimalLabel, colour(white)),
    new(AnimalInput, text_item('Animal')),

    % Characteristics input
    new(CharsLabel, text('Digite as características separadas por vírgulas:')),
    send(CharsLabel, font, font(screen, bold, 20)),
    send(CharsLabel, colour(white)),
    new(CharsInput, text_item('Características')),

    % Buttons
    new(SaveBtn, button('Salvar',
        message(@prolog, save_new_animal, Dialog, AnimalInput?selection, CharsInput?selection))),
    new(CancelBtn, button('Cancelar',
        message(@prolog, initialize_game, Dialog))),

    % Layout
    send(Dialog, append, AnimalLabel),
    send(Dialog, append, AnimalInput),
    send(Dialog, append, CharsLabel),
    send(Dialog, append, CharsInput),
    send(Dialog, append, SaveBtn),
    send(Dialog, append, CancelBtn),
    send(Dialog, layout).

save_new_animal(Dialog, Animal, Chars) :-
    atom_string(AnimalAtom, Animal),
    split_string(Chars, ',', ' ', CharsList),
    maplist(string_to_atom, CharsList, CharsAtoms),
    
    % Save to base.pl
    open('base.pl', append, Stream),
    format(Stream, 'caracteristicas_animal(~w, ~w).~n', [AnimalAtom, CharsAtoms]),
    close(Stream),

    initialize_game(Dialog).

:- initialization(menu).
