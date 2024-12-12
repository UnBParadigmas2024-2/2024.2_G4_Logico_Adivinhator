:- consult('new_base_animais').
:- consult('regras3').

% Início do jogo
main :-
    write('Bem-vindo ao Akinator de Animais!'), nl,
    write('Pense em um animal, e eu tentarei adivinhar!'), nl,
    iniciar_jogo.

% Iniciar o loop principal do jogo
iniciar_jogo :-
    encontrar_animal(Animal),
    (   Animal \= desconhecido
    ->  format('Eu adivinhei! O animal é: ~w~n', [Animal])
    ;   write('Não consegui adivinhar seu animal. Pode adicionar à base para me ensinar?'), nl
    ),
    perguntar_reiniciar.

% Perguntar se o jogador deseja reiniciar
perguntar_reiniciar :-
    write('Deseja jogar novamente? (s/n): '),
    read(Resposta),
    (   Resposta = s
    ->  iniciar_jogo
    ;   write('Obrigado por jogar! Até a próxima!'), nl
    ).
