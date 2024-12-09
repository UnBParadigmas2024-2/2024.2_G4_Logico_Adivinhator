:- use_module(library(pce)).

menu :- 
    new(Dialog, dialog('Adivinhator')),
    send(Dialog, clear),
    initial_prompt(Dialog).


initial_prompt(Dialog) :-
    send(Dialog, clear),
    send(Dialog, size, size(800, 600)),
    send(Dialog, background, '#202020'),

    new(Welcome, text('Bem vindo ao Adivinhator')),
    new(Prompt, text('Pense em um animal, clique em \'Próximo\' quando estiver pronto')),
    send(Welcome, colour, white),
    send(Prompt, colour, white),
    new(F, font(screen, bold, 20)),
    send(Welcome, font(F)),
    send(Prompt, font(F)),

    new(Next, button('Pŕoximo', and(message(@prolog, next_question, Dialog)))),

    send(Dialog, append, Welcome),
    send(Dialog, append, Prompt),
    send(Dialog, append, Next),
    send(Dialog, layout_dialog),
    send(Dialog, open_centered).

next_question(Dialog) :-
    send(Dialog, clear),
    send(Dialog, size, size(800, 600)),
    send(Dialog, background, '#202020'),

    % TODO: Pergunta hardcoded por enquanto. Tem que chamar uma função pra elaborar uma pergunta.
    new(Question, text('Uma pergunta muito bem elaborada??')),
    send(Question, colour, white),
    new(F, font(screen, bold, 20)),
    send(Question, font(F)),

    send(Dialog, append, Question).
    % TODO: adicionar opções e botão de confirmar

