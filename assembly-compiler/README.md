# Compilador Assembly

Assembly é uma linguagem de programação de baixo nível e uma das primeiras que
transformaram uma notação humana legível em código de máquina. Ela ainda é
utilizada para microprocessadores, microcontroladores, sistemas operacionais,
etc.

Em Assembly nós convertemos o nosso programa em programa utilitário conhecido
como *assembler*.

Nós vamos fazer um pouco desse trabalho nesse desafio, você vai receber uma
sequência de instruções e deve interpretá-las para encontrar o valor final da
variável **X**. Claro que na linguagem Assembly temos diversos comandos, aqui
vamos fazer uma pequena versão, nosso programa deve entender os seguintes
comandos:

| Comando  | Descrição |
|:--------:|:---------:|
| mov  | troca o valor de X para o valor especificado |
| add  | adiciona o valor espeficicado a X |
| sub  | substraí o valor espeficicado de X |
| jmp  | pula nosso programa para a linha especificada não executando as linhas puladas |

Vamos ver um exemplo? Aqui temos uma lista de instruções que recebemos para
analisar o valor final de X:

| Linha | Instrução |
|:-:|:-:|
| 1 | mov x,0 |
| 2 | add x,3 |
| 3 | jmp l5 |
| 4 | sub x,10 |
| 5 | add x,4 |

A interpretação seria algo assim:

- Trocamos o valor de X para 0
- Adicionamos a X o valor 3
- Pulamos para o comando da linha 5, logo o comando `sub x,10` não será
  executado.
- Adicionamos a X o valor 4

Então **X** ao final tem valor **7**, esse deve ser o retorno do nosso método `compile`.

Algumas observações:
  - As instruções são uma string separada em linhas com `\n`, cada linha é uma instrução
  - Leve em consideração que **X** começa com valor **0**
  - O comando `mov` pode acontecer durante o programa e trocar o valor de **X**.
