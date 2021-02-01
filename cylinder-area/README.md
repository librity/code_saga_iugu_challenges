# Calculando área de cilindros

Neste desafio você deve implementar o código que recebe uma lista de *strings*
com os valores de raio e altura de cilindros, calcula suas áreas e retorna os
cilíndros que possuem área maior ou igual a um valor alvo. Você pode calcular a
área do cilindro usando o perímetro da base multiplicado pela altura, mais a
soma das áreas da base e do topo.

```
área lateral = altura * (2 * PI * raio)
área base = PI * raio ** 2
```

<img
src="https://campuscode-site.s3-sa-east-1.amazonaws.com/codesaga/cilindro.png",
width=150, height=auto />

O método `calculate_area` recece uma *string* com raio e altura de um cilíndro, e
retorna o valor da sua área total.

O método `find_cylinders` recebe uma lista com as proporções dos cilíndros e um
valor alvo de área. Por exemplo:

```
Entrada: ['2x1', '2x3', '1x1'], 20
```

Para a primeira *string* o raio é '2', e altura é '1'.

Depois de processar cada cilíndro, as áreas calculadas são:

```
2x1 = 36
2x3 = 60
1x1 = 12
```

Como a área alvo é 20, ao final devem ser retornados apenas:

```
['2x1', '2x3']
```

Para este desafio, considere PI = 3.
