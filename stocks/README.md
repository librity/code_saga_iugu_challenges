# Compra e venda de ações

Morgana está estudando compra e venda de ações. Como uma boa programadora quer
implementar um código que calcula as ações mais vantajosas de acordo com sua
variação de preço ao longo do tempo.

A ideia é comprar pelo menor preço e vender pelo maior preço, considerando que
os valores apresentados, da esquerda para a direita, correspondem a variação ao
longo do tempo.

Vejamos um exemplo:

```
XXP:3 5 12 1 2
ZZQ:10 8 2 1
```

Neste caso, o menor preço para a ação de código XXP seria `3` e o maior preço, `12`. Sendo
assim, ela teria um lucro de `9`, se tivesse comprado a 3 e vendido por 12. Já
para a ação ZZQ não seria possível obter lucro, mas a menor perda seria
comprá-la a `2` e vender a `1`, com um prejuízo de `-1`.

> Não basta pegar o menor e o maior número de forma aleatória! É importante considerar a variação ao longo do tempo.

Neste desafio você vai precisar implementar dois métodos:

- um método que calcula para uma ação qual seria o maior lucro ou menor prejuízo possível. O retorno seria algo assim: `XXP:9`.
- outro método que, dada uma lista de ações, qual é a que daria maior retorno. Por exemplo, dada uma
lista em *string* com uma ação por linha:

```
PPP:53 3 2 13 6
WRW:5 14 10 1 20
FTT:8 5 2 1

# obs: em strings '\n' indica uma quebra de linha.
```

A ação que traria maior lucro seria a de código WRW, se comprada a `1` e vendida a `20`, daria
um lucro de `19`, logo o retorno do método seria apenas: `WRW:19`.
