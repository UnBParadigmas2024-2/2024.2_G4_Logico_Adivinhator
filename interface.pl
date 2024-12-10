:- use_module(library(pce)).


menu :- 
    new(Dialog, dialog('Adivinhator')),
    send(Dialog, clear),
    prompt_inicial(Dialog).

% Referências usadas:
% https://github.com/UnBParadigmas2023-2/2023.2_G2_Logico_YouTubeRecommendation/blob/main/src/menu.pl
% https://www.swi-prolog.org/download/xpce/doc/coursenotes/coursenotes.pdf


% Pode mudar esse comecinho à vontade. Serviu pra ter alguma coisa na tela
prompt_inicial(Dialog) :-
    send(Dialog, clear),
    send(Dialog, size, size(800, 600)),
    send(Dialog, background, '#202020'),

    new(Bemvindo, text('Bem vindo ao Adivinhator')),
    new(Prompt, text('Pense em um animal, clique em \'Próximo\' quando estiver pronto')),
    send(Bemvindo, colour, white),
    send(Prompt, colour, white),
    new(F, font(screen, bold, 20)),
    send(Bemvindo, font(F)),
    send(Prompt, font(F)),

    new(Proximo, button('Pŕoximo', and(message(@prolog, proxima_pergunta, Dialog)))),

    send(Dialog, append, Bemvindo),
    send(Dialog, append, Prompt),
    send(Dialog, append, Proximo),
    send(Dialog, layout_dialog),
    send(Dialog, open_centered).


proxima_pergunta(Dialog) :-
    send(Dialog, clear),
    send(Dialog, size, size(800, 600)),
    send(Dialog, background, '#202020'),

    send(Dialog, append, new(Botoes, dialog_group(buttons, group))),

    % TODO: Pergunta hardcoded por enquanto. Tem que chamar uma função pra elaborar uma pergunta.
    % Algo do tipo gera_nova_pergunta(P). Então adiciona ela na tela:
    % new(Pergunta, text(P)),

    new(Pergunta, text('Uma pergunta muito bem elaborada??')),
    send(Pergunta, colour, white),
    new(F, font(screen, bold, 20)),
    send(Pergunta, font(F)),

    new(BtSim,    button('Sim',     and(message(@prolog, responder_pergunta, Dialog, sim)))),
    new(BtNaosei, button('Não sei', and(message(@prolog, responder_pergunta, Dialog, naosei)))),
    new(BtNao,    button('Não',     and(message(@prolog, responder_pergunta, Dialog, nao)))),

    % TODO: Precisa de um botão de saída, que fecha a aplicação por inteiro

    send(Botoes, append(Pergunta)),
    send(Botoes, append(BtSim)),
    send(Botoes, append(BtNaosei)),
    send(Botoes, append(BtNao)),
    send(Botoes, layout_dialog),

    send(Dialog, layout),
    send(Dialog, open_centered).


responder_pergunta(Dialog, Resposta) :-
    write(Resposta), nl,

    % TODO: atualizar banco, gerar query e essas coisas
    % Não é bem responsabilidade do pessoal da interface
    
    proxima_pergunta(Dialog).
