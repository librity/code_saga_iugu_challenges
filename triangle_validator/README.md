Triângulos Válidos
==================

Triângulos são polígonos de três lados e três ângulos. Em todo triângulo válido a
soma de quaisquer dois lados deve ser maior que o terceiro lado. Por exemplo,
dados os três lados `15 3 19`, não é possível fazer um triângulo válido, pois
`15 + 3` é menor que 19. Já considerando os lados `7 9 10`, a soma de quaisquer
dois lados é maior que o terceiro lado:

```
7 + 9 = 16  | 16 > 10
7 + 10 = 17 | 17 > 9
9 + 10 = 19 | 19 > 7
```

Logo, os lado `7 9 10` podem formar um triângulo válido.

Neste desafio você deve implementar o código do método que recebe uma lista de
números e avalia quais combinações deles podem formar triângulos válidos. Por
exemplo:

```
lista = '3 4 54 6 23'

Os valores "3, 4, 6", podem compor um triângulo válido.
```

Ao final o código deve retornar a multiplicação desses valores, no exemplo acima
seria: `72`.

Mais de uma combinação de três lados pode ser possível. Se isso acontecer, deve
ser retornada uma lista com todos os resultados da multiplicação de cada combinação.

