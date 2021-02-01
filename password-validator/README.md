# Verificador de senhas

Neste desafio é necessário implementar o método que recebe uma lista
de *strings* com uma senha e sua regra, verifica se a senha é válida de
acordo com a sua regra e retorna uma lista somente com as senhas válidas.

Considere o exemplo a seguir:

```
2->3 t:qwerty
```

Na *string* acima, de acordo com a regra '2->3 t' espera-se que na senha 'qwerty'
a letra 't' apareça entre 2 e 3 vezes. No entanto, como ela só tem um 't', a
senha é inválida.

Já neste exemplo:

```
1->4 w:powwwer
```

A regra '1->4 w' indica que a senha 'powwwer' deve ter entre 1 e 4 'w'. Como a
letra 'w' aparece 3 vezes, a senha é válida.

Ao final, recebendo essas duas *strings* de exemplos, o método deveria retornar
apenas a senha: `powwwer`.
