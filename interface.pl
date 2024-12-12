% interface.pl
:- use_module(library(pce)).
:- [base].

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
        show_failure(Dialog)
    ; select_next_question(Animals, Asked, Question, QuestionText) ->
        show_question(Dialog, Question, QuestionText)
    ; show_failure(Dialog)
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
    
    send(Dialog, append, QuestionLabel),
    send(Dialog, append, YesBtn),
    send(Dialog, append, NoBtn),
    send(Dialog, layout).

handle_answer(Dialog, Question, Answer) :-
    current_questions(Asked),
    possible_animals(Current),
    
    retract(current_questions(Asked)),
    assert(current_questions([Question|Asked])),
    
    (Answer = yes ->
        include(has_characteristic(Question), Current, Filtered)
    ;   exclude(has_characteristic(Question), Current, Filtered)
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
    
    new(CorrectBtn, button('Acertei!',
        message(@prolog, show_win, Dialog))),
    new(WrongBtn, button('Errei...',
        message(@prolog, show_failure, Dialog))),
    
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

show_failure(Dialog) :-
    send(Dialog, clear),
    new(FailText, text('Não consegui adivinhar...')),
    send(FailText, font, font(screen, bold, 24)),
    send(FailText, colour(white)),
    
    new(PlayAgainBtn, button('Tentar Novamente',
        message(@prolog, initialize_game, Dialog))),
    
    send(Dialog, append, FailText),
    send(Dialog, append, PlayAgainBtn),
    send(Dialog, layout).

:- initialization(menu).