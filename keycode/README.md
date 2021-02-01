# Senha de teclas

Neste desafio vamos implementar o código do método que recebe um conjunto de
teclas de um teclado e instruções para descrobrirmos a sequência de teclas de
uma senha de segurança.

Vamos considerar, por exemplo, o seguinte conjunto de teclas e uma sequência de instruções:

Teclado:

```
|1|2|
|3|4|
|5|6|
```

Instruções:

```
CC DE EB CE
```

O método receberá essas informações na forma de um array e uma *string*:

```
[['1', '2'], ['3', '4'], ['5', '6']]

'CC DE EB CE'
```

As instruções seguem os movimentos de C (para cima), B (para baixo), E (para
esquerda) e D (para direita).

Começando sempre pela posição `1, 1` do teclado e seguindo as instruções, teríamos a
seguinte sequência:

`4 -> 2 -> 1 -> 3 -> 1`

A senha que deve ser retornada é `2131`.

Algumas regras que devem ser mantidas em mente:

- Se o movimento levar para fora da teclado, a tecla permanece a mesma. Por
  exemplo, da tecla 1 para a esquerda, não há tecla disponível, logo o valor
  retornado deve ser o dela mesmo, 1.
- Nas instruções, os espaços em branco indicam o fim e começo de cada caratere
  da senha final.
- A quantidade de linhas e colunas do teclado pode variar, mas sempre mantendo a
  estrutura regular. A quantidade de caracteres da senha também pode variar.
