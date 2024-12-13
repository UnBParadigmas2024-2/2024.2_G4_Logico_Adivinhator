# Adivinhator

**Disciplina**: FGA0210 - PARADIGMAS DE PROGRAMAÇÃO - T01 <br>
**Nro do Grupo**: 04<br>
**Paradigma**: Lógico<br>

## Alunos
|Matrícula | Aluno |
| :--: | :--: |
| 20/2045624 | [Abdul hannan](https://github.com/hannanhunny01)	|
| 21/1029147 | [Arthur de Melo Viana](https://github.com/arthurmlv)	|
| 19/0026758 | [Deivid Carvalho](https://github.com/deivid-a1) |	
| 21/1062867 | [Felipe de Jesus Rodrigues](https://github.com/felipeJRdev) |
| 17/0108341 | [Levi de Oliveira Queiroz](https://github.com/LeviQ27) |	
| 17/0111059 | [Matheus Fonseca Sousa](https://github.com/gatotabaco) |	
| 19/0093331 | [Matheus Costa Gomes](https://github.com/mc-gomes) |	
| 21/1029559 | [Rafael Brito Bosi Rodrigues](https://github.com/StrangeUnit28) |	
| 16/0149410 | [Yudi Yamane de Azevedo](https://github.com/yudi-azvd)	| 

## Sobre 

Este projeto é uma implementação do jogo de adivinhação "Akinator", onde o sistema tenta adivinhar o que o usuário está pensando com base em perguntas. O jogo é desenvolvido em Prolog, utilizando um conjunto de regras de inferência para realizar a interação com o usuário, que deve pensar em um animal e responder às perguntas feitas pelo sistema. A cada resposta, o sistema utiliza essas informações para restringir as opções e tentar adivinhar o animal.

A estrutura do sistema é baseada em uma interface gráfica que facilita a interação com o usuário. A interface é construída com a biblioteca pce, que é integrada ao Prolog, permitindo a criação de diálogos e botões interativos. O fluxo do jogo é projetado de forma a guiar o usuário por uma série de perguntas, tentando adivinhar o animal com base nas características informadas.

### Funcionalidades Principais

- **Interface Gráfica Interativa:** A aplicação apresenta um ambiente gráfico onde o usuário pode interagir, começando o jogo, respondendo às perguntas e recebendo a tentativa de adivinhação do sistema.
- **Perguntas Dinâmicas:** O sistema seleciona perguntas baseadas em características dos animais e no progresso das respostas anteriores. As perguntas são feitas de forma a dividir as opções de maneira eficiente, utilizando as respostas do usuário (sim, não ou não sei) para ajustar as possibilidades.
- **Inferência e Regras:** O sistema usa regras de inferência para determinar quais perguntas fazer, com base nas características dos animais disponíveis. Ele ajusta as opções de animais possíveis a cada resposta do usuário, aplicando uma lógica de exclusão ou inclusão.
- **Adição de Novos Animais:** Caso o sistema não consiga adivinhar o animal, ele oferece a opção de adicionar um novo animal à base de dados, incluindo suas características. Isso permite que o jogo aprenda novos animais à medida que é jogado.

### Links Úteis

- [Documentação Prolog](https://www.swi-prolog.org/pldoc/index.html)
- [Biblioteca pce no SWI-Prolog](https://www.swi-prolog.org/packages/xpce/)

Este projeto é aberto a sugestões e contribuições. Sinta-se à vontade para contribuir com melhorias, adicionar novos recursos ou simplesmente compartilhar feedback.

## Screenshots
Adicione 2 ou mais screenshots do projeto em termos de interface e/ou funcionamento.

## Instalação 

**Linguagens**: Prolog 9.2<br>
**Tecnologias**: SWI-Prolog, Biblioteca PCE para interface gráfica<br>

### Pré-requisitos

Antes de rodar o projeto, verifique se você tem o SWI-Prolog instalado na versão 9.2 ou superior. O SWI-Prolog é uma implementação de Prolog que oferece uma ampla gama de recursos e bibliotecas, incluindo a biblioteca `pce`, que é usada para a interface gráfica do jogo.

Você pode baixar o SWI-Prolog no [site oficial](https://www.swi-prolog.org/Download.html).

### Como rodar o projeto

#### Windows

1. **Instalar o SWI-Prolog**:
   - Acesse o [site oficial do SWI-Prolog](https://www.swi-prolog.org/Download.html).
   - Baixe o instalador para Windows.
   - Execute o instalador e siga as instruções para concluir a instalação.

2. **Rodar o projeto**:
   - Abra o terminal (Prompt de Comando ou PowerShell).
   - Navegue até a pasta onde está localizado o arquivo `main.pl` (utilize o comando `cd` para navegar até o diretório correto).
   - Execute o SWI-Prolog com o comando:
     ```bash
     swipl
     ```
   - Carregue o arquivo principal do projeto:
     ```prolog
     ?- [main].
     ```
   - Isso irá carregar o jogo e abrir a interface gráfica.

#### macOS

1. **Instalar o SWI-Prolog**:
   - Se você não tem o Homebrew instalado, abra o terminal e execute:
     ```bash
     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
     ```
   - Depois de instalar o Homebrew, instale o SWI-Prolog com o comando:
     ```bash
     brew install swi-prolog
     ```

2. **Rodar o projeto**:
   - Abra o terminal.
   - Navegue até a pasta onde está localizado o arquivo `main.pl` (utilize o comando `cd`).
   - Execute o SWI-Prolog:
     ```bash
     swipl
     ```
   - Carregue o arquivo principal do projeto:
     ```prolog
     ?- [main].
     ```
   - Isso irá carregar o jogo e exibir a interface gráfica.

#### Linux (opcional)

1. **Instalar o SWI-Prolog**:
   - No Linux, você pode instalar o SWI-Prolog através do gerenciador de pacotes. No Ubuntu, por exemplo:
     ```bash
     sudo apt-get install swi-prolog
     ```

2. **Rodar o projeto**:
   - Abra o terminal.
   - Navegue até a pasta onde está o arquivo `main.pl`:
     ```bash
     cd /caminho/para/o/projeto
     ```
   - Execute o SWI-Prolog:
     ```bash
     swipl
     ```
   - Carregue o arquivo principal:
     ```prolog
     ?- [main].
     ```


### Observações

- Certifique-se de que a biblioteca `pce` esteja corretamente instalada no seu ambiente SWI-Prolog.
- Caso haja algum problema ao rodar a interface gráfica, verifique se a versão do SWI-Prolog é compatível com a biblioteca `pce`.

Sinta-se à vontade para contribuir com melhorias ou relatar problemas no repositório.


## Uso 

Este projeto é um jogo de adivinhação de animais, onde o sistema faz perguntas ao usuário para tentar descobrir qual animal ele está pensando. O projeto possui duas versões: uma prototípica, implementada no terminal, e uma versão final, desenvolvida em Prolog com a biblioteca `pce`, que oferece uma interface gráfica.

A seguir, explicamos como utilizar o projeto final com a interface gráfica e, em seguida, a versão prototípica, que pode ser executada diretamente no terminal.

### Como Rodar o Projeto

1. **Abra o terminal.**
2. **Execute o SWI-Prolog** com o comando:

```bash
swipl
```

<img src="./imagens/swipl.png" alt="Swipl" width="600" />

Carregue o arquivo principal (por exemplo, main.pl) com o comando:

```prolog
?- [main].
```

<img src="./imagens/comando_main.png" alt="main" width="600" />

Isso iniciará o jogo, e você poderá interagir com a interface gráfica.

3. **Inicialização do Jogo**

Ao iniciar o programa, o menu principal será exibido. O título do jogo é Adivinhator e o subtítulo instrui o jogador a pensar em um animal, pois o sistema tentará adivinhar qual é.

<img src="./imagens/tela_inicio.png" alt="Tela Inicial" width="500" />

Clique no botão "Começar" para iniciar o jogo. Isso iniciará o processo de adivinhação.

4. **Processo de Perguntas**

O sistema começará a fazer uma série de perguntas para tentar adivinhar o animal em que você está pensando. Para cada pergunta, você deverá responder "Sim", "Não" ou "Não Sei".

<img src="./imagens/primeira_pergunta.png" alt="Perguntas" width="500" />

- Sim: Significa que o animal possui a característica relacionada à pergunta.
- Não: Significa que o animal não possui a característica.
- Não Sei: Caso você não saiba a resposta, o jogo continuará tentando adivinhar.

Após cada resposta, o sistema reduzirá as possibilidades de animais com base nas suas escolhas. O jogo irá continuar fazendo novas perguntas até que ele adivinhe o animal ou esgote todas as opções.

5. **Adivinhação do Animal**

Se o sistema conseguir adivinhar o animal, uma mensagem será exibida com a suposição do sistema, junto com dois botões:

- Acertou: Caso o animal esteja correto.
- Errou: Caso o animal não esteja correto.

<img src="./imagens/chute_adivinhator.png" alt="Chute" width="500" />

Se o sistema não conseguir adivinhar o animal, ele exibirá uma mensagem de erro junto com a opção de adicionar um novo animal à base de dados.

<img src="./imagens/nao_adivinhou.png" alt="Fim_Errou" width="500" />

6. **Adicionando um Novo Animal**

Caso o sistema erre, você terá a opção de adicionar um novo animal à base de dados. Para isso, será solicitado o nome do animal e suas características (separadas por vírgulas).

<img src="./imagens/adiciona_animal.png" alt="Adicionar Animal" width="500" />


- Passo 1: Informe o nome do animal que você estava pensando.
- Passo 2: Informe as características do animal, separadas por vírgulas (por exemplo, "tem penas, voa, pequeno").
- Passo 3: Clique no botão "Salvar" para adicionar o novo animal à base de dados e reiniciar o jogo.

O animal salvo será escrito diretamente no arquivo [base.pl](./base.pl), assim como mostrado na imagem abaixo.

<img src="./imagens/animal_adicionado.png" alt="Escrita do animal" width="500" />

7. **Finalizando o Jogo**

Quando o jogo termina, você pode optar por jogar novamente clicando em "Jogar Novamente" ou sair clicando em "Cancelar". O jogo será reiniciado com a base de dados atualizada, levando em consideração os novos animais adicionados.

<img src="./imagens/acertou.png" alt="Fim" width="500" />

### Fluxo Completo

O fluxo do jogo pode ser resumido como:

- Menu inicial: Iniciar o jogo clicando em "Começar".
- Perguntas: O sistema fará perguntas para adivinhar o animal.
- Adivinhação: O sistema tenta adivinhar o animal.
- Erro: Caso o sistema erre, o usuário pode adicionar um novo animal à base de dados.
- Finalização: O jogo pode ser reiniciado ou finalizado.

### Execução da Versão Prototípica 

1. **Abra o terminal.**
2. **Execute o SWI-Prolog** com o comando:

```bash
swipl
```

3. Carregue o arquivo **prototipo** com o comando:

```prolog
?- [prototipo].
```

. Se tudo der certo, você deve receber o seguinte retorno:

```prolog
?- [prototipo].
true.
```

4. Execute a função principal (main) da seguinte forma:

```prolog
?- main.
```
Após isso, você poderá interagir com o sistema respondendo às perguntas com "sim", "não" ou "não sei".

![Inicio Terminal](./imagens/inicio_terminal.png)

Responda às perguntas até que o Adivinhator descubra o animal que você pensou:

![Animal Encontrado](./imagens/animal_encontrado.png)

Caso ele não consiga adivinhar o animal, será exibida a seguinte mensagem:

![Animal nao Encontrado](./imagens/animal_naoEncontrado.png)

Depois de finalizar vc pode decidir se quer jogar de novo respondendo com "s." ou "n." :

![Jogar novamente](./imagens/jogar_novamente.png)

### Observações

A versão terminal não requer a biblioteca ``pce``, pois não há interface gráfica e também não possui a funcionalidade de adicionar um novo animal.

## Vídeo
Adicione 1 ou mais vídeos com a execução do projeto.
Procure: 
(i) Introduzir o projeto;
(ii) Mostrar passo a passo o código, explicando-o, e deixando claro o que é de terceiros, e o que é contribuição real da equipe;
(iii) Apresentar particularidades do Paradigma, da Linguagem, e das Tecnologias, e
(iV) Apresentar lições aprendidas, contribuições, pendências, e ideias para trabalhos futuros.
OBS: TODOS DEVEM PARTICIPAR, CONFERINDO PONTOS DE VISTA.
TEMPO: +/- 15min

## Participações
Apresente, brevemente, como cada membro do grupo contribuiu para o projeto.

|       Nome do Membro        | Contribuição                                                                 | Significância da Contribuição para o Projeto (Excelente/Boa/Regular/Ruim/Nula) | Comprobatórios (ex. links para commits) |
| :-------------------------: | ---------------------------------------------------------------------------- | :----------------------------------------------------------------------------: | :-------------------------------------: |
| [Abdul hannan](https://github.com/hannanhunny01)	|  |  |   |
| [Arthur de Melo Viana](https://github.com/arthurmlv)	|  |  |   |
| [Deivid Carvalho](https://github.com/deivid-a1) |	  |  |   |
| [Felipe de Jesus Rodrigues](https://github.com/felipeJRdev) |  |  |   |
| [Levi de Oliveira Queiroz](https://github.com/LeviQ27) |	  |  |   |
| [Matheus Fonseca Sousa](https://github.com/gatotabaco) |	  |  |   |
| [Matheus Costa Gomes](https://github.com/mc-gomes) |	  |  |   |
| [Rafael Brito Bosi Rodrigues](https://github.com/StrangeUnit28) |	  |  |   |
| [Yudi Yamane de Azevedo](https://github.com/yudi-azvd)	|   |  |   |

## Outros 
Quaisquer outras informações sobre o projeto podem ser descritas aqui. Não esqueça, entretanto, de informar sobre:
(i) Lições Aprendidas;
(ii) Percepções;
(iii) Contribuições e Fragilidades, e
(iV) Trabalhos Futuros.

## Fontes
Referencie, adequadamente, as referências utilizadas.
Indique ainda sobre fontes de leitura complementares.
