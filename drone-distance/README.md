# Distância do Drone

Vamos contratar um drone para fazer algumas filmagens. Calculamos
roteiros de movimentos que queremos fazer e agora temos que garantir que esses
movimentos não ultrapassem o limite de distância que ele pode ficar do controle.

Neste desafio você vai usar pontos cardeais (como uma bússola).

```
          ↑
        norte

← oeste       leste →

         sul
          ↓
```


Para receber uma sequência de instruções (uma por linha), abaixo temos um pequeno
exemplo:

```
N10
L10
S5
O12
```

Essa sequência de instruções indica que o drone vai andar 10 metros para o
norte, 10 para o leste, 5 para o sul e por último 12 para o
oeste.

Depois de realizar cada um desses movimentos e considerando que o controle
não pode se mover, vamos calcular a distância. Para isso vamos usar a 
distância L1, também conhecida como distância de Manhattan usando a fórmula:

`|x1 - x2| + |y1 - y2|`

A distância de Manhattan, diferente da distância Euclidiana, é calculada usando a
diferença da posição inicial com a final em X e Y e depois usando sempre valores
positivos vamos somar as duas. Abaixo temos uma imagem de exemplo dos deslocamentos
acima:

<img
src="https://campuscode-site.s3-sa-east-1.amazonaws.com/codesaga/cilindro.png",
width=400, height=auto />

O resultado final desse exemplo é `7`.
