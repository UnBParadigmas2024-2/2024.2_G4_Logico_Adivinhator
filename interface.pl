:- use_module(library(pce)).


menu :- 
    new(Dialog, dialog('Adivinhator')),
    send(Dialog, clear),
    initial_prompt(Dialog).

% Referências usadas:
% https://github.com/UnBParadigmas2023-2/2023.2_G2_Logico_YouTubeRecommendation/blob/main/src/menu.pl
% https://www.swi-prolog.org/download/xpce/doc/coursenotes/coursenotes.pdf


% Pode mudar esse comecinho à vontade. Serviu pra ter alguma coisa na tela
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

    send(Dialog, append, new(Buttons, dialog_group(buttons, group))),

    % TODO: Pergunta hardcoded por enquanto. Tem que chamar uma função pra elaborar uma pergunta.
    % Algo do tipo get_next_question(Q). Então adiciona ela na tela:
    % new(Question, text(Q)),

    new(Question, text('Uma pergunta muito bem elaborada??')),
    send(Question, colour, white),
    new(F, font(screen, bold, 20)),
    send(Question, font(F)),

    new(BtnYes,      button('Sim',     and(message(@prolog, answer_question, Dialog, yes)))),
    new(BtnDontKnow, button('Não sei', and(message(@prolog, answer_question, Dialog, dontknow)))),
    new(BtnNo,       button('Não',     and(message(@prolog, answer_question, Dialog, no)))),

    send(Buttons, append(Question)),
    send(Buttons, append(BtnYes)),
    send(Buttons, append(BtnDontKnow)),
    send(Buttons, append(BtnNo)),
    send(Buttons, layout_dialog),

    send(Dialog, layout),
    send(Dialog, open_centered).


answer_question(Dialog, A) :-
    write(A), nl,

    % TODO: atualizar banco, gerar query e essas coisas
    % Não é bem responsabilidade do pessoal da interface
    
    next_question(Dialog).
