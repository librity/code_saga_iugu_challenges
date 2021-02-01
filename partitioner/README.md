# Partes com somas iguais

Ícarus mora na Dumbolandia, terra onde nada faz sentido, e está começando um novo
emprego, sendo responsável por dividir os lucros do dia de uma loja de
ferraduras com seu irmão, Harlan.

Ao final de cada dia, Ícarus deve pegar todas as notas recebidas e separar em
dois grupos com somas iguais, por exemplo, `[2, 3, 4, 6, 1]` pode ser dividido em:
`[2, 6]` e `[3, 4, 1]`, já que `2 + 6 = 8` e `3 + 4 + 1 = 8`. Nenhuma nota pode
ficar de fora, todas elas devem estar contidas em um dos dois grupos.

Na Dumbolandia, o governo imprime notas para todos os valores inteiros de 1 a 100.

Neste desafio você deve implementar o código do método que recebe um array com
todas as notas recebidas ao longo de um dia e retorna `true` se for possível
dividir em dois grupos com somas iguais ou `false`, se não for possível.
